import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../sourceImage/allsrc.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

// List<Source> s = s;

class _LandingPageState extends State<LandingPage> {
  Source s = Source();

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
            body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          // child: Center(
          child: Column(children: [
            Expanded(
              flex: 5,
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
                    Row(
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
                        )
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
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.dstOver),
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
                flex: 3,
                child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 200, left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DefaultTabController(
                            length: 3,
                            child: Column(children: [
                              Theme(
                                data: ThemeData(
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent),
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
                              TabBarView(
                                children: <Widget>[
                                  Center(
                                    child: Text("It's cloudy here"),
                                  ),
                                  Center(
                                    child: Text("It's rainy here"),
                                  ),
                                  Center(
                                    child: Text("It's sunny here"),
                                  ),
                                ],
                              ),
                            ]),
                          )
                        ],
                      ),
                    )))
          ]),
        ),
      ),
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
