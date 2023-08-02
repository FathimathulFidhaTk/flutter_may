import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: heroanimation(),
  debugShowCheckedModeBanner: false,));
}
class heroanimation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Anmiantion"),backgroundColor: Colors.lightBlueAccent,),
      body: Container(
        child:
            Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => screen2()));
                },
              child: Hero(
                tag: "Flutterlogo",
                  child: Image(image: AssetImage("assets/images/flutter_logo.png"),height: 300,)
              ),
              ),
            ),
      ),
    );
  }
}

class screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen1"),backgroundColor: Colors.lightBlueAccent,),
      body:   Container(
        child:
        Center(
          child: Hero(
              tag: "Flutterlogo",
              child: Image(image: AssetImage("assets/images/flutter_logo.png"),)
          ),
        ),

      ),

    );

  }

}