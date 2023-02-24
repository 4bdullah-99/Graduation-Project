import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fourth_grade_flutter/homepage.dart';
import 'package:fourth_grade_flutter/showsnackbar.dart';

class fireBaseAuth {
  final FirebaseAuth _auth;
  fireBaseAuth(this._auth);
  final user = FirebaseAuth.instance.currentUser;

  Future<void> EmailSignUp(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await sendEmailVerification(context);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

  Future<void> sendEmailVerification(BuildContext context) async {
    try {
      _auth.currentUser?.sendEmailVerification();
      showSnackBar(context, 'Email verification sent !');
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

  Future<void> emailLogin(
      {required TextEditingController email,
      required TextEditingController password,
      required BuildContext context}) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email.text, password: password.text);

      if (user?.emailVerified == false) {
        await sendEmailVerification(context);
      }

      if (user?.emailVerified == true) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }
}
