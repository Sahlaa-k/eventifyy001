import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/provider/firebase_provider.dart';
import '../repository/auth_repository.dart';


final authControllerProvider = Provider((ref) => AuthController(
  authRepository: ref.watch(authRepositoryProvider),
  auth: ref.watch(authProvider),
));
class AuthController {
  final AuthRepository _authRepository;
  final FirebaseAuth _auth;

  AuthController({
    required AuthRepository authRepository,
    required FirebaseAuth auth,
  })  : _authRepository = authRepository,
        _auth = auth;

  User? get currentUser => _auth.currentUser;
  signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    await _authRepository.signUpWithEmailPassword(
      name: name,
      email: email,
      password: password,
    );
  }


  signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    await _authRepository.signInWithEmailPassword(
      email: email,
      password: password,
    );
  }


  signInWithGoogle() async {
    await _authRepository.signInWithGoogle();
  }


  signOut() async {
    await _authRepository.signOut();
  }
}

