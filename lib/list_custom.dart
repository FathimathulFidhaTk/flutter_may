import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: list_custom() ,
  ));
}
class list_custom extends StatelessWidget{
  @override
  var list = ['Apple','orange','Mango','Pineapple','Strawberry'];
  var colourss = [500,100,800,400,200,300];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Custom"),),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index){
        return Card(
          color: Colors.yellow[colourss[index]],
          child: ListTile(
            leading: Text(list[index]),
          ),
        );
      }, childCount: list.length,
      )),
    );
  }
}