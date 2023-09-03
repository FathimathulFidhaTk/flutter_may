import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/shared_preference/sharedhome.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: login_page(),
  debugShowCheckedModeBanner: false
    ,));
}
class login_page extends StatefulWidget{
  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final username_controller = TextEditingController();
  final pass_controller = TextEditingController();
  late SharedPreferences sh;
  late bool newuser;

   @override
   void initState(){
     check_already_user_login();
     super.initState();
   }

   void check_already_user_login() async {
     sh = await SharedPreferences.getInstance()!;
     newuser = sh.getBool('newuser') ?? true;
     if(newuser == false){
       Navigator.of(context)
           .push(MaterialPageRoute(builder: (context) => SharedHome()));     }

}

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('Shared pref Login'),),
       body: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 40,right: 40,top: 80),
             child: TextField(
               controller: username_controller,
               decoration: InputDecoration(
                 hintText: 'username',border: OutlineInputBorder(),
               ),
             ),
           ),
           SizedBox(height: 30.0,),
           Padding(
             padding: const EdgeInsets.only(left:40,right: 40),
             child: TextField(
               controller: pass_controller,
               decoration: InputDecoration(
                 hintText: 'password',border: OutlineInputBorder(),
               ),
             ),
           ),
           SizedBox(height: 30.0,),

           ElevatedButton(
              onPressed: () async {
              sh = await SharedPreferences.getInstance()!;
              String username = username_controller.text;
              String password = pass_controller.text;

              if (username != "" && password != "") {
              sh.setString("uname", username);
              sh.setBool('newuser', false);
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SharedHome()));
              }
              },
              child:  Text("Login"))

         ],
       ),

     );

  }
}