import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<dynamic> signIn({
    @required String email,
    @required String password,
  }) async {
    try {
      final AuthResult authResult =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return authResult != null;
    } catch (e) {
      return e.message;
    }
  }

  Future<dynamic> signUp({
    @required String email,
    @required String password,
  }) async {
    try {
      final AuthResult authResult =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return authResult != null;
    } catch (e) {
      return e.message;
    }
  }
}
