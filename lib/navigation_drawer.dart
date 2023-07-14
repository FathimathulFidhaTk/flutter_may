import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: nav_drawer(),
    debugShowCheckedModeBanner: false,
  ));
}
class nav_drawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(title: Text('Drawer'),
      backgroundColor: Colors.yellow,),
      drawer:
          Theme(data: Theme.of(context).copyWith(canvasColor: Colors.white),
            child: Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(accountName: Text("Fathimathul Fidha T.K",style: TextStyle(color: Colors.black)), accountEmail: Text("fathimathulfidhatk@gmail.com",style: TextStyle(color: Colors.black),),
                    currentAccountPicture: GestureDetector(onTap: (){
                      print("Welcome");
                    },
                        child: Image(image: AssetImage("assets/images/pic11.png"),)),
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/imgg1.jpg"),fit: BoxFit.fill)),


                  ),
                  ListTile(
                    leading: Icon(Icons.home_sharp),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_forward),
                  ),

                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    trailing: Icon(Icons.arrow_forward),
                  ),

                  ListTile(
                    leading: Icon(Icons.manage_accounts_rounded),
                    title: Text("Account"),
                    trailing: Icon(Icons.arrow_forward),
                  ),

                  ListTile(
                    leading: Icon(Icons.help_outline),
                    title: Text("Help"),
                    trailing: Icon(Icons.arrow_forward),
                  )

                ],
              ),
            ),)
    );
  }

}