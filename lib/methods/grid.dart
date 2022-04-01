import 'package:flutter/material.dart';

 class GridContainer extends StatelessWidget {
   const GridContainer({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(
         child: GridView.count(
           crossAxisCount: 3,
           mainAxisSpacing: 10,
           crossAxisSpacing: 10,
           reverse: false,
           scrollDirection: Axis.vertical,

           children: [

             Container(
               color: Colors.black,
             ),

             Container(
               color: Colors.lime,
             ),

             Container(
               color: Colors.black,
             ),
            
           ],
           
           )
        ),

     );
   }
 }