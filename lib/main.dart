import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "MY APP",
          style: TextStyle(color: Colors.cyan),
        ),
      ),
      body: Container(
        // decoration: BoxDecoration(color: Colors.blueAccent),
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwqgzXouYQ0teS45h_cxa1G2YatGFrrCQO7QEC7iCr3jGKEkHaZjpZJiNfKEdVlQ-p_Nc&usqp=CAU"),fit: BoxFit.fill)),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text("My First Flutter Application",
                      style: TextStyle(
                          color: Colors.cyan,
                          fontStyle: FontStyle.italic,
                          fontSize: 30))),
              // Icon(Icons.ad_units_rounded,size: 60,color: Colors.cyan,),
              // Image(height:150 , width:150 ,image: NetworkImage("https://images.pexels.com/photos/399160/pexels-photo-399160.jpeg?cs=srgb&dl=pexels-lumn-399160.jpg&fm=jpg")),
              Image(image: AssetImage("assets/images/img1.png"),fit: BoxFit.fill,),
            ],
          ),
        ),
      ),
    );
  }
}

