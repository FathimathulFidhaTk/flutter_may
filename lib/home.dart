import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Homepage()));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.yellow,
      title: Text(
        "My Music",
        style: TextStyle(color: Colors.yellowAccent),
      ),
    ),
      body: Center(child: Text("Home"),
      ),
    );
  }
}