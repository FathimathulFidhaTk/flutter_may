import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: services(),
    debugShowCheckedModeBanner: false,));
}
class services extends StatelessWidget{
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
                          leading: Icon(Icons.menu,color: Colors.black,size: 25,),
                          title: Center(child: Text("Services",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                          trailing: CircleAvatar(backgroundImage: AssetImage("assets/images/fid.jpeg"),radius: 18,),
                        ),SizedBox(height: 30.0,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            height: 50,
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
                  SizedBox(width: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 20.0,),
                                CircleAvatar(
                                  backgroundColor: Colors.grey[100],
                                  child: Image(
                                    height: 28,
                                    image: AssetImage("assets/images/bank1.png"),),
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 18,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 17),
                                      child: Text('Life Insurance',style: TextStyle(color: Colors.black,fontSize: 20),),
                                    ),
                                    SizedBox(height: 5.0,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text('Unlimited protection',style: TextStyle(color: Colors.grey),),
                                    )

                                  ],
                                )
                              ],
                            ),
                          ),SizedBox(width: 10,),
                          Container(
                            height: 80,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 20.0,),
                                CircleAvatar(
                                  backgroundColor: Colors.grey[100],
                                  child:  Image(
                                    height: 28,
                                    image: AssetImage("assets/images/bank4.png"),),
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 18,),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text('Shopping',style: TextStyle(color: Colors.black,fontSize: 20),),
                                    ),
                                    SizedBox(height: 5.0,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text('Buy without worries',style: TextStyle(color: Colors.grey),),
                                    ),
                                  ],
                                )

                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 80,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 20.0,),
                                CircleAvatar(
                                  backgroundColor: Colors.grey[100],
                                  child: Icon(Icons.policy),
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 18,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 17),
                                      child: Text('Life Insurance',style: TextStyle(color: Colors.black,fontSize: 20),),
                                    ),
                                    SizedBox(height: 5.0,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text('Unlimited protection',style: TextStyle(color: Colors.grey),),
                                    ),
                                  ],
                                )

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 25,right: 170),
                    child: Text('Bank Services List',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),),
                  ),
                  SizedBox(width: 5,height: 20.0,),
                  Container(
                    height: 75,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15.0,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[100]
                          ),
                            child: Icon(Icons.monetization_on,color: Colors.blue[800],size: 25,)),
                        Column(
                          children: [
                            SizedBox(height: 18,),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text('Business loans',style: TextStyle(color: Colors.black,fontSize: 16),),
                            ),
                            SizedBox(height: 5.0,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text('it is a long established',style: TextStyle(color: Colors.grey),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text('View Details',style: TextStyle(color: Colors.blue[900]),),
                        )
                      ],
                    ),
                  ),
                 SizedBox(width: 5,height: 10.0,),
                  Container(
                    height: 75,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15.0,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[100]
                          ),
                            child: Icon(Icons.account_balance_wallet,color: Colors.blue[800],size: 25,)),
                        Column(
                          children: [
                            SizedBox(height: 18,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text('Checking accounts',style: TextStyle(color: Colors.black,fontSize: 16),),
                            ),
                            SizedBox(height: 5.0,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text('it is a long established',style: TextStyle(color: Colors.grey),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text('View Details',style: TextStyle(color: Colors.blue[900]),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 5,height: 10.0,),
                  Container(
                    height: 75,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15.0,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[100]
                          ),
                            child: Icon(Icons.savings,size: 25,color: Colors.blue[800],)),
                        Column(
                          children: [
                            SizedBox(height: 18,),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text('Savings accounts',style: TextStyle(color: Colors.black,fontSize: 16),),
                            ),
                            SizedBox(height: 5.0,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text('it is a long established',style: TextStyle(color: Colors.grey),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text('View Details',style: TextStyle(color: Colors.blue[900]),),
                        )
                      ],
                    ),
                  ), SizedBox(width: 5,height: 10.0,),
                  Container(
                    height: 75,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15.0,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[100]
                          ),
                            child: Icon(Icons.monetization_on,color: Colors.blue[800],size: 25,)),
                        Column(
                          children: [
                            SizedBox(height: 18,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text('Debits and credit card',style: TextStyle(color: Colors.black,fontSize: 16),),
                            ),
                            SizedBox(height: 5.0,),
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Text('it is a long established',style: TextStyle(color: Colors.grey),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('View Details',style: TextStyle(color: Colors.blue[900]),),
                        )
                      ],
                    ),
                  ), SizedBox(width: 5,height: 10.0,),
                  Container(
                    height: 75,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15.0,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[100]
                          ),
                            child: Icon(Icons.policy,color: Colors.blue[800],size: 25,)),
                        Column(
                          children: [
                            SizedBox(height: 18,),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Text('Life Insurance',style: TextStyle(color: Colors.black,fontSize: 16),),
                            ),
                            SizedBox(height: 5.0,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('it is a long established',style: TextStyle(color: Colors.grey),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text('View Details',style: TextStyle(color: Colors.blue[900]),),
                        )
                      ],
                    ),
                  ),SizedBox(width: 5,height: 10.0,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      height: 75,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 15.0,),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey[100]
                              ),
                              child: Icon(Icons.monetization_on,color: Colors.blue[800],size: 25,)),
                          Column(
                            children: [
                              SizedBox(height: 18,),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text('Business loans',style: TextStyle(color: Colors.black,fontSize: 16),),
                              ),
                              SizedBox(height: 5.0,),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text('it is a long established',style: TextStyle(color: Colors.grey),),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Text('View Details',style: TextStyle(color: Colors.blue[900]),),
                          )
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