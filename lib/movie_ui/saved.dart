import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: saved(),
  debugShowCheckedModeBanner: false,));
}
class saved extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   backgroundColor: Colors.black,
   body: ListView(
   children: [
     Padding(
       padding: const EdgeInsets.only(top: 30),
       child: Column(
         children: [
           Text('Saved',style: TextStyle(color: Colors.white,fontSize: 20),),
           Padding(
             padding: const EdgeInsets.only(left: 310,),
             child: Text('Delete',style: TextStyle(color: Colors.white70),),
           ),
             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Container(
               height: 150,
               child: Stack(
                 children: [
                   Positioned(
                       top: 15,
                       left: 25,
                       right: 25,
                       child: Container(
                         height: 130,
                         width: 100,

                         decoration: BoxDecoration(
                             color: Colors.grey[700],
                             borderRadius: BorderRadius.circular(20)
                         ),
                       )),
                   Positioned(
                       top: 20,
                       left: 30,
                       child: Card(
                         elevation: 10.0,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20.0)
                         ),
                         child: Container(
                           height: 110,
                           width: 110,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10.0),
                               image: DecorationImage(
                                 fit: BoxFit.fill,
                                 image: AssetImage("assets/images/movie10.jpg") )
                           ),
                         ),
                       )),
                   Positioned(top: 30,
                       left: 160,
                       child:
                       Row(
                         children: [
                           Container(
                             height: 150,
                             child: Column(
                               children: [
                                 Row(
                                   children: [
                                     Text("Captain America : The",style: TextStyle(fontSize: 17,color: Colors.white),),
                                     SizedBox(width: 30,),
                                     Icon(Icons.more_vert,color: Colors.white,)
                                   ],
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(right: 110),
                                   child: Text( "Winter Soldier",style: TextStyle(fontSize: 17,color: Colors.white),),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(right: 115),
                                   child: Text('Action, Adventure',style: TextStyle(color: Colors.white60,fontSize: 12)),
                                 )
                               ],
                             ),
                           ),
                             ],
                       )),
                   Positioned(
                       top: 95,
                       left: 150,
                       child: Container(
                         height: 30,
                         width: 120,
                         margin: EdgeInsets.all(8.0),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             color: Colors.redAccent[700]
                         ),
                         child: Center(
                             child: Text("Watch Now",style: TextStyle(color: Colors.white),)),
                       )),
                 ],
               ),
           ),
             ),
           Container(
             height: 150,
             child: Stack(
               children: [
                 Positioned(
                     top: 15,
                     left: 25,
                     right: 25,
                     child: Container(
                       height: 130,
                       width: 100,
                       decoration: BoxDecoration(
                           color: Colors.grey[700],
                           borderRadius: BorderRadius.circular(20)
                       ),
                     )),
                 Positioned(
                     top: 20,
                     left: 30,
                     child: Card(
                       elevation: 10.0,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0)
                       ),
                       child: Container(
                         height: 110,
                         width: 110,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.0),
                             image: DecorationImage(
                               fit: BoxFit.fill,
                               image: AssetImage("assets/images/movie13.jpg") )
                         ),
                       ),
                     )),
                 Positioned(top: 30,
                     left: 160,
                     child:
                     Row(
                       children: [
                         Container(
                           height: 150,
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(right: 80),
                                     child: Text("Captain Marvel",style: TextStyle(fontSize: 17,color: Colors.white),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 50),
                                     child: Icon(Icons.more_vert,color: Colors.white,),
                                   )
                                 ],
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 170),
                                 child: Text('Action, Adventure',style: TextStyle(color: Colors.white60,fontSize: 12)),
                               )
                             ],
                           ),
                         ),
                           ],
                     )),
                 Positioned(
                     top: 90,
                     left: 150,
                     child: Container(
                       height: 30,
                       width: 120,
                       margin: EdgeInsets.all(8.0),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           color: Colors.redAccent[700]
                       ),
                       child: Center(
                           child: Text("Watch Now",style: TextStyle(color: Colors.white),)),
                     )),
               ],
             ),
           ), Container(
             height: 150,
             child: Stack(
               children: [
                 Positioned(
                     top: 15,
                     left: 25,
                     right: 25,
                     child: Container(
                       height: 130,
                       width: 100,
                       decoration: BoxDecoration(
                           color: Colors.grey[700],
                           borderRadius: BorderRadius.circular(20)
                       ),
                     )),
                 Positioned(
                     top: 20,
                     left: 30,
                     child: Card(
                       elevation: 10.0,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0)
                       ),
                       child: Container(
                         height: 110,
                         width: 110,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.0),
                             image: DecorationImage(
                               fit: BoxFit.fill,
                               image: AssetImage("assets/images/movie9.jpg") )
                         ),
                       ),
                     )),
                 Positioned(top: 30,
                     left: 160,
                     child:
                     Row(
                       children: [
                         Container(
                           height: 150,
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(right: 10),
                                     child: Text("The Ice Age : Adventures",style: TextStyle(fontSize: 17,color: Colors.white),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 260),
                                     child: Icon(Icons.more_vert,color: Colors.white,),
                                   )
                                 ],
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right:380),
                                 child: Text( "of Buck Wild",style: TextStyle(fontSize: 17,color: Colors.white),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 360),
                                 child: Text('Adventure, Animation',style: TextStyle(color: Colors.white60,fontSize: 12)),
                               )
                             ],
                           ),
                         ),
                           ],
                     )),
                 Positioned(
                     top: 95,
                     left: 150,
                     child: Container(
                       height: 30,
                       width: 120,
                       margin: EdgeInsets.all(8.0),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           color: Colors.redAccent[700]
                       ),
                       child: Center(
                           child: Text("Watch Now",style: TextStyle(color: Colors.white),)),
                     )),
               ],
             ),
           ), Container(
             height: 150,
             child: Stack(
               children: [
                 Positioned(
                     top: 15,
                     left: 25,
                     right: 25,
                     child: Container(
                       height: 130,
                       width: 100,
                       decoration: BoxDecoration(
                           color: Colors.grey[700],
                           borderRadius: BorderRadius.circular(20)
                       ),
                     )),
                 Positioned(
                     top: 20,
                     left: 30,
                     child: Card(
                       elevation: 10.0,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0)
                       ),
                       child: Container(
                         height: 110,
                         width: 110,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.0),
                             image: DecorationImage(
                               fit: BoxFit.fill,
                               image: AssetImage("assets/images/movie14.png") )
                         ),
                       ),
                     )),
                 Positioned(top: 30,
                     left: 160,
                     child:
                     Row(
                       children: [
                         Container(
                           height: 150,
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(right: 90),
                                     child: Text("Encanto 2021",style: TextStyle(fontSize: 17,color: Colors.white),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 310),
                                     child: Icon(Icons.more_vert,color: Colors.white,),
                                   )
                                 ],
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 420),
                                 child: Text('Animation, Comedy',style: TextStyle(color: Colors.white60,fontSize: 12)),
                               )
                             ],
                           ),
                         ),
                           ],
                     )),
                 Positioned(
                     top: 90,
                     left: 150,
                     child: Container(
                       height: 30,
                       width: 120,
                       margin: EdgeInsets.all(8.0),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           color: Colors.redAccent[700]
                       ),
                       child: Center(
                           child: Text("Watch Now",style: TextStyle(color: Colors.white),)),
                     )),
               ],
             ),
           ),Container(
             height: 150,
             child: Stack(
               children: [
                 Positioned(
                     top: 15,
                     left: 25,
                     right: 25,
                     child: Container(
                       height: 130,
                       width: 100,
                       decoration: BoxDecoration(
                           color: Colors.grey[700],
                           borderRadius: BorderRadius.circular(20)
                       ),
                     )),
                 Positioned(
                     top: 20,
                     left: 30,
                     child: Card(
                       elevation: 10.0,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0)
                       ),
                       child: Container(
                         height: 110,
                         width: 110,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.0),
                             image: DecorationImage(
                               fit: BoxFit.fill,
                               image: AssetImage("assets/images/movie11.jpg") )
                         ),
                       ),
                     )),
                 Positioned(top: 30,
                     left: 160,
                     child:
                     Row(
                       children: [
                         Container(
                           height: 150,
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(right: 85),
                                     child: Text("The Lion King",style: TextStyle(fontSize: 17,color: Colors.white),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 320),
                                     child: Icon(Icons.more_vert,color: Colors.white,),
                                   )
                                 ],
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 420),
                                 child: Text('Animation, Adventure',style: TextStyle(color: Colors.white60,fontSize: 12)),
                               )
                             ],
                           ),
                         ),
                           ],
                     )),
                 Positioned(
                     top: 90,
                     left: 150,
                     child: Container(
                       height: 30,
                       width: 120,
                       margin: EdgeInsets.all(8.0),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           color: Colors.redAccent[700]
                       ),
                       child: Center(
                           child: Text("Watch Now",style: TextStyle(color: Colors.white),)),
                     )),
               ],
             ),
           ),Container(
             height: 150,
             child: Stack(
               children: [
                 Positioned(
                     top: 15,
                     left: 25,
                     right: 25,
                     child: Container(
                       height: 130,
                       width: 100,
                       decoration: BoxDecoration(
                           color: Colors.grey[700],
                           borderRadius: BorderRadius.circular(20)
                       ),
                     )),
                 Positioned(
                     top: 20,
                     left: 30,
                     child: Card(
                       elevation: 10.0,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0)
                       ),
                       child: Container(
                         height: 110,
                         width: 110,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.0),
                             image: DecorationImage(
                               fit: BoxFit.fill,
                               image: AssetImage("assets/images/movie12.jpg") )
                         ),
                       ),
                     )),
                 Positioned(top: 30,
                     left: 160,
                     child:
                     Row(
                       children: [
                         Container(
                           height: 150,
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(right: 130),
                                     child: Text("Frozen",style: TextStyle(fontSize: 17,color: Colors.white),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 320),
                                     child: Icon(Icons.more_vert,color: Colors.white,),
                                   )
                                 ],
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 410),
                                 child: Text('Animation, Adventure',style: TextStyle(color: Colors.white60,fontSize: 12)),
                               )
                             ],
                           ),
                         ),
                           ],
                     )),
                 Positioned(
                     top: 90,
                     left: 150,
                     child: Container(
                       height: 30,
                       width: 120,
                       margin: EdgeInsets.all(8.0),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           color: Colors.redAccent[700]
                       ),
                       child: Center(
                           child: Text("Watch Now",style: TextStyle(color: Colors.white),)),
                     )),
               ],
             ),
           ),
         ],
       ),
     )

  ],
   ),

 );
  }

}