import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: preference(),
    debugShowCheckedModeBanner: false,));
}
class preference extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
            children:[
              Column(
                children: [
                  Container(
                    height: 160,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 10.0,),
                        ListTile(
                          leading: Icon(Icons.menu,color: Colors.black,),
                          title: Center(child: Text("Setting",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),)),
                          trailing: CircleAvatar(backgroundImage: AssetImage("assets/images/fid.jpeg"),radius: 18,),
                        ),SizedBox(height: 30.0,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[100]
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(Icons.search,color: Colors.grey,),
                                  ),
                                  label: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Search for something",style: TextStyle(color: Colors.grey),),
                                  )

                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                    child: Container(
                      height: 610,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Column(
                          children: [
                          Container(
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: CustomScrollView(
                            slivers: [
                              SliverAppBar(
                                backgroundColor: Colors.white,
                                bottom: PreferredSize(
                                  preferredSize: Size.fromHeight(5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100)
                                    ),
                                    child: TabBar(
                                      unselectedLabelColor: Colors.black54,
                                      labelColor: Colors.blue[900],
                                      indicatorColor: Colors.blue[900],
                                      tabs: [
                                        Tab(child:
                                        Text('Edit Profile',style: TextStyle(fontSize: 16),),
                                        ),Tab(child:
                                        Text('Preference',style: TextStyle(fontSize: 16),),
                                        ),Tab(child:
                                        Text('Security',style: TextStyle(fontSize: 16),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                          SizedBox(height: 30.0,),
                          Padding(
                            padding: const EdgeInsets.only(right: 195),
                            child: Text("Currency",style: TextStyle(color: Colors.grey,fontSize: 18),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding:EdgeInsets.fromLTRB(10,0,10,0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black12))
                              ),
                            ),
                          ),SizedBox(height: 17.0,),
                          Padding(
                            padding: const EdgeInsets.only(right: 180),
                            child: Text("Time Zone",style: TextStyle(color: Colors.grey,fontSize: 18),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding:EdgeInsets.fromLTRB(10,0,10,0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black12))
                              ),
                            ),
                          ),SizedBox(height: 30.0,),
                          Padding(
                            padding: const EdgeInsets.only(right: 170),
                            child: Text('Notification',style: TextStyle(color: Colors.black,fontSize: 20),),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 25.0,),
                                  Icon(Icons.toggle_on_rounded,color: Colors.green,size: 55,),
                                  SizedBox(width: 10,),
                                  Text('I send or recieve digita currency',style: TextStyle(color: Colors.grey),)
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 25.0,),
                                  Icon(Icons.toggle_on_rounded,color: Colors.black12,size: 55,),
                                  SizedBox(width: 10,),
                                  Text('I recieve merchant order',style: TextStyle(color: Colors.grey),)
                                ],
                              ),  Row(
                                children: [
                                  SizedBox(width: 25.0,),
                                  Icon(Icons.toggle_off_rounded,color: Colors.green,size: 55,),
                                  SizedBox(width: 10,),
                                  Text('There are recommendation for my ',style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 92,),
                                child: Text('account',style: TextStyle(color: Colors.grey),),
                              ),
                              SizedBox(height: 20.0,),
                              Container(
                                height: 45,
                                width: 285.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue[900],
                                ),
                                  child: TextButton(onPressed: (){}, child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 15),)))
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ]
        ),

      ),
    );
  }

}