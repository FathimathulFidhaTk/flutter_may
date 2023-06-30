import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_may/home.dart';

import 'main.dart';

void main(){
  runApp(MaterialApp(home: Myapp(),));
}
class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => myappstate();
}
class myappstate extends State{
  @override
  void initState(){
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(200.0),
        child: Center(
          child: Container(
            child: Center(
              child: Column(
                children: [
                    Center(child: Center(child: Image(image: AssetImage("assets/images/img4.png")))),
                  Center(
                    child: Text("Music",
                    style: TextStyle(fontStyle: FontStyle.italic),),
                  )
                ],
              ),
            ),

          ),
        ),
      ),
    );

  }


}