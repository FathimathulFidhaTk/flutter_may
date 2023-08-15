import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: idea(),
  ));
}
class idea extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('My NzmFathimathul Fidha Tk',style: TextStyle(fontFamily: "Poppins"),),
        ],
      ),

    );
  }

}