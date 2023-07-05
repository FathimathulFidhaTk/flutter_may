import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/listview.dart';

void main(){
  runApp(MaterialApp(home: newpage(),
  debugShowCheckedModeBanner: false,));
}

class newpage extends StatefulWidget {
  @override
  State<newpage> createState() => _newpageState();
}

class _newpageState extends State<newpage> {
  final validkey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirm_pass = TextEditingController();
  bool valid = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign in')),
      body: Form(
        key: validkey,
        child: Container(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text('Create a new Account',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, right: 65, top: 65),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.drive_file_rename_outline),
                      labelText: "username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35))
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
                padding: const EdgeInsets.only(top: 30, left: 65, right: 65),
                child: TextFormField(
                  controller: _pass,
                  obscureText: valid,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      labelText: "Password",
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(valid){
                            valid = false;
                          }
                          else{
                            valid = true;
                          }
                        });

                      }, icon:
                      Icon(valid == true ? Icons.visibility_off : Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35))
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
                padding: const EdgeInsets.only(top: 30, left: 65, right: 65),
                child: TextFormField(
                  controller: _confirm_pass ,
                  obscureText: valid,
                  obscuringCharacter: "*",
                  validator: (val){
                    if(val!.isEmpty)
                      return 'Empty';
                    if(val != _pass.text)
                      return 'password does not match';
                    return null;
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Confirmation Password",
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(valid){
                            valid = false;
                          }
                          else{
                            valid = true;
                          }
                        });

                      }, icon:
                      Icon(valid == true ? Icons.visibility_off : Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35))
                  ),


                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40,left: 50,right: 50),
                  child: ElevatedButton(
                      onPressed: () {
                        final valid = validkey.currentState!.validate();
                        if(valid){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => example1()));
                        }else{
                          return null;
                        }
                      }, child: const Text('Register'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(125,50)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 70,right: 10),
                child: Row(
                  children: [
                    Text('If You Created New Acoount You can directly'),
                    TextButton(onPressed: (){
                    }, child: Text('LOGIN'))
                  ],
                ),
              ),

            ],

          ),
        ),
      ),
    );
  }
}