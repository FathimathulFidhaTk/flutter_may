import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: loans(),
    debugShowCheckedModeBanner: false,));
}
class loans extends StatelessWidget{
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
                          leading: Icon(Icons.menu,color: Colors.black,size: 28,),
                          title: Center(child: Text("Loans",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),
                          trailing: CircleAvatar(backgroundImage: AssetImage("assets/images/fid.jpeg"),radius: 18,),
                        ),SizedBox(height: 30.0,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15,bottom: 13),
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
                            width: 210,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 15.0,),
                                CircleAvatar(
                                  backgroundColor: Colors.grey[100],
                                  child: Image(height: 30,
                                    image: AssetImage("assets/images/bank2.png"),),
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 18,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 17),
                                      child: Text('Personal Loans',style: TextStyle(color: Colors.grey,fontSize: 16)),
                                    ),
                                    SizedBox(height: 5.0,),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 35),
                                      child: Text('\$50,000',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold),),
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
                                  child:Image(height: 24,
                                    image: AssetImage("assets/images/bank3.png"),),
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 18,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text('Corprative loans',style: TextStyle(color: Colors.grey,fontSize: 16)),
                                    ),
                                    SizedBox(height: 5.0,),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 35),
                                      child: Text('\$10,000',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold),),
                                    )
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
                    padding: const EdgeInsets.only(top: 25,right: 120),
                    child: Text('Active Loans Overview',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      height: 660,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30,left: 30),
                            child: Row(
                              children: [
                                Text('Loan Money',style: TextStyle(color: Colors.grey),),
                                SizedBox(width: 30),
                                Text('Left to repay',style: TextStyle(color: Colors.grey)),
                                SizedBox(width: 40,),
                                Text('Repay',style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 20,right: 20),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 30),
                            child: Row(
                              children: [
                                Text('\$100,000'),
                                SizedBox(width: 55,),
                                Text('\$40,500'),
                                SizedBox(width: 35,),
                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.blueGrey)
                                  ),
                                  child: Center(child: Text("Repay",style: TextStyle(color: Colors.blue[900]),)),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 30),
                            child: Row(
                              children: [
                                Text('\$500,000'),
                                SizedBox(width: 55,),
                                Text('\$250,500'),
                                SizedBox(width: 25,),
                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.blueGrey)
                                  ),
                                  child: Center(child: Text("Repay",style: TextStyle(color: Colors.blue[900]),)),
                                )
                              ],
                            ),
                          ), Padding(
                            padding: const EdgeInsets.only(top: 8,left: 20,right: 20),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        Padding(
                            padding: const EdgeInsets.only(top: 10,left: 30),
                            child: Row(
                              children: [
                                Text('\$900,000'),
                                SizedBox(width: 55,),
                                Text('\$40,500'),
                                SizedBox(width: 30,),
                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.blueGrey)
                                  ),
                                  child: Center(child: Text("Repay",style: TextStyle(color: Colors.blue[900]),)),
                                )
                              ],
                            ),
                          ), Padding(
                            padding: const EdgeInsets.only(top: 8,left: 20,right: 20),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                            Padding(
                            padding: const EdgeInsets.only(top: 10,left: 30),
                            child: Row(
                              children: [
                                Text('\$50,000'),
                                SizedBox(width: 60,),
                                Text('\$40,500'),
                                SizedBox(width: 35,),
                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.blueGrey)
                                  ),
                                  child: Center(child: Text("Repay",style: TextStyle(color: Colors.blue[900]),)),
                                )
                              ],
                            ),
                          ), Padding(
                            padding: const EdgeInsets.only(top: 8,left: 20,right: 20),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 30),
                            child: Row(
                              children: [
                                Text('\$50,000'),
                                SizedBox(width: 60),
                                Text('\$40,500'),
                                SizedBox(width: 35,),
                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.blueGrey)
                                  ),
                                  child: Center(child: Text("Repay",style: TextStyle(color: Colors.blue[900]),)),
                                )
                              ],
                            ),
                          ), Padding(
                            padding: const EdgeInsets.only(top: 8,left: 20,right: 20),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 30),
                            child: Row(
                              children: [
                                Text('\$80,000'),
                                SizedBox(width: 60,),
                                Text('\$25,500'),
                                SizedBox(width: 35,),
                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.blueGrey)
                                  ),
                                  child: Center(child: Text("Repay",style: TextStyle(color: Colors.blue[900]),)),
                                )
                              ],
                            ),
                          ), Padding(
                            padding: const EdgeInsets.only(top: 8,left: 20,right: 20),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 30),
                            child: Row(
                              children: [
                                Text('\$12,000'),
                                SizedBox(width: 60,),
                                Text('\$5,500'),
                                SizedBox(width: 40,),
                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.blueGrey)
                                  ),
                                  child: Center(child: Text("Repay",style: TextStyle(color: Colors.blue[900]),)),
                                )
                              ],
                            ),
                          ), Padding(
                            padding: const EdgeInsets.only(top: 8,left: 20,right: 20),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                      Padding(
                            padding: const EdgeInsets.only(top: 10,left: 30),
                            child: Row(
                              children: [
                                Text('\$160,000'),
                                SizedBox(width: 50,),
                                Text('\$100,800'),
                                SizedBox(width: 26,),
                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.blueGrey)
                                  ),
                                  child: Center(child: Text("Repay",style: TextStyle(color: Colors.blue[900]),)),
                                )
                              ],
                            ),
                          ), Padding(
                            padding: const EdgeInsets.only(top: 8,left: 20,right: 20),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,right: 230),
                            child: Text('Total',style: TextStyle(color: Colors.red),),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30,top: 8),
                                child: Text('\$125,0000',style: TextStyle(color: Colors.red),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40,top: 8),
                                child: Text('\$750,000',style: TextStyle(color: Colors.red),),
                              ),
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