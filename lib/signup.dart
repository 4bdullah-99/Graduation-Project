import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fourth_grade_flutter/homepage.dart';
import 'package:fourth_grade_flutter/reuseable.dart';
import 'package:fourth_grade_flutter/authmethod.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _UsernameController = TextEditingController();
    TextEditingController _PassWordController = TextEditingController();
    TextEditingController _EmailController = TextEditingController();
    void signUpUser() async {
      fireBaseAuth(FirebaseAuth.instance).EmailSignUp(
          email: _EmailController.text,
          password: _PassWordController.text,
          context: context);
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 16, 33, 100),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Color.fromRGBO(160, 229, 248, 100),
                    fontFamily: 'Gugi',
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TF('Enter your username', Icons.person_outline, false,
                      _UsernameController),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TF('Enter your email', Icons.alternate_email_outlined,
                      false, _EmailController),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TF('Enter your password', Icons.lock_outline, true,
                      _PassWordController),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SignButton(context, false, () async {
                      fireBaseAuth(FirebaseAuth.instance).EmailSignUp(
                          email: _EmailController.text,
                          password: _PassWordController.text,
                          context: context);
                    }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
