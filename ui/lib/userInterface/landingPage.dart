import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            // child: Center(
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.only(
                        right: 18, left: 18, top: 15, bottom: 15),
                    padding: EdgeInsets.only(bottom: 15, top: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://images.pexels.com/photos/2265875/pexels-photo-2265875.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
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
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
