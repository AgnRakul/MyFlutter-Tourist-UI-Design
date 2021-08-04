import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../sourceImage/allsrc.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

// List<Source> s = s;

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
            body: SafeArea(
      child: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // child: Center(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(height: 80),
                            customIconGoBack(context),
                            Row(
                              children: [
                                SizedBox(
                                  width: 230,
                                ),
                                customIconFav(),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 280,
                    ),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 10,
                            width: 20,
                          ),
                          Icon(
                            Icons.location_on_sharp,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "2.4km away",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 5,
                          width: 20,
                        ),
                        Container(
                          child: Text(
                            'Bondi Beach',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Container(
                          height: 30,
                          margin: EdgeInsets.only(right: 20),
                          padding: EdgeInsets.only(left: 10),
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black45,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.white,
                                size: 25,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                margin:
                    EdgeInsets.only(right: 18, left: 18, top: 15, bottom: 15),
                padding: EdgeInsets.only(bottom: 15, top: 15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.9), BlendMode.dstATop),
                    image: AssetImage('./Assets/Bondi.jpg'),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(2, 2), //(x,y)
                      blurRadius: 5.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                height: MediaQuery.of(context).size.height / 1.7,
              ),
            ),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: DefaultTabController(
                  initialIndex: 0,
                  length: 3,
                  child: Column(
                    children: [
                      Theme(
                        data: ThemeData(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: TabBar(
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            indicatorPadding: EdgeInsets.only(right: 16),
                            labelPadding: EdgeInsets.only(right: 16),
                            indicator: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            tabs: [
                              Tab(
                                text: "Overview",
                              ),
                              Tab(
                                text: "Reviews",
                              ),
                              Tab(
                                text: "Friends",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: TabBarView(
                            children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.blue.shade50),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(Icons.ac_unit),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Tide \n5.8ft'),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Icon(Icons.ac_unit),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Weather \n5.8ft'),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Icon(Icons.ac_unit),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Wind \n5.8ft'),
                                    ],
                                  )),
                              Container(
                                child: Center(child: Text("hello")),
                              ),
                              Container(
                                child: Center(child: Text("hello")),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    )));
  }
}

Widget customIconGoBack(BuildContext context) {
  return Material(
      color: Colors.transparent,
      child: Center(
        child: Ink(
          // padding: EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ));
}

Widget customIconFav() {
  return Material(
      color: Colors.transparent,
      child: Center(
        child: Ink(
          // padding: EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: IconButton(
            icon: Icon(Icons.favorite),
            color: Colors.blueGrey,
            onPressed: () {},
          ),
        ),
      ));
}
