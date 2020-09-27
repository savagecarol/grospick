import 'dart:async';
import 'dart:core';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  FirebaseAuthService._();
  factory FirebaseAuthService.getInstance() => _instance;
  static final FirebaseAuthService _instance = FirebaseAuthService._();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> signIn(String email, String password) async {
    try {
      AuthResult authResult = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = authResult.user;
      if (user.isEmailVerified) {
        return user.uid;
      }
      return null;
    } catch (e) {
      print("error in signout");
      print(e);
    }
  }

  Future<String> signUp(String email, String password) async {
    try {
      AuthResult authResult = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = authResult.user;
      try {
        await user.sendEmailVerification();
        return user.uid;
      } catch (e) {
        print("An error occured while trying to send email verification");
        print(e.message);
      }
    } catch (e) {
      print("error in signout");
      print(e);
      return "error";
    }
  }

  Future<String> getCurrentuser() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user.uid;
  }

  Future<bool> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return true;
    } catch (e) {
      print("error in signout");
      print(e);
      return false;
    }
  }
}
