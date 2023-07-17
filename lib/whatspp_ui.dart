import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_may/home.dart';
import 'package:flutter_may/whatsapp_appbar.dart';

import 'main.dart';

void main(){
  runApp(MaterialApp(home: Myapp(),
  debugShowCheckedModeBanner: false,
  )
  );
}
class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => myappstate();
}
class myappstate extends State{
  @override
  void initState(){
    Timer(Duration(seconds:9), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => appbarr()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 190,top: 250),
          child: Image(image: AssetImage("assets/images/whtsp.png"),height: 100,),
        ),

      ),
    );

  }


}