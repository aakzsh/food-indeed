import 'package:flutter/material.dart';
import 'package:foodindeed/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NewGroup extends StatefulWidget {
  @override
  _NewGroupState createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  String place, date, time, total_slots;
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
                  Text(
                    'Food Indeed',
                    style: TextStyle(
                      fontSize: 20,
                    ),

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
                  "Start Food Group",
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
                            place = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Place",
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
                            date = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Date",
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
                            time = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Time",
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                      margin: EdgeInsets.only(bottom: 20),
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
                          onChanged: (value){
                            total_slots = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Total slots",
                          ),
                        ),
                      )),
                ),

                MaterialButton(
                  color: Color(0xffEB271A),
                  height: 40,
                  minWidth: 50,
                  padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () {},
                  child: SizedBox(
                      width: 330,
                      height: 45,

                    child:Row(
                     mainAxisAlignment : MainAxisAlignment.spaceBetween,
                      children: [

                        Text("Add image"),
                        Icon(Icons.add),

                      ],
                    ),
                  ),
                ),
                MaterialButton(
                  color: Color(0xffEB271A),
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () {},
                  child: Text("Confirm"),
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
