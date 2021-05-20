import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_marketing_app/Components/constants.dart';
import 'package:groceries_marketing_app/Screens/Authentication/authentication.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  ScrollController controller = ScrollController();
  Constants constants = Constants();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: IntroductionScreen(
          color: Colors.white,
          globalBackgroundColor: Colors.white,
          rawPages: [
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "Assets/Images/design1.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Wide Range of Products",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: constants.peach,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 2 / 3,
                      child: Text(
                        "Find a range of products for daily household necessities",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "Assets/Images/design1.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Wide Range of Products",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: constants.peach,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 2 / 3,
                      child: Text(
                        "Find a range of products for daily household necessities",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "Assets/Images/design1.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Wide Range of Products",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: constants.peach,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 2 / 3,
                      child: Text(
                        "Find a range of products for daily household necessities",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
          scrollController: controller,
          onDone: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Authentication(
                  first: true,
                ),
              ),
            );
          },
          skip: Container(
            padding: EdgeInsets.only(right: 20),
            alignment: Alignment.topRight,
            child: Text(
              "Skip",
              style: TextStyle(color: constants.peach),
            ),
          ),
          onSkip: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Authentication(
                  first: true,
                ),
              ),
            );
          },
          showSkipButton: true,
          done: const Text(
            "Next",
            style: TextStyle(
              color: Color.fromRGBO(251, 100, 81, 1),
            ),
          ),
          next: const Text(
            "Next",
            style: TextStyle(
              color: Color.fromRGBO(251, 100, 81, 1),
            ),
          ),
          curve: Curves.fastLinearToSlowEaseIn,
          controlsPadding: const EdgeInsets.fromLTRB(0, 4.0, 0, 4.0),
          dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0),
            color: Color(0xFFBDBDBD),
            activeColor: Color.fromRGBO(184, 61, 15, 1),
            activeSize: Size(22.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
        ),
      ),
    ));
  }
}
