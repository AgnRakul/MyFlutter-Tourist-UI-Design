import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../sourceImage/imagesrc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> images = [
    'https://images.pexels.com/photos/2265875/pexels-photo-2265875.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/5289209/pexels-photo-5289209.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/5779154/pexels-photo-5779154.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/2349168/pexels-photo-2349168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/2349168/pexels-photo-2349168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  ];

  List<String> visitedImages1 = [
    'https://images.pexels.com/photos/2698918/pexels-photo-2698918.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/2853535/pexels-photo-2853535.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/937481/pexels-photo-937481.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/1043473/pexels-photo-1043473.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/2216607/pexels-photo-2216607.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  ];

  List<String> visitedImages2 = [
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
    'https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/2174728/pexels-photo-2174728.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1386604/pexels-photo-1386604.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/1382734/pexels-photo-1382734.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
  ];

  List<String> visitedImages3 = [
    'https://images.pexels.com/photos/1580270/pexels-photo-1580270.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/1319911/pexels-photo-1319911.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/2747267/pexels-photo-2747267.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/2963408/pexels-photo-2963408.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/3334780/pexels-photo-3334780.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
  ];

  List<dynamic> Place = [
    'Bondi Beach',
    'Canggu',
    'Munnar',
    'Hossegor',
    'Taj Mahal'
  ];

  List<dynamic> Distance = [
    '2.5 km away',
    '3.5 km away',
    '3.9 km away',
    '5.8 km away',
    '5.7 km away'
  ];

  List<dynamic> Rating = ['4.9', '4.2', '4.3', '4.1', '4.7'];

  List<dynamic> Visitng = [
    '5+ Visiting',
    '3+ Visiting',
    '2+ Visiting',
    '6+ Visiting',
    '8+ Visiting'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.blue),
        actions: [
          FlatButton(
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
                            foregroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1576119/pexels-photo-1576119.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
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
                      height: 25,
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
              height: MediaQuery.of(context).size.height / 1.9,
              width: double.infinity,
              child: Container(
                padding: EdgeInsets.all(5),
                child: ListView.builder(
                  itemBuilder: (BuildContext context, index) {
                    return InkWell(
                        onTap: () => print('Bondi Beach'),
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
                                    image: NetworkImage('${images[index]}'),
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
                                        '${Place[index]}',
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
                                      Distance[index].toString(),
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
                                      Rating[index].toString(),
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
                                                      image: NetworkImage(
                                                          '${visitedImages1[index]}')),
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
                                                    image: NetworkImage(
                                                        '${visitedImages2[index]}')),
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
                                                      image: NetworkImage(
                                                          '${visitedImages3[index]}')),
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
                                                Visitng[index].toString(),
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
                  itemCount: images.length,
                ),
              ),
            ),
          ])),
    );
  }
}
