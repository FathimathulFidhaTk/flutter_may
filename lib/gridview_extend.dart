import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridview_extend(),
    debugShowCheckedModeBanner: false,
  ));
}

class gridview_extend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 100,
        children: List.generate(42, (index) {
          return Card(
            child: Text('HELLO'),
          );
        }),
      ),
    );
  }
}
