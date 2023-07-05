import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: list_custom() ,
  ));
}
class list_custom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Custom"),),
      body: ListView.custom(childrenDelegate: SliverChildListDelegate([
        Card(
    child: ListTile(
    leading: Icon(Icons.person),
      title: Text("Fidha"),
      trailing: Icon(Icons.add),
    ),
    ) ,
        Card(
    child: ListTile(
    leading: Icon(Icons.person),
      title: Text("Laya"),
      trailing: Icon(Icons.add),
    ),
    ),
        Card(
    child: ListTile(
    leading: Icon(Icons.person),
      title: Text("Rahul"),
      trailing: Icon(Icons.add),
    ),
    ),
        Card(
    child: ListTile(
    leading: Icon(Icons.person),
      title: Text("Priya"),
      trailing: Icon(Icons.add),
    ),
    )
    ])

    )

    );
  }

}