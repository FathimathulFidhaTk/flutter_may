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
            left: 50,
            right: 50,
            top: 50,
            bottom: 50,
            child: Container(
              height: 600,
              width: 400,
              color: Colors.white,
            ),
          ),

          Positioned(
            left: 100,
            right: 100,
            top: 100,
            bottom: 100,
            child: Container(
              color: Colors.lightBlueAccent,
              height: 400,
              width: 200,
            ),
          ),
          Positioned(
            left: 150,
            right: 150,
            top: 150,
            bottom: 150,
            child: Container(
              color: Colors.white,
            ),
          ),
          Positioned(
            left: 200,
            right: 200,
            top: 200,
            bottom: 200,
            child: Container(
              color: Colors.lightBlueAccent,
            ),
          ),
          Positioned(
            left: 225,
            right: 225,
            bottom: 230,
            top: 230,
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