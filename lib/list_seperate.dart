import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listseperate(),));
}
class listseperate extends StatelessWidget{
  var datas = ['Ram','Priya','Avinash','Geetha'];
  var colourss = [500,900,800,400];
  var images = ['assets/images/img2.png','assets/images/img3.png','assets/images/img4.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('List Seperate'),),
    body:ListView.separated(itemBuilder: (context,index){
      return Container(
      color: Colors.yellow[colourss[index]],
    child: Center(child:
    Image(image: AssetImage(images[index]),)),
      );
    },
    separatorBuilder: (context,index){
      return Divider(
      thickness: 8,
      color: Colors.teal[colourss[index]],
      );
    }, itemCount: images.length)

    );
  }
}