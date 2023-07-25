import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: named_routes(),
    routes: {
      'first' : (context) => firstpage(),
      'second' : (context) => secondpage(),

    },
  ));
}
class named_routes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Named Routes'),
      ),
      body: ListView(
        children:[ Column(
            children: [
              SizedBox(height: 15,),
             ElevatedButton(onPressed: (){
               Navigator.pushNamed(context, 'first');
             }, child: Text('Move to first page')),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
               Navigator.pushNamed(context, 'second');
             }, child: Text('Move to second page')),
            ],
          ),
    ]
      ),
    );
  }
}

class firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(child: Text("Welcome to First Page")),
        )
    );
  }
}
class secondpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Welcome to second Page")),
      )
    );
  }

}
