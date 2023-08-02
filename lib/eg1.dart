import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_may/home.dart';
import 'package:lottie/lottie.dart';

import 'main.dart';
import 'onboarding.dart';

void main(){
  runApp(MaterialApp(home: Myapp(),
  debugShowCheckedModeBanner: false,));
}
class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => myappstate();
}
class myappstate extends State{
  @override
  void initState(){
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHome()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset('assets/lottiefiles/foodd7.json',),


          Text('Food Delivery',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w600,
            ),),



        ],
      ),
    );

  }


}