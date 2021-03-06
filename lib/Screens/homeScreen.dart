



import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

var bannerItems = ["Help1", "Help2", "Help3", "Help4"];
var bannerImage = [
  "assets/images/help3.jpg",
  "assets/images/help3.jpg",
  "assets/images/help3.jpg",
  "assets/images/help3.jpg"
];
class HomeScreen extends StatelessWidget {

  static const String id= 'home-screen';
  List categories=[
    "assets/images/help3.jpg",
    "assets/images/help3.jpg",
    "assets/images/help3.jpg",
    "assets/images/help3.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                        Text(
                          "Charity",
                          style: TextStyle(fontSize: 50, fontFamily: "Samantha"),
                        ),
                        IconButton(icon: Icon(Icons.person), onPressed: () {})
                      ],
                    ),
                  ),

                  BannerWidgetArea(),

                  SizedBox(
                    height: 8,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Text("Categories",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,

                        ),),
                        SizedBox(
                          height: 12,
                        ),
                        SizedBox(

                          height: MediaQuery.of(context).size.height-400,

                          child: GridView.count(

                            primary: false,
                            padding: const EdgeInsets.all(4),
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 15,
                            crossAxisCount: 2,
                            children:[
                              Container(
                                height: 300,
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset('assets/images/help3.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 300,
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset('assets/images/help3.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 300,
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset('assets/images/help3.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 300,
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset('assets/images/help3.jpg',
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("Recommended NGO's",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
                    child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12),
                       color: Colors.white,
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.2),
                         spreadRadius: 6,
                         offset: Offset(0,8)
                       )
                     ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                                child: Image.asset("assets/images/help3.jpg")),
                            Text("NGO1",style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text("ABOUT NGO1",style: TextStyle(

                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),),
                          ],
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 6,
                                offset: Offset(0,8)
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset("assets/images/help3.jpg")),
                            Text("NGO1",style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text("ABOUT NGO1",style: TextStyle(

                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),),
                          ],
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 6,
                                offset: Offset(0,8)
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset("assets/images/help3.jpg")),
                            Text("NGO1",style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text("ABOUT NGO1",style: TextStyle(

                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),),
                          ],
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 6,
                                offset: Offset(0,8)
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset("assets/images/help3.jpg")),
                            Text("NGO1",style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text("ABOUT NGO1",style: TextStyle(

                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),),
                          ],
                        ),
                      ),

                    ),
                  ),
                 

                ],
              ),
            )),
      ),


    );
  }
}

class BannerWidgetArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    PageController controller =
    PageController(viewportFraction: 0.8, initialPage: 1);

    List<Widget> banners = new List<Widget>();

    for (int x = 0; x < bannerItems.length; x++) {
      var bannerView = Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0)
                    ]),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(
                  bannerImage[x],
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black])),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      bannerItems[x],
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    Text(
                      "We rise by lifting others",
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

      );

      banners.add(bannerView);
    }

    return Container(
      width: screenWidth,
      height: screenWidth * 8/ 16,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: banners,
      ),
    );
  }
}
