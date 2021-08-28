import 'package:flutter/material.dart';
import 'package:foodindeed/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email, name, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[Image.asset("assets/logo.png")],
              ),
            ),
            Column(
              children: <Widget>[
                Text("Sign-Up"),
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
                            name = value;
                          },
                          decoration: InputDecoration(
                            hintText: "password",
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
                            password = value;
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
    );
  }
}
