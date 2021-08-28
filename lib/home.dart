import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String search;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  Text("Food Indeed"),
                  Image.asset(
                    "assets/logo.png",
                    height: 50,
                  ),
                ],
              ),
            ),
            Text("Find food groups\naround you"),
            Row(
              children: <Widget>[
                Container(
                  width: 150,
                  child: Padding(
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
                              search = value;
                            },
                            decoration: InputDecoration(
                              hintText: "search using city",
                            ),
                          ),
                        )),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Icon(Icons.search),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text("wanna start a new food group?"),
                MaterialButton(
                  onPressed: () {},
                  child: Text("Click\nHere"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
