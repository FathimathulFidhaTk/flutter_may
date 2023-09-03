import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_may/home.dart';
import 'package:flutter_may/whatspp_ui/whatsapp_appbar.dart';

import '../main.dart';

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
    Timer(Duration(seconds:8), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => appbarr()));
    });
  }
  Widget build(BuildContext context) {
    var mQuerry = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: mQuerry.height * 2.2,
          width: mQuerry.width * 0.2,
          child: Image(image: AssetImage("assets/images/whtsp.png"),height: 100,),

        ),
      ),
    );

  }


}