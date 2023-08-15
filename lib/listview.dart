import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: example1(),
  ));
}
class example1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Page',style: TextStyle(fontFamily: "Poppins"),),),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Fidha'),
              trailing: Icon(Icons.call),
            ),
          ) ,
          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Laya'),
              // subtitle: Text('1245987036'),
              trailing: Icon(Icons.call),
            ),
          ) ,
          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Ram'),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Raj'),
              trailing: Icon(Icons.call),
            ),
          )
        ],
      )
    );
  }

}