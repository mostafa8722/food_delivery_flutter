import 'package:flutter/material.dart';

import '../../data/data.dart';
import 'components/home_body.dart';

  class HomeScreen extends StatefulWidget{
    @override
  State<StatefulWidget> createState() =>HomeState();
  }
  class HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: customAppBar(),
      body: HomeBody(),

    );
  }
  AppBar customAppBar(){
    return AppBar(
      leading: Icon(Icons.account_circle,color: Colors.white,size: 25,),
      centerTitle: true,
      title: Text("Food App",
          style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "Signatra")
      ),
      actions: [
       FlatButton(onPressed: (){},
           child:
           Text("Cart(${currentUser.cart.length})",
           style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "bolt"),
           )
       ),
      ],

    );
  }
  }