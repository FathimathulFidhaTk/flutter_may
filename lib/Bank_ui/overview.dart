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
                          title: Center(child: Text("Overview",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),)),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 30,right: 170),
                    child: Text('Recent Transaction',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 20,left: 15,right: 15),
                    child: Container(
                      height: 230,
                      width: 320,
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
                                    child: Icon(Icons.credit_card,color: Colors.blue[800],size: 25,)),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30,left: 16),
                                    child: Text('Deposit from my'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 5),
                                    child: Text('28 January 2021',style: TextStyle(color: Colors.grey),),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25,left: 80),
                                child: Text('-\$850',style: TextStyle(color: Colors.red),),
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
                                        child: Icon(Icons.paypal,color: Colors.blue[800],size: 25,)),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 10),
                                        child: Text('Deposit Paypal'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 5),
                                        child: Text('25 January 2021',style: TextStyle(color: Colors.grey),),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25,left: 70),
                                    child: Text('+\$2,500',style: TextStyle(color: Colors.lightGreen),),
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
                                        padding: const EdgeInsets.only(top: 20,right: 8),
                                        child: Text('Jemi Wilson'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 18,top: 5),
                                        child: Text('21 January 2021',style: TextStyle(color: Colors.grey),),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25,left: 70),
                                    child: Text('-\$5,400',style: TextStyle(color: Colors.lightGreen),),
                                  )
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
            ]
        ),

      ),
    );
  }

}