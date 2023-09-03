import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: overview(),
    debugShowCheckedModeBanner: false,));
}
class overview extends StatelessWidget{
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
                          title: Center(child: Text("Credit Cards",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),)),
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
                  SizedBox(height: 20.0,),
                  Row(
                    children: [
                      SizedBox(width: 30.0,),
                      Text('My Cards',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(width: 190.0,),
                      Text('See All',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left:25),
                          child: Container(
                            height: 175,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue[800]
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18,right:10),
                                      child: Row(
                                        children: [
                                          Text('Balance',style: TextStyle(color: Colors.white),),
                                          SizedBox(width: 150,),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            child: Image(color:Colors.white,
                                              image: AssetImage("assets/images/bank14.png"),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 195),
                                      child: Text('\$5,756',style: TextStyle(color: Colors.white),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18,right: 25),
                                      child: Row(
                                        children: [
                                          Text('CARD HOLDER',style: TextStyle(color: Colors.white),),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 50),
                                            child: Text('VALID THIRU',style: TextStyle(color: Colors.white),),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 60),
                                          child: Text('Eddy Cusuma',style: TextStyle(color: Colors.white),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 60),
                                          child: Text('12/22',style: TextStyle(color: Colors.white),),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 10.0,),
                                    Container(
                                      height: 50,
                                      width: 300,
                                      color: Colors.white24,
                                      child: Row(
                                        children: [
                                          SizedBox(width: 30,),
                                          Text('3778**** ****1234',style: TextStyle(color: Colors.white),),SizedBox(width: 80.0,),
                                          Stack(
                                            children: [
                                              Positioned(
                                                  left:15,
                                                  child:
                                                  CircleAvatar(backgroundColor: Colors.white60,radius: 10,)) ,
                                              SizedBox(width: 50.0,),
                                              Positioned(
                                                  child:
                                                  CircleAvatar(backgroundColor: Colors.white60,radius: 10,))
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                          ),
                        ), Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20),
                          child: Container(
                            height: 174,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue[800]
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18,right:10),
                                      child: Row(
                                        children: [
                                          Text('Balance',style: TextStyle(color: Colors.white),),
                                          SizedBox(width: 150,),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            child: Image(color:Colors.white,
                                              image: AssetImage("assets/images/bank14.png"),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 195),
                                      child: Text('\$5,756',style: TextStyle(color: Colors.white),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18,right: 25),
                                      child: Row(
                                        children: [
                                          Text('CARD HOLDER',style: TextStyle(color: Colors.white),),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 50),
                                            child: Text('VALID THIRU',style: TextStyle(color: Colors.white),),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 60),
                                          child: Text('Eddy Cusuma',style: TextStyle(color: Colors.white),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 60),
                                          child: Text('12/22',style: TextStyle(color: Colors.white),),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 10.0,),
                                    Container(
                                      height: 50,
                                      width: 300,
                                      color: Colors.white24,
                                      child: Row(
                                        children: [
                                          SizedBox(width: 30,),
                                          Text('3778**** ****1234',style: TextStyle(color: Colors.white),),SizedBox(width: 80.0,),
                                          Stack(
                                            children: [
                                              Positioned(
                                                  left:15,
                                                  child:
                                                  CircleAvatar(backgroundColor: Colors.white60,radius: 10,)) ,
                                              SizedBox(width: 50.0,),
                                              Positioned(
                                                  child:
                                                  CircleAvatar(backgroundColor: Colors.white60,radius: 10,))
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ]
        ),

      ),
    );
  }

}