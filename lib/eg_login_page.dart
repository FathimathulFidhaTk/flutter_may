import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: loginpage(),
  ));
}

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text('Login ')),
        body: Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/images/pic3.jpg"))),
          child: Column(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Text(
                  'Login Page',
                  style: TextStyle(fontSize: 35, color: Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 100, right: 100),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle_rounded),
                    labelText: 'USERNAME',
                    hintText: "USERNAME",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.zero, right: Radius.zero))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, left: 100, right: 100),
              child: TextField(
                obscureText: showpass,
                obscuringCharacter: '*',
                // decoration: InputDecoration(hintText: "PASSWORD",border:  OutlineInputBorder(borderRadius: BorderRadius.circular(200))),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      if(showpass){
                        showpass = false;
                      }
                      else{
                        showpass = true;
                      }
                    });
                  }, icon:
                  Icon(showpass == true ? Icons.visibility_off : Icons.visibility)),
                  labelText: 'PASSWORD',
                    hintText: "PASSWORD",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.zero, right: Radius.zero))),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 160, right: 160, top: 25),
                child: Center(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        "LOGIN",
                      )),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(30, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 138, right: 100, top: 18),
              child: Row(
                children: [
                  Text('Does not have account?'),
                  TextButton(onPressed: () {}, child: Text("Sign in"))
                ],
              ),
            )
          ]),
        ));
  }
}
