import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/Models/Detailsclass.dart';
import 'LandingPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.blue),
        actions: [
          TextButton(
            onPressed: () {
              final snackBar = SnackBar(content: Text("Yeh Buddy !"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Nearby'),
          ),
          IconButton(
            icon: Icon(Icons.near_me),
            iconSize: 30,
            onPressed: () {
              final snackBar = SnackBar(content: Text("Yeh Buddy !"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: Drawer(),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            SizedBox(
              height: 1,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // color: Colors.redAccent,
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    SizedBox(
                      height: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Discover',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      //color: Colors.green,
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue.shade50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            foregroundImage:
                                AssetImage('./Assets/Foreground.jpeg'),
                          ),
                          Text(
                              'Mariya invite you to surf at \ncanggu with 7 others'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Categories',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 125,
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.shade100,
                                  offset: Offset(0, 2), //(x,y)
                                  blurRadius: 1.0,
                                )
                              ],
                              color: Colors.white),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Locations',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.shade100,
                                  offset: Offset(0, 2), //(x,y)
                                  blurRadius: 1.0,
                                )
                              ],
                              color: Colors.white),
                          child: Row(
                            children: [
                              Icon(
                                Icons.event,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Events',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 130,
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.shade100,
                                  offset: Offset(0, 2), //(x,y)
                                  blurRadius: 1.0,
                                )
                              ],
                              color: Colors.white),
                          child: Row(
                            children: [
                              Icon(
                                Icons.collections,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Collections',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Near me',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              child: Container(
                padding: EdgeInsets.all(5),
                child: ListView.builder(
                  itemCount: Detailslist.length,
                  itemBuilder: (BuildContext context, index) {
                    Details Detailcurrentlist = Detailslist[index];
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LandingPage(Detailcurrentlist)));
                        },
                        child: Container(
                          margin: EdgeInsets.all(13),
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width / 1.2,
                          padding: EdgeInsets.all(10),
                          //color: Colors.blue,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.shade100,
                                  offset: Offset(0, 2), //(x,y)
                                  blurRadius: 5.0,
                                )
                              ]),
                          child: Row(children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image:
                                        NetworkImage(Detailcurrentlist.image),
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black12),
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.width / 3,
                              //color: Colors.blue,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        Detailcurrentlist.place,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ]),
                                SizedBox(
                                  height: 11,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      Detailcurrentlist.distance,
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.star_border_outlined,
                                        color: Color(0xFFFBC02D)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      Detailcurrentlist.rating,
                                      style:
                                          TextStyle(color: Color(0xFFFBC02D)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 40,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            //left: 30
                                            right: 70,
                                            child: Container(
                                              height: 35,
                                              width: 35,
                                              //color: Colors.blueGrey,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage('jgj')),
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 3),
                                                  color: Colors.orangeAccent,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(60))),
                                            ),
                                          ),
                                          Positioned(
                                            left: 20,
                                            child: Container(
                                              height: 35,
                                              width: 35,
                                              //color: Colors.blueGrey,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage('hfgh')),
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 3),
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(60)),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            child: Container(
                                              height: 35,
                                              width: 35,
                                              //color: Colors.blueGrey,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage('hhj')),
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 3),
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(60))),
                                            ),
                                          ),
                                          Positioned(
                                              left: 92,
                                              right: 0,
                                              bottom: 15,
                                              child: Text(
                                                'jhgg',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.black54),
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ]),
                        ));
                  },
                ),
              ),
            ),
          ])),
    );
  }
}
