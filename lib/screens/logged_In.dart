import 'package:flutter/material.dart';

class Logged_In extends StatefulWidget {
  @override
  _Logged_InState createState() => _Logged_InState();
}

class _Logged_InState extends State<Logged_In> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WsBAppka"),
          backgroundColor: Colors.redAccent,
        ),
      body: Row(
        children: <Widget>[
          Text("Strona druga")
        ],
      ),



    );
  }
}
