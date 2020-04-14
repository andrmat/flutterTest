import 'package:flutter/material.dart';

class tester extends StatefulWidget {
  @override
  _testerState createState() => _testerState();
}

class _testerState extends State<tester> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestBar'),
        centerTitle: true,),
        body: Column(children: <Widget>[

          Text('data'),

        ],),
    );
  }
}