import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fourth_grade_flutter/homepage.dart';
import 'package:fourth_grade_flutter/login.dart';
import 'package:fourth_grade_flutter/onboarding.dart';

class auth_page extends StatefulWidget {
  const auth_page({Key? key}) : super(key: key);

  @override
  State<auth_page> createState() => _auth_pageState();
}

class _auth_pageState extends State<auth_page> {
  @override
  Widget build(context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          } else {
            return const LogIn();
          }
        },
      ),
    );
  }
}
