import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: setting(),
  debugShowCheckedModeBanner: false,));
}
class setting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    bool showpass = true;
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
                        height: 45,
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
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  height: 990,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Stack(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/images/fid.jpeg"),
                              radius: 80,
                            ),
                            Positioned(
                              left: 120,
                                top: 100,
                                child: CircleAvatar(backgroundColor: Colors.blue[700],
                            radius: 20,
                            child: Icon(Icons.mode_edit_outline_outlined,color: Colors.white,),))
                          ],
                        ),
                      ),SizedBox(height: 30.0,),
                      Padding(
                        padding: const EdgeInsets.only(right: 180),
                        child: Text("Your Name",style: TextStyle(color: Colors.grey,fontSize: 16),),
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
                        child: Text("User Name",style: TextStyle(color: Colors.grey,fontSize: 16),),
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
                        padding: const EdgeInsets.only(right: 220),
                        child: Text("Email",style: TextStyle(color: Colors.grey,fontSize: 16),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:EdgeInsets.fromLTRB(5,0,5,0),
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black12))
                          ),
                        ),
                      ),
                      SizedBox(height: 17.0,),
                      Padding(
                        padding: const EdgeInsets.only(right: 190),
                        child: Text("Password",style: TextStyle(color: Colors.grey,fontSize: 16),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                        child: TextFormField(
                          obscureText: showpass,
                          obscuringCharacter: '*',
                          // decoration: InputDecoration(hintText: "PASSWORD",border:  OutlineInputBorder(borderRadius: BorderRadius.circular(200))),
                          decoration:
                          InputDecoration(
                              // suffixIcon: IconButton(onPressed: () {
                              // }, icon:
                              // Icon(showpass == true ? Icons.visibility_off : Icons.visibility)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12))
                          ),
                        ),
                      ),SizedBox(height: 17.0,),
                      Padding(
                        padding: const EdgeInsets.only(right: 180),
                        child: Text("Date of Birth",style: TextStyle(color: Colors.grey,fontSize: 16),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:EdgeInsets.fromLTRB(5,0,5,0),
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black12))
                          ),
                        ),
                      ),SizedBox(height: 17.0,),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Text("Address",style: TextStyle(color: Colors.grey,fontSize: 16),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:EdgeInsets.fromLTRB(50,50,50,50),
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black12))
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Container(
                          height: 48,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[800],
                          ),
                          child: TextButton(onPressed: (){}, child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 15),)))
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