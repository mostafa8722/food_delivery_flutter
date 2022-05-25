import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/restaurant.dart';
import '../../../data/data.dart';

class RestaurantsNearBy extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(top: 20,left: 10)
        ,child: Text("Restaurants NearBy",style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        Container(
            margin: EdgeInsets.only(top: 10,left: 10,right: 10),
            height: restaurants.length*100+10,
            child:  ListView.builder(

                itemCount: restaurants.length,
                itemBuilder: (BuildContext context,int index) => Card(index,size))
        )
      ],
    );
  }
  Widget Card(int index,Size size){
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,

      ),
      child: Row(
        children: [
          ClipRRect(

            borderRadius: BorderRadius.circular(15),
            child:
            Image.asset(restaurants[index].imageUrl,fit: BoxFit.cover,height: 100,width: 100,),
          ),
          SizedBox(width: 5,),
          Expanded(child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              SizedBox(height: 20,),
              Text(restaurants[index].name),
          
              SizedBox(height: 5,),
              Text(restaurants[index].address,overflow: TextOverflow.ellipsis,),
              SizedBox(height: 5,),


            ],
          ),
          ),
        ],
      ),
    );
  }

}