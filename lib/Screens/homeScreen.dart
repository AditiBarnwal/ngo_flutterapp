import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

var bannerItems= ["Help1","Help2","Help3"];
var bannerImage=[

  "assets/images/help3.jpg",
  "assets/images/help3.jpg",
  "assets/images/help3.jpg",
];
class HomeScreen extends StatelessWidget {
  static const String id= 'home-screen';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:Container(
       margin: EdgeInsets.only(top:8),
         child: ListView(
           physics: ClampingScrollPhysics() ,
           children: <Widget>[
             Container(
               margin: EdgeInsets.only(left:10,right:16),
               child: Row(
                 children: <Widget>[
                   Container(
                     height: 59,
                     width:59,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(40),

                       image: DecorationImage(image: AssetImage('assets/images/kindle.jfif'))
                     ),
                   ),
                   SizedBox(
                     width: 70,
                   ),
                   Text('KindleNgo',
                   style:TextStyle(
                     color: Colors.black54,
                     fontWeight: FontWeight.bold,
                     fontSize: 30,

                   ))
                 ],

               ),
             ),
             SizedBox(
               height: 20,
             ),
             Padding(

               padding:EdgeInsets.only(left:16),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Great future is in good charity',style: GoogleFonts.inter(
                     fontSize: 20,
                     fontWeight: FontWeight.w500,
                     color: Colors.black,
                   ) ),
                   BannerWidgetArea()
                 ],

               ),
             ),


           ],
         ),

     )
   );



  }
}
class BannerWidgetArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = 80;

    PageController controller =
    PageController(viewportFraction: 0.8, initialPage: 1);

    // List<Widget> bann = [];

    for (int x = 0; x < bannerItems.length; x++) {
     return Padding(
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
                      "More than 40% Off",
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );

    }
  }
}