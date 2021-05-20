import 'package:flutter/material.dart';
import 'package:groceries_marketing_app/Components/constants.dart';
import 'intro.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Constants constants = Constants();
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width -
        MediaQuery.of(context).viewPadding.horizontal;
    height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).viewPadding.vertical;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Assets/Images/438285.jpg"),
                  fit: BoxFit.fill),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                  height: 270,
                  width: width,
                  decoration: BoxDecoration(
                      color: constants.peach,
                      border: Border.all(color: constants.brickRed),
                      boxShadow: [
                        new BoxShadow(
                          color: constants.brickRed,
                          blurRadius: 10.0,
                        ),
                      ],
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "JHS93",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Bring your daily needs to your\nfingertips.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[200],
                        ),
                      ),
                      SizedBox(height: 25),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Intro(),
                            ),
                          );
                        },
                        child: Container(
                          width: 180,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                fontSize: 16,
                                color: constants.nightBlack,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
