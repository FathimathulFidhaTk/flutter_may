import 'package:flutter/material.dart';

import 'hero2.dart';

void main(){
  runApp(MaterialApp(
    home: hero_anime(),
    debugShowCheckedModeBanner: false,
  ));
}
class hero_anime extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         Container(
           height: 180,
           child: Stack(
             children: [
               Positioned(
                   top: 25,
                   left: 30,
                   child: Hero(
                     tag: 'imagge',
                     child: Container(
                       height: 150,
                       width: 200,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           image: DecorationImage(
                               fit: BoxFit.fill,
                               image: AssetImage("assets/images/farmer8.jpg")
                           )
                       ),child: GestureDetector(
                       onTap: (){
                         Navigator.of(context).push(
                           MaterialPageRoute(
                             builder: (context) => hero_anime1()
                             ),
                         );
                       },
                     ),
                     ),
                   )),
               Positioned(top: 40,
                   left: 200,
                   child:
                   Container(
                     height: 300,
                     width: 270,
                     child: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(right: 75),
                           child: Text('Vegetables',style: TextStyle(
                             fontWeight: FontWeight.w900,
                             color: Colors.black87,
                             fontSize: 20,
                           ),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 50,top: 15),
                           child: Text('Vegetables are parts of plants that are consumed by humans or other animals as food.', style: TextStyle(
                             fontWeight: FontWeight.w300,
                             color: Colors.black87,
                             fontSize: 14,
                           ),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 20,right: 100),
                           child: Text(
                             "In-Stock",
                             style: TextStyle(
                               fontWeight: FontWeight.w600,
                               color: Colors.green,
                               fontSize: 18,
                             ),
                           ),
                         ),
                       ],
                     ),
                   )),
             ],),
         ),
         Container(
           height: 180,
           child: Stack(
             children: [
               Positioned(
                   top: 25,
                   left: 30,
                   child: Hero(
                     tag: 'title',
                     child: Container(
                       height: 150,
                       width: 200,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           image: DecorationImage(
                               fit: BoxFit.fill,
                               image: AssetImage("assets/images/farmer1.jpg")
                           )
                       ),child: GestureDetector(
                       onTap: (){
                         Navigator.of(context).push(
                           MaterialPageRoute(
                               builder: (context) => hero_anime2()
                           ),
                         );
                       },
                     ),
                     ),
                   )),
               Positioned(top: 40,
                   left: 200,
                   child:
                   Container(
                     height: 300,
                     width: 270,
                     child: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(right: 110),
                           child: Text('Fruits',style: TextStyle(
                             fontWeight: FontWeight.w900,
                             color: Colors.black87,
                             fontSize: 20,
                           ),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 50,top: 15),
                           child: Text('Fruits are the means by which flowering plants (also known as angiosperms) disseminate their seeds.', style: TextStyle(
                             fontWeight: FontWeight.w300,
                             color: Colors.black87,
                             fontSize: 14,
                           ),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 20,right: 100),
                           child: Text(
                             "In-Stock",
                             style: TextStyle(
                               fontWeight: FontWeight.w600,
                               color: Colors.green,
                               fontSize: 18,
                             ),
                           ),
                         ),
                       ],
                     ),
                   )),
             ],),
         ),
      ],),

   );
  }

}