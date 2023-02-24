import 'package:flutter/material.dart';
import 'package:fourth_grade_flutter/auth_page.dart';
import 'package:fourth_grade_flutter/homepage.dart';
import 'package:fourth_grade_flutter/onboarding.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fourth_grade_flutter/welcome_screen.dart';

class splash_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/animations/robot-says-hi.json'),
      backgroundColor: const Color.fromRGBO(0, 16, 33, 100),
      nextScreen: const OnBoarding(),
      duration: 100,
      splashIconSize: 300,
      splashTransition: SplashTransition.slideTransition,
    );
  }
}
