import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/Intro/welcome.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromRGBO(112, 109, 255, 1),
      home: WelcomeScreen(),
    );
  }
}
