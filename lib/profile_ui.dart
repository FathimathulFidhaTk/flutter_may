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
          child: ListView(
              children: [
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
                      padding: const EdgeInsets.only(left: 120, top: 25),
                      child: Container(
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/facebook.png"),
                              radius: 25,
                              backgroundColor: Colors.white24,
                            ), SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/google.png"),
                              backgroundColor: Colors.white24,
                            ), SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/twitter.png"),
                              backgroundColor: Colors.white24,
                            ), SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/linked.png"),
                              backgroundColor: Colors.white24,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Fathimathul Fidha Tk", style: TextStyle(
                          fontSize: 21, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text('@Flutter Devloper'),
                    ),
                    Center(child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text('Mobile App Developer and Open ',
                        style: TextStyle(fontSize: 19),),
                    )),
                    SizedBox(height: 10,),
                    Text("source enthusiastic", style: TextStyle(fontSize: 19),)
                  ],
                ),
                SizedBox(height: 23,),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  height: 250,
                  child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[300]
                            ),
                            child: ListTile(
                              leading: Icon(Icons.privacy_tip_outlined),
                              title: Text('Privacy'),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[300]
                            ),
                            child: ListTile(
                              leading: Icon(Icons.history),
                              title: Text('Purchase History'),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[300]
                            ),
                            child: ListTile(
                              leading: Icon(Icons.help_outline),
                              title: Text('Help & Support'),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[300]
                            ),
                            child: ListTile(
                              leading: Icon(Icons.settings),
                              title: Text('Settings'),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[300]
                            ),
                            child: ListTile(
                              leading: Icon(Icons.person_add_rounded),
                              title: Text('Invite Friend'),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      )

                  ),
                ),

              ]
          ),
        ),
      ),

    );
  }

}