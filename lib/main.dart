import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fourth_grade_flutter/splash%20screen.dart';
import 'package:lottie/lottie.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AEYE',
      home: splash_screen(),
    );
  }
}
