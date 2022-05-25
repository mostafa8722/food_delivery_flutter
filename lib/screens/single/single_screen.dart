
import 'package:flutter/material.dart';
import 'package:food_delivery_flutter/models/restaurant.dart';

class SingleScreen extends StatelessWidget{
  Restaurant restaurant;
  SingleScreen({required this.restaurant});
  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body:
      SingleChildScrollView(
        child:    Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Stack(
               children: [
                 Container(
                   height: 200,
                   width: size.width,
                   child: Image.asset(restaurant.imageUrl,fit: BoxFit.cover,height: 200,width: size.width,),
                 ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white,)),
                    ],
                  ),

                )
               ],
             ),
            SizedBox(height: 10,),
           Padding(padding: EdgeInsets.symmetric(horizontal: 10),
           child:   Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(restaurant.name,style: TextStyle(fontWeight: FontWeight.bold),),
               Text("0.2 miles away",style: TextStyle(fontSize: 13),),
             ],
           ),
           ),
            SizedBox(height: 10,),


            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child:  Text(restaurant.address,style: TextStyle(fontSize: 15,)),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red
                  ),
                  child:Center(child:  Text("Reviews",style: TextStyle(color: Colors.white),)),
                ),
                Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red
                  ),

                  child:Center(child:  Text("Contact",style: TextStyle(color: Colors.white),)),
                ),

              ],
            ),
            Center(child: Text("Menu",style: TextStyle(fontWeight: FontWeight.bold),),),

            Container(
              height: restaurant.menu.length * 170/2 +30,
              child:
              GridView.builder(
              primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: restaurant.menu.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  )

                  , itemBuilder: (BuildContext context,int index)=>Center(child: MenuCard(context,index),)),
            )

          ],
        ),
      )
    );



  }
  Widget MenuCard(BuildContext context,int index){
    return Container(
      height: 175,
      child: Stack(
        children: [
          Center(child:
          ClipRRect(

            borderRadius: BorderRadius.circular(15),
            child:
            Image.asset(restaurant.menu[index].imageUrl,fit: BoxFit.cover,height: 175,width: 175,),
          )

            ,),
          Center(child:

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(restaurant.menu[index].name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text("\$ ${restaurant.menu[index].price.toString()}",style: TextStyle(color: Colors.white),),
            ],
          )
            ,),
          Positioned(
            bottom: 10,
            right: 10,
            child:   Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red
              ),
              child:  Icon(Icons.add,color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}