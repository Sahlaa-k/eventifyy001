import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eventify001/core/constants/firebase_constants.dart';
import 'package:eventify001/core/provider/firebase_provider.dart';
import 'package:eventify001/models/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
      auth: ref.watch(authProvider), firestore: ref.watch(fireStoreProvider)),
);

class AuthRepository {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  AuthRepository({
    required FirebaseAuth auth,
    required FirebaseFirestore firestore,
  })  : _auth = auth,
        _firestore = firestore;
  CollectionReference get _users =>
      _firestore.collection(FirebaseConstant.users);
  signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    final user=userCredential.user;
    if(user!=null){
      await saveUserToFirestore(user,name);
    }return userCredential;
  }
  signInWithEmailPassword({required String email,
  required String password,})async{
    final userCredential =await _auth.signInWithEmailAndPassword(email: email, password: password);return userCredential;
  }
  saveUserToFirestore(User user,[String?name])async{
    final userDoc=_users.doc(user.uid);
    final authUser=AuthUserModel(name: name??user.displayName??"No Name", email: user.email??"No Email", id: user.uid);
    await userDoc.set(authUser.toMap(),SetOptions(merge:true));

  }
  signInWithGooogle() async {
    final GoogleSignIn googleSignIn=GoogleSignIn();
    final GoogleSignInAccount?googleUser=await googleSignIn.signIn();
    if (googleUser == null) return null;

    final GoogleSignInAuthentication googleAuth =
    await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final userCredential = await _auth.signInWithCredential(credential);
    final user = userCredential.user;

    if (user != null) {
      await saveUserToFirestore(user);
    }

    return userCredential;
  }
  signOut() async {
    await _auth.signOut();
    await GoogleSignIn().signOut();
  }
}
