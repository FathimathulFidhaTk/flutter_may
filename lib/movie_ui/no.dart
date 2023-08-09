// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MaterialApp(home: saved(),
//     debugShowCheckedModeBanner: false,));
// }
// class saved extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//         body: ListView(
//             children: [
//               Container(
//                   child: Text('Saved',style: TextStyle(color: Colors.white,fontSize: 20),)
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 280),
//                 child: Text('Delete',style: TextStyle(color: Colors.white),),
//               ),
//
//               Container(
//                 height: 190,
//                 child: Stack(
//                   children: [
//                     Positioned(
//                         top: 15,
//                         left: 20,
//                         right: 20,
//                         child: Container(
//                           height: 130.0,
//                           width: 200,
//                           decoration: BoxDecoration(
//                               color: Colors.grey,
//                               borderRadius: BorderRadius.circular(20)
//                           ),
//                         )),
//                     Positioned(
//                         top: 20,
//                         left: 30,
//                         child: Card(
//                           elevation: 10.0,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15.0)
//                           ),
//                           child: Container(
//                             height: 110,
//                             width: 110,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10.0),
//                                 image: DecorationImage(
//                                   fit: BoxFit.fill,
//                                     image: AssetImage("assets/images/movie10.jpg")
//                                 )
//                             ),
//                           ),
//                         )),
//                     Positioned(top: 30,
//                         left: 200,
//                         child:
//                         Container(
//                           height: 150,
//                           width: 280,
//                           child:  Row(
//                             children: [
//                               Container(
//                                 height: 150,
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Text("Captain America : The",style: TextStyle(fontSize: 17,color: Colors.white),),
//                                         SizedBox(width: 30,),
//                                         Icon(Icons.more_vert,color: Colors.white70,)
//                                       ],
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(right: 110),
//                                       child: Text( "Winter Soldier",style: TextStyle(fontSize: 17,color: Colors.white),),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(right: 115),
//                                       child: Text('Action, Adventure',style: TextStyle(color: Colors.white60,fontSize: 12)),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           )
//                         )),
//                     Positioned(
//                         top: 95,
//                         left: 185,
//                         child: Container(
//                           height: 30,
//                           width: 120,
//                           margin: EdgeInsets.all(8.0),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30),
//                               color: Colors.redAccent[700]
//                           ),
//                           child: Center(
//                               child: Text("Watch Now",style: TextStyle(color: Colors.white),)),
//                         )),
//                   ],
//                 ),
//               ),
//
//
//               Container(
//                 height: 180,
//                 child: Stack(
//                   children: [
//                     Positioned(
//                         top: 20,
//                         left: 20,
//                         right: 20,
//                         child: Container(
//                           height: 180.0,
//                           width: 500,
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(20)
//                           ),
//                         )),
//                     Positioned(
//                         top: 25,
//                         left: 30,
//                         child: Card(
//                           elevation: 10.0,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15.0)
//                           ),
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10.0),
//                                 image: DecorationImage(
//                                     fit: BoxFit.fill,
//                                     image: AssetImage("assets/images/news1.jpg")
//                                 )
//                             ),
//                           ),
//                         )),
//                     Positioned(top: 40,
//                         left: 200,
//                         child:
//                         Container(
//                           height: 150,
//                           width: 270,
//                           child: Column(
//                             children: [
//                               Text('Kendall Jenner remains the worlds most popular top model.',style: TextStyle(
//                                   fontSize: 18
//                               ),)
//                             ],
//                           ),
//                         )),
//                     Positioned(
//                         top: 90,
//                         left: 185,
//                         child: Container(
//                           height: 30,
//                           width: 150,
//                           margin: EdgeInsets.all(8.0),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30),
//                               color: Colors.grey[200]
//                           ),
//                           child: Center(child: Text("Entertainment")),
//                         )),
//                     Positioned(
//                         top:85,
//                         left: 200,
//                         child: Container(
//                           height: 150,
//                           width: 280,
//                           child: Row(
//                             children: [
//                               Icon(Icons.timer_outlined,size: 18,),
//                               SizedBox(width: 10,),
//                               Text("22 December 10"),
//                               SizedBox(width: 100,),
//                               Icon(Icons.favorite,size: 18,),
//                               Text('10')
//                             ],
//                           ),
//                         ))
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 180,
//                 child: Stack(
//                   children: [
//                     Positioned(
//                         top: 20,
//                         left: 20,
//                         right: 20,
//                         child: Container(
//                           height: 180.0,
//                           width: 500,
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(20)
//                           ),
//                         )),
//                     Positioned(
//                         top: 25,
//                         left: 30,
//                         child: Card(
//                           elevation: 10.0,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15.0)
//                           ),
//                           child: Container(
//                             height: 130,
//                             width: 150,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10.0),
//                                 image: DecorationImage(
//                                     fit: BoxFit.fill,
//                                     image:AssetImage('assets/images/fa.jpg')
//                                 )
//                             ),
//                           ),
//                         )),
//                     Positioned(top: 40,
//                         left: 200,
//                         child:
//                         Container(
//                           height: 150,
//                           width: 280,
//                           child: Column(
//                             children: [
//                               Text('Facebook is exploring building its own operating system.',style: TextStyle(
//                                   fontSize: 18
//                               ),)
//                             ],
//                           ),
//                         )),
//                     Positioned(
//                         top: 90,
//                         left: 185,
//                         child: Container(
//                           height: 30,
//                           width: 100,
//                           margin: EdgeInsets.all(8.0),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30),
//                               color: Colors.grey[200]
//                           ),
//                           child: Center(child: Text("Technology")),
//                         )),
//                     Positioned(
//                         top:80,
//                         left: 200,
//                         child: Container(
//                           height: 150,
//                           width: 280,
//                           child: Row(
//                             children: [
//                               Icon(Icons.timer_outlined,size: 18,),
//                               SizedBox(width: 10,),
//                               Text("22 December 10"),
//                               SizedBox(width: 100,),
//                               Icon(Icons.favorite,size: 18,),
//                               Text('13')
//                             ],
//                           ),
//                         ))
//                   ],
//                 ),
//               ),Container(
//                 height: 200,
//                 child: Stack(
//                   children: [
//                     Positioned(
//                         top: 20,
//                         left: 20,
//                         right: 20,
//                         child: Container(
//                           height: 180.0,
//                           width: 500,
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(20)
//                           ),
//                         )),
//                     Positioned(
//                         top: 25,
//                         left: 30,
//                         child: Card(
//                           elevation: 10.0,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15.0)
//                           ),
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10.0),
//                                 image: DecorationImage(
//                                     fit: BoxFit.fill,
//                                     image: NetworkImage("https://cdn.spacetelescope.org/archives/images/screen/heic1608a.jpg")
//                                 )
//                             ),
//                           ),
//                         )),
//                     Positioned(top: 30,
//                         left: 200,
//                         child:
//                         Container(
//                           height: 150,
//                           width: 280,
//                           child: Column(
//                             children: [
//                               Text('Hubble investigates new type of supper - puffs planet with texture of cotton candy.',style: TextStyle(
//                                   fontSize: 18
//                               ),)
//                             ],
//                           ),
//                         )),
//                     Positioned(
//                         top: 100,
//                         left: 185,
//                         child: Container(
//                           height: 30,
//                           width: 100,
//                           margin: EdgeInsets.all(8.0),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30),
//                               color: Colors.grey[200]
//                           ),
//                           child: Center(child: Text("Science")),
//                         )),
//                     Positioned(
//                         top:90,
//                         left: 200,
//                         child: Container(
//                           height: 150,
//                           width: 280,
//                           child: Row(
//                             children: [
//                               Icon(Icons.timer_outlined,size: 18,),
//                               SizedBox(width: 10,),
//                               Text("22 December 10"),
//                               SizedBox(width: 100,),
//                               Icon(Icons.favorite,size: 18,),
//                               Text('13')
//                             ],
//                           ),
//                         ))
//                   ],
//                 ),
//               )
//             ]
//         )
//     );
//   }
//
// }