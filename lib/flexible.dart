import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: flexible(),
    debugShowCheckedModeBanner: false,
  ));
}
class flexible extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("GreeksforGreek"),
       backgroundColor: Colors.redAccent,
       leading: IconButton(onPressed: () { 
         
       }, icon: Icon(Icons.menu),
         
       ),
     ),
     body: Center(
       child: Container(
         child: Row(
           children: [
             Flexible(
               flex: 1,
                 fit: FlexFit.tight,
                 child: Container(
                   height: 100,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: Colors.red
                   ),
                 )),
             SizedBox(width: 20),
             Flexible(
                 flex: 1,
                 fit: FlexFit.tight,
                 child: Container(
                   height: 100,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Colors.red
                   ),
                 )),

           ],
         ),
       ),
     ),
   );
  }

}