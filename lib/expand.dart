import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: expandd(),
    debugShowCheckedModeBanner: false,
  ));
}
class expandd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Row(
       children: [
         Container(
           color: Colors.yellowAccent,
           width: 80,
         ),
         Expanded(
             child:Container(
               color: Colors.lightGreenAccent,
               width: 100,
         )
         ),
         Expanded(
             child:Container(
               color: Colors.redAccent,
               width: 100,
         )
         ),
         Expanded(
             child:Container(
               color: Colors.lightBlueAccent,
               width: 100,
         )
         ),
         Expanded(
             child:Container(
               color: Colors.lightGreen,
               width: 100,
         )
         ),
         Expanded(
             child:Container(
               color: Colors.purpleAccent,
               width: 100,
         )
         ),
       ],
     ),

   );
  }

}