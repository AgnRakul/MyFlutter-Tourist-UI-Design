import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> images = [
    'https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.loveyourbrand.co.nz%2Fpeopleprofiles&psig=AOvVaw2iKb2U7NtyH_ArJuleTuJr&ust=1627551924594000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNi5kMS9hfICFQAAAAAdAAAAABAO',
    'https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.loveyourbrand.co.nz%2Fpeopleprofiles&psig=AOvVaw2iKb2U7NtyH_ArJuleTuJr&ust=1627551924594000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNi5kMS9hfICFQAAAAAdAAAAABAO',
    'https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.loveyourbrand.co.nz%2Fpeopleprofiles&psig=AOvVaw2iKb2U7NtyH_ArJuleTuJr&ust=1627551924594000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNi5kMS9hfICFQAAAAAdAAAAABAO',
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
            onPressed: () {},
            child: Text('Nearby'),
          ),
          Icon(Icons.near_me),
          SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: Drawer(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
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
                                'https://media.istockphoto.com/photos/portrait-of-handsome-latino-african-man-picture-id1007763808?s=612x612'),
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
                child: ListView(
                  //padding: EdgeIn sets.all(),
                  children: [
                    SizedBox(

                        //height: MediaQuery.of(context).size.height * 0.0001,
                        ),
                    InkWell(
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
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('Assets/Bondi.jpg'),
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
                                        'Bondi Beach',
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
                                      '2.5km away',
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
                                      '4.9',
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
                                                          'https://images.squarespace-cdn.com/content/v1/5070f2f8c4aa65eb3b6394d0/1436318761703-SUWVQ0QPHE569A8FNBHH/LYB+People+Profile+%2808%29.jpg?format=1500w')),
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
                                                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80')),
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
                                                          'https://images.pexels.com/photos/2078265/pexels-photo-2078265.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')),
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
                                                '5+ Visited',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.black54),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () => print('Canggu'),
                      child: Container(
                        margin: EdgeInsets.all(13),
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 1.1,
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
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('Assets/canggu.jpg'),
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
                                      Text('Canggu',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
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
                                      '3.5km away',
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
                                      '4.2',
                                      style:
                                          TextStyle(color: Color(0xFFFBC02D)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
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
                                            //left: 30,
                                            right: 70,
                                            child: Container(
                                              height: 35,
                                              width: 35,
                                              //color: Colors.blueGrey,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: NetworkImage(
                                                          'https://images.squarespace-cdn.com/content/v1/5070f2f8c4aa65eb3b6394d0/1436318761703-SUWVQ0QPHE569A8FNBHH/LYB+People+Profile+%2808%29.jpg?format=1500w')),
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
                                                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80')),
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
                                                          'https://images.pexels.com/photos/2078265/pexels-photo-2078265.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')),
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
                                                '5+ Visited',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.black54),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () => print('Hossegor'),
                      child: Container(
                        margin: EdgeInsets.all(13),
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 1.1,
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
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('Assets/Hossegor.jpg'),
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
                                      Text('Hossegor',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
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
                                      '5.8 km away',
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
                                      '4.1',
                                      style:
                                          TextStyle(color: Color(0xFFFBC02D)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
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
                                            //left: 30,
                                            right: 70,
                                            child: Container(
                                              height: 35,
                                              width: 35,
                                              //color: Colors.blueGrey,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: NetworkImage(
                                                          'https://images.squarespace-cdn.com/content/v1/5070f2f8c4aa65eb3b6394d0/1436318761703-SUWVQ0QPHE569A8FNBHH/LYB+People+Profile+%2808%29.jpg?format=1500w')),
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
                                                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80')),
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
                                                          'https://images.pexels.com/photos/2078265/pexels-photo-2078265.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')),
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
                                              '5+ Visited',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black54),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () => print('Hossegor'),
                      child: Container(
                        margin: EdgeInsets.all(13),
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 1.1,
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
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('Assets/Louvre.jpg'),
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
                                      Text('Louvre Museum',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
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
                                      '5.8 km away',
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
                                      '4.1',
                                      style:
                                          TextStyle(color: Color(0xFFFBC02D)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
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
                                            //left: 30,
                                            right: 70,
                                            child: Container(
                                              height: 35,
                                              width: 35,
                                              //color: Colors.blueGrey,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: NetworkImage(
                                                          'https://images.squarespace-cdn.com/content/v1/5070f2f8c4aa65eb3b6394d0/1436318761703-SUWVQ0QPHE569A8FNBHH/LYB+People+Profile+%2808%29.jpg?format=1500w')),
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
                                                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80')),
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
                                                          'https://images.pexels.com/photos/2078265/pexels-photo-2078265.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')),
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
                                              '5+ Visited',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black54),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                        onTap: () => print('Hossegor'),
                        child: Container(
                          margin: EdgeInsets.all(13),
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width / 1.1,
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
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('Assets/MachuPicchu.jpg'),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text('Machu Picchu',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
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
                                        '5.8 km away',
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
                                        '4.1',
                                        style:
                                            TextStyle(color: Color(0xFFFBC02D)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
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
                                              //left: 30,
                                              right: 70,
                                              child: Container(
                                                height: 35,
                                                width: 35,
                                                //color: Colors.blueGrey,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: NetworkImage(
                                                            'https://images.squarespace-cdn.com/content/v1/5070f2f8c4aa65eb3b6394d0/1436318761703-SUWVQ0QPHE569A8FNBHH/LYB+People+Profile+%2808%29.jpg?format=1500w')),
                                                    border: Border.all(
                                                        color: Colors.white,
                                                        width: 3),
                                                    color: Colors.orangeAccent,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                60))),
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
                                                          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80')),
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 3),
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                                            'https://images.pexels.com/photos/2078265/pexels-photo-2078265.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')),
                                                    border: Border.all(
                                                        color: Colors.white,
                                                        width: 3),
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                60))),
                                              ),
                                            ),
                                            Positioned(
                                              left: 92,
                                              right: 0,
                                              bottom: 15,
                                              child: Text(
                                                '5+ Visited',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.black54),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
