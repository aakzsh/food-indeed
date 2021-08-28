import 'package:flutter/material.dart';
import 'package:foodindeed/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          )),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset(
                  "assets/logo.png",
                  height: 100,
                ),
                Text(
                  "Food Indeed",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "find food groups and communities around you",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(25, 29, 49, 1)),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                        child: TextField(
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 16),
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                            hintText: "email",
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(25, 29, 49, 1)),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                        child: TextField(
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 16),
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                            hintText: "password",
                          ),
                        ),
                      )),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text("LogIn"),
                ),
                InkWell(
                  child: Text("or signup here"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
