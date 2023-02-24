import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fourth_grade_flutter/login.dart';
import 'package:fourth_grade_flutter/second_page.dart';
import 'package:fourth_grade_flutter/welcome_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(0, 16, 33, 100),
          body: LayoutBuilder(builder: (ctx, constraints) {
            return SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(children: [
                  PageView(
                    controller: _controller,
                    onPageChanged: (Index) {
                      setState(() {
                        onLastPage = (Index == 1);
                      });
                    },
                    children: [
                      Welcome(),
                      SecondPage(),
                    ],
                  ),
                  onLastPage
                      ? Container(
                          alignment: Alignment(0, 0.75),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(100),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return LogIn();
                              }));
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.09,
                              width: MediaQuery.of(context).size.height * 0.09,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(3, 71, 72, 100),
                                  borderRadius: BorderRadius.circular(100)),
                              child: Center(
                                child: Icon(Icons.arrow_forward,
                                    color: Color.fromRGBO(160, 229, 248, 100),
                                    size: constraints.maxHeight * 0.07),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          alignment: Alignment(0, 0.75),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(100),
                            onTap: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.09,
                              width: MediaQuery.of(context).size.height * 0.09,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(3, 71, 72, 100),
                                  borderRadius: BorderRadius.circular(100)),
                              child: Center(
                                child: Icon(Icons.arrow_forward,
                                    color: Color.fromRGBO(160, 229, 248, 100),
                                    size: constraints.maxHeight * 0.07),
                              ),
                            ),
                          ),
                        ),
                ]),
              ),
            );
          })),
    );
  }
}
