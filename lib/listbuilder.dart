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
         child: Container(
           color: Colors.yellow[colourss[index]],

           // child: Center(child: Text(datas[index])),
           child: Center(child:
           Image(image: AssetImage(images[index]),)),
         ),
       );
     }),
   );
  }

}