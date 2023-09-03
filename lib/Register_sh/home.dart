import 'package:flutter/material.dart';
import 'package:flutter_may/Register_sh/loginn.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Home11 extends StatefulWidget {
  @override
  State<Home11> createState() => _HomeState11();
}
class _HomeState11 extends State<Home11> {
  late SharedPreferences sh;
  late String username;

  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  void fetchdata() async{
    sh = await SharedPreferences.getInstance();
    setState(() {
      username = sh.getString('uname')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome $username",
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login2()));
            }, child: Text("Log Out")),
          ],
        ),
      ),
    );
  }


}