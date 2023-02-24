import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:fourth_grade_flutter/reuseable.dart';
import 'package:fourth_grade_flutter/signup.dart';
import 'package:fourth_grade_flutter/authmethod.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  void logInUser() {
    fireBaseAuth(FirebaseAuth.instance).emailLogin(
        email: _emailTextController,
        password: _passwordTextController,
        context: context);
  }

  @override
  void dispose() {
    super.dispose();
    _emailTextController.dispose();
    _passwordTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 16, 33, 100),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 51),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/emailnoback.png'),
                            fit: BoxFit.contain)),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TF('Enter your email', Icons.alternate_email_outlined,
                      false, _emailTextController),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TF('Enter your password', Icons.lock_outline, true,
                      _passwordTextController),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SignButton(context, true, () {
                    fireBaseAuth(FirebaseAuth.instance).emailLogin(
                        email: _emailTextController,
                        password: _passwordTextController,
                        context: context);
                  }),
                ),
                const Text(
                  "current user ",
                  style: TextStyle(color: Colors.amberAccent),
                ),
                SignUp()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row SignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have account..?",
          style: TextStyle(color: Colors.white),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => SignUpScreen())));
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              'Sign up',
              style: TextStyle(color: Color.fromRGBO(160, 229, 248, 100)),
            ),
          ),
        )
      ],
    );
  }

  final x = LogIn();
}
