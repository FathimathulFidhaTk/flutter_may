import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/news_hour_ui.dart';

import 'newshour_popular_news.dart';

void main(){
  runApp(MaterialApp(home: categories(),
  debugShowCheckedModeBanner: false,)
  );
}
class categories extends StatelessWidget{
  @override
  final validkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
   return Scaffold(
     body:  Form(
       key: validkey,
       child: Padding(
         padding: const EdgeInsets.only(left: 25),
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(right: 420,top: 20),
                   child: Icon(Icons.arrow_back_ios_new),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 329,top: 14),
                   child: Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                 ),
                 Row(
                   children: [
                     Column(
                         children: [
                           SizedBox(height: 10,),
                           Card(
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                             margin: EdgeInsets.all(8.0),
                             child: Container(
                               decoration: BoxDecoration(
                                   color: Colors.amber,
                                 borderRadius: BorderRadius.circular(10)
                               ),
                               height: 167,
                               width: 200,
                               child: TextButton(
                                 onPressed: (){
                                   final valid = validkey.currentState!.validate();
                                   if(valid){
                                     Navigator.push(context, MaterialPageRoute(builder: (context) => popular_news()));
                                   }else{
                                     return null;
                                   }
                                 },
                                 child: Padding(
                                   padding: const EdgeInsets.only(top:20,right: 120),
                                   child: Column(
                                     children: [
                                      Column(
                                        children: [
                                          CircleAvatar(radius: 25,
                                              backgroundColor: Colors.white,
                                              foregroundImage: AssetImage("assets/images/news.png")
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 55),
                                            child: Text('Politics',style: TextStyle(color: Colors.black),),
                                          )
                                        ],
                                      )
                                     ],
                                   )
                                 ),
                               ),
                             ),
                           ),
                           Card(
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                             margin: EdgeInsets.all(8.0),
                             child: Container(
                               decoration: BoxDecoration(
                                   color: Colors.redAccent[100],
                                 borderRadius: BorderRadius.circular(10)
                               ),
                               height: 167,
                               width: 200,
                               child: Padding(
                                 padding: const EdgeInsets.only(top:20,right: 120),
                                 child: Column(
                                   children: [
                                     CircleAvatar(
                                       radius: 25,
                                       backgroundColor: Colors.white,
                                       foregroundImage: AssetImage("assets/images/news.png"),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(top: 55),
                                       child: Text('Science'),
                                     )
                                   ],
                                 ),
                               ),
                             ),
                           ),

                           Card(
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                             margin: EdgeInsets.all(8.0),
                             child: Container(
                               decoration: BoxDecoration(
                                   color: Colors.purpleAccent[100],
                                 borderRadius: BorderRadius.circular(10)
                               ),
                               height: 167,
                               width: 200,
                               child: Padding(
                                 padding: const EdgeInsets.only(top:20,right: 120),
                                 child: Column(
                             children: [
                             CircleAvatar(
                                 radius: 25,
                                 backgroundColor: Colors.white,
                                 foregroundImage: AssetImage("assets/images/news.png")
                             ),
                 Padding(
                   padding: const EdgeInsets.only(top: 55),
                   child: Text('Travel',style: TextStyle(color: Colors.black),),
                 )
               ],
             ),
                               ),
                             ),
                           )
                         ],
                     ),

                     Column(
                       children: [
                         SizedBox(height: 10,),
                         Card(
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                           margin: EdgeInsets.all(8.0),
                           child: Container(
                             decoration: BoxDecoration(
                                 color: Colors.lightBlueAccent[100],
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             height: 167,
                             width: 200,
                             child: Padding(
                               padding: const EdgeInsets.only(top:20,right: 120),
                               child: Column(
                                 children: [
                                   CircleAvatar(
                                       radius: 25,
                                       backgroundColor: Colors.white,
                                       foregroundImage: AssetImage("assets/images/news.png")                                 ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 55),
                                     child: Text('Sports'),
                                   )
                                 ],
                               ),
                             ),
                           ),
                         ),
                         Card(
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                           margin: EdgeInsets.all(8.0),
                           child: Container(
                             decoration: BoxDecoration(
                                 color: Colors.pinkAccent[100],
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             height: 167,
                             width: 200,
                             child: Padding(
                               padding: const EdgeInsets.only(top:20,right: 100),
                               child: Column(
                                 children: [
                                   CircleAvatar(
                                       radius: 25,
                                       backgroundColor: Colors.white,
                                       foregroundImage: AssetImage("assets/images/news.png")
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 55),
                                     child: Text('Technology'),
                                   )
                                 ],
                               ),
                             ),
                           ),
                         ),
                         Card(
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                           margin: EdgeInsets.all(8.0),
                           child: Container(
                             decoration: BoxDecoration(
                                 color: Colors.blueGrey[300],
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             height: 167,
                             width: 200,
                             child: Padding(
                               padding: const EdgeInsets.only(top:20,right: 88),
                               child: Column(
                                 children: [
                                   SizedBox(width: 1,),
                                   CircleAvatar(
                                     radius: 25,
                                     backgroundColor: Colors.white,
                                     foregroundImage: AssetImage("assets/images/news.png")
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 55,left: 23),
                                     child: Text('Entertainment'),
                                   )
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ],
                     )
                   ],
                 ),
               ],
             ),
           ),
         ),
       ),
     ),

   );
  }

}