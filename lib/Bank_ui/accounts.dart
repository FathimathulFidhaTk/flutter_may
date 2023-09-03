import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: setting(),
    debugShowCheckedModeBanner: false,));
}
class setting extends StatelessWidget{
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
                          title: Center(child: Text("Accounts",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),)),
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

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 35),
                        child: Container(
                          height: 80,
                          width: 168,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15,left: 10),
                                        child: CircleAvatar(
                                          radius: 25,
                                            backgroundColor: Colors.grey[100],
                                            child: Image(height: 26,
                                              image: AssetImage("assets/images/bank8.png"),),)
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15,left: 13),
                                        child: Text('My Balance',style: TextStyle(color: Colors.grey,fontSize: 16),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 15,top: 3),
                                        child: Text("\$12,750",style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 10),
                        child: Container(
                          height: 80,
                          width: 168,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15,left: 15),
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.grey[100],
                                      child: Image(height: 26,
                                        image: AssetImage("assets/images/bank9.png"),),)
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 13,left: 17),
                                        child: Text('Income',style: TextStyle(color: Colors.grey,fontSize: 16),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 3,left: 8),
                                        child: Text("\$5,600",style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 35),
                        child: Container(
                          height: 80,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15,left: 15),
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.grey[100],
                                      child: Image(height: 26,
                                        image: AssetImage("assets/images/bank10.png"),),)
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 13,left: 14),
                                        child: Text('Expense',style: TextStyle(color: Colors.grey,fontSize: 16),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 3,right: 1),
                                        child: Text("\$3,460",style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 10),
                        child: Container(
                          height: 80,
                          width: 168,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15,left: 15),
                                    child:CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.grey[100],
                                      child: Image(height: 26,
                                        image: AssetImage("assets/images/bank11.png"),),)
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 13,left: 10),
                                        child: Text('Total Saving',style: TextStyle(color: Colors.grey,fontSize: 16),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 3,right: 25),
                                        child: Text("\$7,920",style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,right: 180),
                    child: Text('Last Transaction',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 25,right: 25),
                    child: Container(
                      height: 250,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30,left: 22),
                                child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.grey[100]
                                    ),
                                    child: Icon(Icons.notifications_active_outlined,color: Colors.blue[800],size: 25,)),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30,left: 16),
                                    child: Text('Spotify Subscription'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30,top: 5),
                                    child: Text('25 Jan 2021',style: TextStyle(color: Colors.grey),),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25,left: 50),
                                child: Text('-\$150',style: TextStyle(color: Colors.red),),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20,left: 22),
                                    child: Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.grey[100]
                                        ),
                                        child: Icon(Icons.design_services_outlined,color: Colors.blue[800],size: 25,)),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 16),
                                        child: Text('Mobile Service'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2,top: 5),
                                        child: Text('25 Jan 2021',style: TextStyle(color: Colors.grey),),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25,left: 80),
                                    child: Text('-\$340',style: TextStyle(color: Colors.red),),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20,left: 22),
                                    child: Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.grey[100]
                                        ),
                                        child: Icon(Icons.person_outline_outlined,color: Colors.blue[800],size: 25,)),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 16),
                                        child: Text('Emilly Wilson'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 11,top: 5),
                                        child: Text('25 Jan 2021',style: TextStyle(color: Colors.grey),),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25,left: 88),
                                    child: Text('-\$780',style: TextStyle(color: Colors.lightGreen),),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    children: [
                      SizedBox(width: 38.0,),
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
                          padding: const EdgeInsets.only(top: 20,left:35),
                          child: Container(
                            height: 171,
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
                                      padding: const EdgeInsets.only(top: 15,right:10),
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
                            height: 173,
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
                                      padding: const EdgeInsets.only(top: 15,right:10),
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