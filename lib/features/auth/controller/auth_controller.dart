import 'package:eventify001/core/provider/firebase_provider.dart';
import 'package:eventify001/features/auth/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authControllerProvider=Provider((ref) => AuthController(authRepository: ref.watch(authRepositoryProvider), auth: ref.watch(authProvider)),);
class AuthController{
  final AuthRepository _authRepository;
  final FirebaseAuth _auth;
  AuthController({required AuthRepository authRepository,
  required FirebaseAuth auth,}):_authRepository=authRepository,
  _auth=auth;
  User?get currentUser=>_auth.currentUser;
  signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
})async{
    await _authRepository.signInWithEmailPassword(email: email, password: password);
  }
  signInWithEmailPassword({required String email,
  required String password})async{
    await _authRepository.signInWithEmailPassword(email: email, password: password);
  }
  signInWithGoogle()async{
    await _authRepository.signInWithGooogle();
  }
  signOut()async{
    await _authRepository.signOut();
  }
}