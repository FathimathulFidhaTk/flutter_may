import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/grid_view.dart';
import 'package:flutter_may/gridview_custom.dart';
import 'package:flutter_may/list_custom.dart';
import 'package:flutter_may/list_seperate.dart';
import 'package:flutter_may/listbuilder_using_listtile.dart';

void main(){
  runApp(MaterialApp(
    home: appbarr(),
    debugShowCheckedModeBanner: false,
  ));
}
class appbarr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('WhatsApp'),
          actions: [
            Icon(Icons.photo_camera_outlined),
           SizedBox(width: 20,),
           Icon(Icons.search),

           PopupMenuButton(itemBuilder:(context){
             return [
               PopupMenuItem(child: Text('New group')),
               PopupMenuItem(child: Text('New broadcast')),
               PopupMenuItem(child: Text('Linked devices')),
               PopupMenuItem(child: Text('Starred messages')),
               PopupMenuItem(child: Text('Payments')),
               PopupMenuItem(child: Text('Settings')),

             ];
           }
           )
          ],
          bottom: TabBar(
            tabs: [
              Icon(Icons.groups),
              Text("Chats"),
              Text("Status"),
              Text("Calls"),
            ],
          ),
        ) ,
        body:TabBarView(
          children: [
            Container(
              height: 100,
              width: 40,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    //groups
                    Container
                      (
                        child: Image(
                          image: AssetImage("assets/images/icon12.png"),)
                  ),
                    SizedBox(height: 18,),
                    Text("Stay connected with a community",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),),
                    SizedBox(height: 15,width: 15,),
                    Text("Communities bring members together in topic based "),
                          SizedBox(height: 5,),
                          Text("groups,and make it easy to get admin announcements."),
                          SizedBox(height: 5,),
                          Text("Any community you're added to will appear "),
                    SizedBox(height: 5,),
                    Row(
                      children: [SizedBox(width: 200,),
                        Text('here.'),
                    Text('Learn more',style: TextStyle(color: Colors.green),)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      ),
                        height: 40,
                        width: 290,
                        child: TextButton(onPressed: (){}, child: Text('Start your community',style: TextStyle(color: Colors.white),))
                      )
                  ],
                ),
              ),
            ),


//...........chats


            ListView(
              children: [
                SizedBox(height: 15,),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/fid.jpeg"),
                    // child: Image(image: AssetImage("assets/images/fid.jpeg"),)
                  ),
                  title: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 280),
                        child: Text('Fidha',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 3.5,),
                      Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Text('Heyy..!!, Whatsppp.......!!!'),
                      ),
                      SizedBox(height: 5,),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text('9:54 pm',style: TextStyle(color: Colors.green),),
                      SizedBox(height: 6),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 10,
                          child: Text('1',style: TextStyle(color: Colors.white,fontSize: 12),),
                        ),
                      )
                    ],
                  ),
                ),


                Divider(color: Colors.white10,),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/person.png"),
                    backgroundColor: Colors.black12,
                    // child: Image(image: AssetImage("assets/images/fid.jpeg"),)
                  ),
                  title: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 298),
                        child: Text('Eva',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 3.5,),
                      Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: Text('How was your studies going???'),
                      ),
                      SizedBox(height: 5,),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text('7:15 pm',style: TextStyle(color: Colors.green),),
                      SizedBox(height: 6),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 10,
                          child: Text('3',style: TextStyle(color: Colors.white,fontSize: 12),),
                        ),
                      )
                    ],
                  ),
                ),

                Divider(color: Colors.white10,),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/person.png"),
                    backgroundColor: Colors.black12,
                    // child: Image(image: AssetImage("assets/images/fid.jpeg"),)
                  ),
                  title: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 280),
                        child: Text('Geetha',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 3.5,),
                      Padding(
                        padding: const EdgeInsets.only(right: 225),
                        child: Text('How are you??'),
                      ),
                      SizedBox(height: 5,),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text('6:55 pm',style: TextStyle(color: Colors.green),),
                      SizedBox(height: 6),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 10,
                          child: Text('2',style: TextStyle(color: Colors.white,fontSize: 12),),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),

            list_custom(),

        //.....Callsss

        ListView(
          children: [
            SizedBox(height: 10,),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                  radius: 30,
                  child: Icon(Icons.link_rounded)),
              title: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text('Create call link'),
                  ),SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(right: 135),
                    child: Text('Share a link for your WhatsApp call',style: TextStyle(color: Colors.grey),),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25,top: 10),
              child: Text("Recent",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 15,),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/fid.jpeg"),
                  radius: 30,
                  // child: Image(image: AssetImage("assets/images/fid.jpeg"),)
                ),
              title: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 310),
                    child: Text('Fidha'),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(Icons.call_made_sharp,color: Colors.lightGreenAccent,),
                      SizedBox(width: 5,),
                      Text("Yesterday, 11:56 pm"),
                    ],
                  )
                ],
              ),
              trailing: Icon(Icons.videocam),
            ),


            Divider(color: Colors.white10,),
            ListTile(
              leading:  CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/person.png"),
                backgroundColor: Colors.black12,
                // child: Image(image: AssetImage("assets/images/fid.jpeg"),)
              ),
              title: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 310),
                    child: Text('Eva'),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(Icons.call_received_outlined,color: Colors.redAccent,),
                      SizedBox(width: 5,),
                      Text("Yesterday, 8:26 pm"),
                    ],
                  )
                ],
              ),
              trailing: Icon(Icons.videocam),
            )
          ],
        )
          ],
        ),
      ),
    );
  }
}