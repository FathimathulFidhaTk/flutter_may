import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/eg1.dart';
import 'package:flutter_may/example2.dart';
import 'package:flutter_may/home.dart';
import 'package:flutter_may/listview.dart';


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
  final validkey = GlobalKey<FormState>();
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text('Login ')),
        body: Form(
          key: validkey,
          child: Container(
            decoration: BoxDecoration(
              // border: Border.all(width: 5),
                image:
                    DecorationImage(image: AssetImage("assets/images/pic3.jpg"))),
            child: Column(
                children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Text(
                    'Login Page',
                    style: TextStyle(fontSize: 35, color: Colors.blue,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 100, right: 100),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_rounded),
                      labelText: 'USERNAME',
                      hintText: "USERNAME",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.zero, right: Radius.zero,))
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (email){
                    if(email == null || email.isEmpty){
                      return 'This field is required';
                    }
                  }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22, left: 100, right: 100),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: '*',
                  // decoration: InputDecoration(hintText: "PASSWORD",border:  OutlineInputBorder(borderRadius: BorderRadius.circular(200))),
                  decoration:
                    InputDecoration(
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
                              left: Radius.zero, right: Radius.zero))
                  ),
                    textInputAction: TextInputAction.done,
                    validator: (password){
                      if(password!.isEmpty || password.length < 10 ){
                        return 'Please Enter a valid password';
                      }
                      else{
                        return null;
                      }
                    }

                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 110, right: 110, top: 25),
                  child: Center(
                    child: ElevatedButton(
                        onPressed: () {
                          final valid = validkey.currentState!.validate();
                          if(valid){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                          }else{
                            return null;
                          }
                        },
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
                padding: const EdgeInsets.only(left: 130, right: 30, top: 18),
                child: Row(
                  children: [
                    Text('Does not have account?'),
                    TextButton(onPressed: () {
                      final valid = validkey.currentState!.validate();
                      if(valid){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => newpage()));
                      }else{
                        return null;
                      }
                    }, child: Text("Sign in")
                    )
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
