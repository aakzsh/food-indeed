import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllGroups extends StatefulWidget {
  @override
  _AllGroupsState createState() => _AllGroupsState();
}

class _AllGroupsState extends State<AllGroups> {
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
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.3,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) => Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.pink,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: EdgeInsets.all(50),
                                    margin: EdgeInsets.all(10),
                                    height:
                                        MediaQuery.of(context).size.height / 5,
                                    width:
                                        MediaQuery.of(context).size.width / 1.8,
                                    // child: Text('1'),
                                  ),
                                  FloatingActionButton.extended(
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 4.0, color: Colors.orange),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16.0))),
                                    label: Text(
                                      'Book Now',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    backgroundColor: Colors.orange,
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Name',
                                  style: TextStyle(fontSize: 30),
                                  textAlign: TextAlign.left,
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
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('slots avaliable: '),
                              ),
                            ],
                          )),
                ),
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
