import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:fourth_grade_flutter/second_page.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(0, 16, 33, 100),
        body: LayoutBuilder(
          builder: (ctx, constraints) {
            return Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 51),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.30,
                            child: Lottie.asset(
                                'assets/animations/robot-says-hi.json'),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15,
                          ),
                          Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: Center(
                                child: Text(
                                  'Welcome in ',
                                  style: TextStyle(
                                    color: Color.fromRGBO(160, 229, 248, 100),
                                    fontFamily: 'Gugi',
                                    fontSize: constraints.maxHeight * 0.04,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 1,
                            child: Center(
                              child: Text(
                                'AEYE',
                                style: TextStyle(
                                    color: Color.fromRGBO(160, 229, 248, 100),
                                    fontFamily: 'Gugi',
                                    fontSize: constraints.maxHeight * 0.05),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
