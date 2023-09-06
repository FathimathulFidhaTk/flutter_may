import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: profile_ui(),
    debugShowCheckedModeBanner: false,
  ));
}

class profile_ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Container(
          child: ListView(children: [
            ListTile(
              leading: Icon(Icons.arrow_back),
              trailing: Icon(Icons.menu_open_outlined),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/fid.jpeg"),
                    radius: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25,left: 100,right: 50),
                  child: Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/facebook.png"),
                          radius: 25,
                          backgroundColor: Colors.white24,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/google.png"),
                          backgroundColor: Colors.white24,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/twitter.png"),
                          backgroundColor: Colors.white24,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/linked.png"),
                          backgroundColor: Colors.white24,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Fathimathul Fidha Tk",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('@Flutter Devloper'),
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Mobile App Developer and Open ',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "source enthusiastic",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 250,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey[200]),
                    child: ListTile(
                      leading: Icon(
                        Icons.privacy_tip_outlined,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Privacy',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.grey[200]),
                    child: ListTile(
                      leading: Icon(
                        Icons.history,
                        color: Colors.black,
                      ),
                      title: Text('Purchase History',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]),
                    child: ListTile(
                      leading: Icon(
                        Icons.help_outline,
                        color: Colors.black,
                      ),
                      title: Text('Help & Support',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]),
                    child: ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                      title: Text('Settings',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]),
                    child: ListTile(
                      leading: Icon(
                        Icons.person_add_rounded,
                        color: Colors.black,
                      ),
                      title: Text('Invite Friend',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ]),
        ),
      ),
    );
  }
}
