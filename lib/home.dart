import 'package:flutter/material.dart';
import 'package:foodindeed/main.dart';
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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      size: 40,
                    ),
                  ),
                  Text("Food Indeed"),
                  Image.asset(
                    "assets/logo.png",
                    height: 50,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find food groups\naround you",
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 250,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                          child: TextField(
                            cursorColor: Colors.black,
                            style: GoogleFonts.poppins(
                                color: Colors.black, fontSize: 16),
                            onChanged: (value) {
                              search = value;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: "search using city",
                                hintStyle: TextStyle()),
                          ),
                        ),
                      ),
                      MaterialButton(
                        minWidth: 60,
                        height: 60,
                        color: Color(0xFFEB271A),
                        onPressed: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'Food Groups',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 11,
                            height: 190,
                            color: Color(0xFFEB271A),
                          ),
                          // Container(
                          //   width: 110,
                          //   height: 5,
                          //   color: Color(0xFFEB271A),
                          // )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width - 50,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) =>
                                  Container(
                                decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(10)),
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                // height: 50,
                                width: 250,
                                // child: Text('1'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Name',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text('location'),
                                SizedBox(
                                  width: 30,
                                ),
                                Text('datetime')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('slots avaliable: '),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 7,
                    width: MediaQuery.of(context).size.width - 50,
                    color: Color(0xFFEB271A),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "wanna start a new food \ngroup?",
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color(0xFFEB271A),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Click\nHere",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
