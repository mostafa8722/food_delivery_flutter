
import 'package:flutter/material.dart';
import 'package:food_delivery_flutter/screens/splash/splash_screen.dart';

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],

        primarySwatch: Colors.amber
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}