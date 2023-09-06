import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: stackk(),
    debugShowCheckedModeBanner: false,
  ));
}
class stackk extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.lightBlueAccent,
          ),
          Positioned(
            left: 40,
            right: 40,
            top: 50,
            bottom: 50,
            child: Container(
              height: 600,
              width: 300,
              color: Colors.white,
            ),
          ),

          Positioned(
            left: 80,
            right: 80,
            top: 100,
            bottom: 100,
            child: Container(
              color: Colors.lightBlueAccent,
              height: 400,
              width: 200,
            ),
          ),
          Positioned(
            left: 109,
            right: 109,
            top: 150,
            bottom: 150,
            child: Container(
              color: Colors.white,
            ),
          ),
          Positioned(
            left: 140,
            right: 140,
            top: 200,
            bottom: 200,
            child: Container(
              color: Colors.lightBlueAccent,
            ),
          ),
          Positioned(
            left: 160,
            right: 160,
            bottom: 230,
            top: 230,
            child: Container(
              color: Colors.white,
              width: 100,
            ),
          ),
          Positioned(
            left: 175,
            right: 175,
            bottom: 260,
            top: 260,
            child: Container(
              color: Colors.lightBlueAccent,
              width: 100,
            ),
          ),Positioned(
            left: 190,
            right: 190,
            bottom: 290,
            top: 290,
            child: Container(
              color: Colors.white,
              width: 100,
            ),
          )
        ],
      ),

    );
  }

}