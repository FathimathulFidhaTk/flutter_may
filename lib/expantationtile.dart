import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: expansion(),
    debugShowCheckedModeBanner: false,
  ));
}
class expansion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded Tile"),),
      body: ExpansionTile(
        title: Text('Colors'),
        subtitle: Text('Expanded This Tile'),
        children: [
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.yellowAccent,),
            title: Text('Yellow'),
          ),ListTile(
            leading: CircleAvatar(backgroundColor: Colors.greenAccent,),
            title: Text('Greeen'),
          ),ListTile(
            leading: CircleAvatar(backgroundColor: Colors.orange,),
            title: Text('Orange'),
          ),ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue,),
            title: Text('Blue'),
          ),ListTile(
            leading: CircleAvatar(backgroundColor: Colors.black,),
            title: Text('Black'),
          ),

        ],
      ),

    );
  }

}