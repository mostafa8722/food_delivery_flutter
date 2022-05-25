

import 'package:flutter/material.dart';
import 'package:food_delivery_flutter/screens/home/components/recent_orders.dart';
import 'package:food_delivery_flutter/screens/home/components/resturants_near_by.dart';

class HomeBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>BodyState();
}

class BodyState extends State<HomeBody>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchBox(),
          RecentOrders(),
          RestaurantsNearBy(),
        ],
      ),
    );

  }
  Widget SearchBox(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: Color(0xffff2200),
          width: 0.5,

        )
      ),
      child: Row(
        children: [
          Icon(Icons.search),
          Expanded(child:
          TextField(
            decoration: InputDecoration(
             hintText: "search ...",
              border: InputBorder.none
            ),
          )
          ),
          Icon(Icons.highlight_remove_rounded),
        ],
      ),
    );
  }
}
