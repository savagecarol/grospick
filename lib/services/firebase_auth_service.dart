import 'dart:async';
import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grospick/models/user.dart';
import 'package:grospick/utils/global.dart';

class FirebaseAuthService {
  FirebaseAuthService._();
  factory FirebaseAuthService.getInstance() => _instance;
  static final FirebaseAuthService _instance = FirebaseAuthService._();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Firestore _firestore = Firestore.instance;

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

  Future<String> signUp(String name, String email, String password) async {
    try {
      AuthResult authResult = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = authResult.user;
      try {
        await user.sendEmailVerification();
        await _firestore
            .collection('users')
            .document(user.uid)
            .setData({'email': email, 'name': name});
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
    try {
      FirebaseUser user = await _firebaseAuth.currentUser();
      if (user.uid != null)
        return user.uid;
      else {
        return null;
      }
    } catch (e) {
      print("error in signout");
      print(e);
      return null;
    }
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

  Future<User> getData() async {
      String uid = await preferenceService.getUID();
    DocumentSnapshot documentSnapshot = await _firestore.collection('users').document(uid).get();
    User user = User.fromJson(documentSnapshot.data);
    return user;
  }
}
