
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import '../home/home_screen.dart';
class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return SplashScreenView(
        navigateRoute:HomeScreen() ,
        imageSrc: "assets/images/icon.png",
        text: "Food Delivery App",
          colors: [
            Colors.purple,
            Colors.blue,
            Colors.yellow,
            Colors.red,
          ],

        textType: TextType.ColorizeAnimationText,
        textStyle: TextStyle(
            fontSize: 50.0,color: Colors.green,fontFamily: "Signatra"

        ),
        duration: 5000,
        imageSize: 130,

        backgroundColor: Colors.white
    );;
  }
}