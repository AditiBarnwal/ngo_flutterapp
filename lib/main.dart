import 'package:flutter/material.dart';

import 'Screens/homeScreen.dart';
import 'Screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.deepOrangeAccent
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id:(context)=>SplashScreen(),
        HomeScreen.id:(context)=>HomeScreen(),

      },
    );
  }
}
