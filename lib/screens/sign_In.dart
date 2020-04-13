import 'package:flutter/material.dart';
import 'package:flutterapp1/authorication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _auth = new Auth();

  String email = '';
  String password = '';
  String nip = '';
  String companyName = '';
  String customerName = '';
  String customerSurnameName = '';

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Załóż konto",
          style: TextStyle(color: Colors.grey[800]),
        ),
        backgroundColor: Colors.amber[400],
        centerTitle: true,
      ),
      body: Container(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                    onChanged: (val) {
                      setState(() {
                        email = val;
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                        hintStyle: TextStyle(color: Colors.blue))),
                TextFormField(
                    onChanged: (val) {
                      setState(() {
                        customerName = val;
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Imię",
                        labelText: "Imię",
                        hintStyle: TextStyle(color: Colors.blue))),
                TextFormField(
                    onChanged: (val) {
                      setState(() {
                        customerSurnameName = val;
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Nazwisko", labelText: "Nazwisko")),
                TextFormField(
                    onChanged: (val) {
                      setState(() {
                        companyName = val;
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Nazwa firmy", labelText: "Firma")),
                TextFormField(
                    onChanged: (val) {
                      setState(() {
                        nip = val;
                      });
                    },
                    decoration:
                        InputDecoration(hintText: "NIP", labelText: "NIP")),
                TextFormField(
                    onChanged: (val) {
                      setState(() {
                        password = val;
                      });
                    },
                    obscureText: true,
                    decoration:
                        InputDecoration(hintText: "Hasło", labelText: "Hasło")),
                SizedBox(height: 20.0),
                RaisedButton(
                  color: Colors.cyan[100],
                  onPressed: (
                      ) {setState(() {
                        print(email+' '+customerName);
                        print(password);
                        print(nip);
                      });},
                  child: Text(
                    'Zarejestruj!',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
