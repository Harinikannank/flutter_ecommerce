

import 'package:flutter/material.dart';

 class flutter2 extends StatefulWidget {
   const flutter2({super.key});

   @override
   State<flutter2> createState() => _flutter2State();
 }

 class _flutter2State extends State<flutter2> {
   @override
   Widget build(BuildContext context) {
     //return const Placeholder(//
       //child: Text("screen1"),//
    // );//
     return Material(
       child : Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         //crossAxisAlignment: CrossAxisAlignment.center,//
         children: [
           Text("First Text"),
           Text("Second Text"),

           Icon(Icons.menu),
           Icon(Icons.person),
           Icon(Icons.more_vert),

         // Image.network("https://www.google.com/imgres?q=why%20global%20services&imgurl=https%3A%2F%2Flookaside.fbsbx.com%2Flookaside%2Fcrawler%2Fmedia%2F%3Fmedia_id%3D100063520375646&imgrefurl=https%3A%2F%2Fwww.facebook.com%2Fwhyglobalservices%2F&docid=SeE_g5LD1vwzXM&tbnid=fbf_qwlvkYwb_M&vet=12ahUKEwil5fC4uv6FAxUCqFYBHaDEBU4QM3oECGUQAA..i&w=1080&h=1080&hcb=2&ved=2ahUKEwil5fC4uv6FAxUCqFYBHaDEBU4QM3oECGUQAA"),



           Visibility(
              // Image.asset("assets/images/pizza.png"),
             visible:true,
             child: Container(


                 decoration: BoxDecoration(
                     color:Colors.red,
                 ),

     height: 300,
     width: 300,
                    child:SingleChildScrollView

                      ( scrollDirection: Axis.vertical,
                        child: Column(
                        children: [
                          Text("container line1"),
                          Text("container line2"),
                          Image.asset("assets/images/pizza.png"),
                          Image.asset("assets/images/pizza.png"),
                          Image.asset("assets/images/pizza.png"),
                          Image.asset("assets/images/pizza.png"),
                        ]
                    )
                    )

                    // shape:BoxShape.circle//

     ),

              // borderRadius: BorderRadius.circular(32)//

             
             )
         ],
       )

               );



   }
 }







