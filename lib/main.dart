import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodindeed/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
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
  FirebaseFirestore auth = FirebaseFirestore.instance;
  String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                  "find food groups and \ncommunities around you",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(stops: [
                        0.1,
                        0.8,
                        //0.98
                      ], colors: [
                        Color(0xFFEB271A),
                        Color(0xFFFF7A00),
                        //
                        //Color.fromRGBO(196, 196, 196, 0),
                      ]),
                      color: Color.fromRGBO(25, 29, 49, 1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                      child: TextField(
                        cursorColor: Colors.white,
                        cursorHeight: 24,
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 16),
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: "email",
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          stops: [
                            0.1,
                            0.8,
                            //0.98
                          ],
                          colors: [
                            Color(0xFFEB271A),
                            Color(0xFFFF7A00),
                            //
                            //Color.fromRGBO(196, 196, 196, 0),
                          ],
                        ),
                      ),
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
                            disabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFEB271A),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: email, password: password)
                          .then((result) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      }).catchError((err) {
                        print(err.message);
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Error"),
                                content: Text(err.message),
                                actions: [
                                  TextButton(
                                    child: Text("Ok"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              );
                            });
                      });
                    },
                    child: Text(
                      "LogIn",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("or signup "),
                  Text(
                    'here',
                    style: TextStyle(color: Color(0xFFEB271A)),
                  )
                ],
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signup()));
              },
            )
          ],
        ),
      ),
    );
  }
}
