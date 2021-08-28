import 'package:flutter/material.dart';
import 'package:foodindeed/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email, name, password;
  Widget drawer() {
    return Drawer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu_outlined),
                    alignment: Alignment.topLeft,
                    color: Colors.black,
                    onPressed: () {
                          drawer();
                    },
              ),
                  Image.asset(
                      "assets/logo.png",
                       width: 62,
                       height: 54,
                  )],
              ),
            ),
            Column(
              children: <Widget>[
                Text(
                    "Sign-Up",
                     style: TextStyle(
                         fontSize: 30,
                     ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(25, 29, 49, 1),
                          gradient:  LinearGradient(
                          begin: Alignment.centerLeft,
                          colors: <Color>[
                            Color(0xffFF7A00),
                            Color(0xffEB271A),
                          ],
                         ),
                        ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                        child: TextField(
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 16),
                          onChanged: (value) {
                            name = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Name",
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        gradient:  LinearGradient(
                          begin: Alignment.centerLeft,
                          colors: <Color>[
                            Color(0xffFF7A00),
                            Color(0xffEB271A),
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
                            hintText: "Email",
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        gradient:  LinearGradient(
                          begin: Alignment.centerLeft,
                          colors: <Color>[
                            Color(0xffFF7A00),
                            Color(0xffEB271A),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                        child: TextField(
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 16),
                          onChanged: (value) {
                            password = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                      )),
                ),
                MaterialButton(
                  color: Color(0xffEB271A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () async {
                    await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: email, password: password)
                        .then((value) {
                      if (value.user != null) {
                        FirebaseFirestore.instance
                            .collection("students")
                            .doc(value.user?.uid)
                            .set({
                          "name": name,
                          "email": email,
                          "tickets": [],
                        });
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                      }
                    }).catchError((err) {
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
                  child: Text("SignUp"),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),

      drawer: new Drawer(),
    );
  }
}
