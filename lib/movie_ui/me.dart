import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: me_ui(),
    debugShowCheckedModeBanner: false,
  ));
}

class me_ui extends StatefulWidget {
  @override
  State<me_ui> createState() => _me_uiState();
}

class _me_uiState extends State<me_ui> {
  late int tappedIndex;

  @override
  void initState() {
    super.initState();
    tappedIndex = 0;
  }
  var icons = [Icon(Icons.person_outline,color: Colors.white,),
    Icon(Icons.notifications_none,color: Colors.white,),
    Icon(Icons.history,color: Colors.white,),
    Icon(Icons.subscriptions_outlined,color: Colors.white,),
    Icon(Icons.settings,color: Colors.white,),
    Icon(Icons.help_outline_outlined,color: Colors.white,),
    Icon(Icons.logout,color: Colors.white,),];
  var textt = ['My Profile', 'Notifications','History','My Subscription','Settings','Help','Logout'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Container(
          child: ListView(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 55),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/fid.jpeg"),
                    radius: 40,
                  ),
                ),

                Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Fathimathul Fidha Tk',
                        style: TextStyle(fontSize: 18,color: Colors.white),
                      ),
                    )),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "@fathimathulfidha",
                  style: TextStyle(fontSize: 15,color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 4, right: 4,top: 20),
              height: 700,
              width: 800.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.grey[900]
              ),
              child: SingleChildScrollView(
                 child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: textt.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 30,right: 30,top: 25),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: tappedIndex == index ? Colors.grey[800] : Colors.grey[900],
                                  ),
                                    child: ListTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Colors.grey[700],
                                          child: icons[index],
                                        ),
                                        title: Text(textt[index],style: TextStyle(color: Colors.white),),
                                        onTap:(){
                                      setState((){
                                        tappedIndex=index;
                                      });
                                    })),
                              );
                            })
                      ])

                ),
            ),
                    ],
            )
    ))
    );

  }
}
