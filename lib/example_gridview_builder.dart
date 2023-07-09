import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: gridviewbuilder(),
    debugShowCheckedModeBanner: false,
  ));
}

class gridviewbuilder extends StatelessWidget{
  @override
  var images = [("assets/images/icon1.png"),("assets/images/icon2.png"),("assets/images/icon3.png"),("assets/images/icon4.png"),("assets/images/icon5.png"),("assets/images/icon6.png"),("assets/images/icon7.png"),("assets/images/icon8.png"),("assets/images/icon9.png"),("assets/images/icon10.png"),("assets/images/icon11.png"),("assets/images/img2.png"),];
  var textt = ['Home','Email','Alarm','Wallet','Backup','Book','Camera','Person','Print','Phone','Notes','Music'];
  var colours = [Colors.lightGreenAccent,Colors.amber,Colors.yellowAccent,Colors.pink,Colors.grey,Colors.green,Colors.purpleAccent,Colors.greenAccent,Colors.lightGreenAccent,Colors.lightBlue,Colors.red,Colors.grey,];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Grid View'),),
        body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,),
            itemCount: images.length,
            itemBuilder: (context,index) {
              return Card(
                color: colours[index],
                child: Center(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage(images[index]),height: 40,width: 40,),
                      Text(textt[index],style: TextStyle(fontWeight: FontWeight.bold),)

                    ],

                  ),
                ),
              );
            }
            )
    );
  }
}















