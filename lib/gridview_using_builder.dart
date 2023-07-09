import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: gridview(),
  ));
}

class gridview extends StatelessWidget{
  @override
  var names = ['Green','Yellow','Orange','Pink'];
  var colours = [500,400,600,700];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Grid View'),),
        body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemCount: names.length,
            itemBuilder: (context,index) {
          return Card(
            color: Colors.amber[colours[index]],
            child: ListTile(
              leading: Text(names[index]),
            ),
          );
    })
    );
  }
}