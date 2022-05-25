
import 'package:flutter/material.dart';
import 'package:food_delivery_flutter/screens/single/single_screen.dart';

import '../../../data/data.dart';
import '../../../models/order.dart';

class RecentOrders extends StatelessWidget{


  List<Order> recentOrders = currentUser.orders;
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
     return Column(

       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        Padding(padding: EdgeInsets.only(left: 20,top: 10,bottom: 10),child:  Text("Recent Orders"),)
       , Container(
           margin: EdgeInsets.only(left: 10),
          height: 100,
          child:  ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recentOrders.length,
            itemBuilder: (BuildContext context,int index) =>CardItem(context,index,size),
          ),
        )
       ],
     );
  }

  Widget CardItem(BuildContext context,int index,Size size){
    return
      GestureDetector(
        onTap: (){

          Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleScreen(restaurant: recentOrders[index].restaurant)));
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          height: 100,
          width: size.width*0.76,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,

          ),
          child:
          Row(
            children: [
              ClipRRect(

                borderRadius: BorderRadius.circular(15),
                child:
                Image.asset(recentOrders[index].food.imageUrl,fit: BoxFit.cover,height: 100,width: 100,),
              ),
              SizedBox(width: 5,),
              Expanded(child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  SizedBox(height: 20,),
                  Text(recentOrders[index].food.name),
                  SizedBox(height: 5,),
                  Text(recentOrders[index].restaurant.name),
                  SizedBox(height: 5,),
                  Text(recentOrders[index].date),

                ],
              ),
              ),
              GestureDetector(
                onTap: (){},
                child:
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.red
                  ),
                  child:  Icon(Icons.add,color: Colors.white,),
                )
                ,
              ),
              SizedBox(width: 5,),

            ],
          ),
        ),
      );
  }
}