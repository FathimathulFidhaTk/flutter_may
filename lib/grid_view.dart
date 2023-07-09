import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: gridview(),
  ));
}

class gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('Grid View'),),
     body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 3,
         crossAxisSpacing: 5,
     mainAxisSpacing: 8),
       children: [
         Card(
           child: Image(image: AssetImage("assets/images/img2.png"),),
         ),
         Card(
           child: Image(image: AssetImage("assets/images/img3.png"),),
         ),
         Card(
           child: Image(image: AssetImage("assets/images/img4.png"),),
         ),
         Card(
           child: Image(image: AssetImage("assets/images/img5.png"),),
         ),
         Card(
           child: Image(image: AssetImage("assets/images/img6.png"),),
         ),
         Card(
           child: Image(image: AssetImage("assets/images/img7.png"),),
         )

     ],
     )
   );
  }

}