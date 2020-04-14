import 'package:flutter/material.dart';
import 'package:flutterapp1/authorication.dart';
import 'sign_In.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  final Auth _auth = Auth();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Apka WSB"),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
        ),
        body: Form(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.account_circle),
                    hintText: 'Jak masz na imię?',
                    labelText: 'Login/NIP *',
                  ),
                ),
                TextFormField(
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      icon: Icon(Icons.vpn_key),
                      hintText: "Hasło",
                      labelText: "Hasło"),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 35.0),
                    ButtonTheme(
                      minWidth: 200,
                      buttonColor: Colors.amberAccent,
                      child: RaisedButton(
                          highlightElevation: 10.0,
                          child: Text('Zaloguj'),
                          onPressed: () async {
                            print(email);
                            print(password);

//                            Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => Logged_In()),
//                            );
                          }),
                    ),
                    SizedBox(height: 15.0),
                    ButtonTheme(
                      minWidth: 200,
                      buttonColor: Colors.lightBlue,
                      child: RaisedButton(
                        highlightElevation: 10.0,
                        child: Text('Zaloguj przez Google'),
                        onPressed: () {
                          _auth.loginWithGoogle();

//                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()),);
                        },
                      ),
                    ),
                    SizedBox(height: 15.0),
                    ButtonTheme(
                      minWidth: 150,
                      child: RaisedButton(
                        color: Colors.amber,
                        highlightElevation: 10.0,
                        child: Text('Załóż konto'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
