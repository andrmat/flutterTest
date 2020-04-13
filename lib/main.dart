import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/mateu/AndroidStudioProjects/flutter_app1/lib/screens/logged_In.dart';
import 'package:flutterapp1/authorication.dart';
import 'screens/sign_In.dart';
import 'screens/frontPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FrontPage(),
    );
  }
}

