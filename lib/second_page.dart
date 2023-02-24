import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:fourth_grade_flutter/login.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.55,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/phonenoback.png'),
                                    fit: BoxFit.contain)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15,
                          ),
                          Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width * 1,
                              child: Center(
                                child: Text(
                                  'Examine Everything Around You',
                                  style: TextStyle(
                                    color: Color.fromRGBO(160, 229, 248, 100),
                                    fontFamily: 'Gugi',
                                    fontSize: constraints.maxHeight * 0.03,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Center(
                              child: Text(
                                'Differently...!',
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
