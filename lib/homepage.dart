import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ripple/flutter_ripple.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromRGBO(0, 16, 33, 100),
            body: Stack(children: [
              FlutterRipple(
                rippleColor: const Color.fromRGBO(3, 71, 72, 50),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      color: Color.fromRGBO(160, 229, 248, 50),
                    )),
              ),
              Container(
                alignment: Alignment(0, -0.8),
                child: Lottie.asset(
                    "assets/animations/robot-playing-computer.json",
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.3),
              )
            ])));
  }
}
