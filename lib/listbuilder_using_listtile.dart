import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listbuilder(),));
}
class listbuilder extends StatelessWidget{
  var datas = ['Ram','Priya','Avinash','Geetha'];
  var colourss = [500,100,800,400];
  var images = ['assets/images/img2.png','assets/images/img3.png','assets/images/img4.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Page'),),
      body: ListView.builder(
        // itemCount: datas.length,
          itemCount: images.length,
          itemBuilder: (context,index){
           return Card(
             color: Colors.amber[colourss[index]],
             child: ListTile(
               // leading: CircleAvatar(child: Image(image: AssetImage(images[index])),),
               leading: Image(image: AssetImage(images[index])),
               title: Text(datas[index]),
               trailing: Icon(Icons.call),
           )
           );
          }),
    );
  }
}