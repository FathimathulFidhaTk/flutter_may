import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: booking_ui(),
    debugShowCheckedModeBanner: false,
  ));
}

class booking_ui extends StatelessWidget {
  @override

   final List rooms = [
    {
      "image":"assets/images/room1.jpg",
      "title":"Awesome Room"
    },
    {
      "image":"assets/images/room2.jpg",
      "title":"Peacefull Room"
    },
    {
      "image":"assets/images/room3.jpg",
      "title":"Beautiful Room"
    },
    {
      "image":"assets/images/room4.jpg",
      "title":"Vintage Room"
    },
    {
      "image":"assets/images/room5.jpg",
      "title":"Guest Room"
    }
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey,
            expandedHeight: 180,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_border)),
            ],
            floating: true,
            flexibleSpace: ListView(
              children: [
                const SizedBox(
                  height: 70.0,
                ),
                const Text("Type your Location",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        fontStyle: FontStyle.normal)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Kakkanad, Kochi",
                        icon: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search),
                            ))),
                  ),
                )
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: buildCategories(),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index){
            return buildrooms(context,index);
          },
            childCount: 5
          ),
          )

        ],
      ),
    );
  }
  Widget buildrooms(BuildContext context, int index) {
    var room = rooms[index % rooms.length];
    return Container(
      margin: EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(5),
              color: Colors.lightGreenAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(room['image']),
                      Positioned(
                        right: 10,
                          top: 10,
                          child:
                      Icon(Icons.star,color: Colors.white,)
                      ),
                      Positioned(
                        right: 10,
                          top: 10,
                          child:
                          Icon(Icons.star_border)
                      ),Positioned(
                        right: 10,
                          top: 10,
                          child:
                          Icon(Icons.star_border)
                      ),

                    ],
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(room['title'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          SizedBox(height: 12,),

                          Text('Kakkanad,Kochi'),
                          SizedBox(height: 2,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellowAccent,),
                              Icon(Icons.star,color: Colors.yellowAccent),
                              Icon(Icons.star,color: Colors.yellowAccent),
                              Icon(Icons.star,color: Colors.yellowAccent),
                              Icon(Icons.star,color: Colors.yellowAccent),
                              Icon(Icons.star,color: Colors.yellowAccent),

                              SizedBox(width: 20,),
                              Text('(220 reviews)'),
                              SizedBox(width: 120,),
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text('\$40'),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    
                  )
                ],
              ),
            ),
          ),
        ),



    );
  }

  buildCategories() {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 15,
          ),
          Category(
            background: Colors.pink,
            icon: Icons.hotel,
            title: "Hotel",
          ),
          SizedBox(
            width: 25,
          ),
          Category(
            background: Colors.lightBlue,
            icon: Icons.restaurant,
            title: "Restaurant",
          ),
          SizedBox(
            width: 15,
          ),
          Category(
            background: Colors.amber,
            icon: Icons.local_cafe_outlined,
            title: "Cafe",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  @override
  late final IconData icon;
  late final String title;
  late final Color? background;

  Category({Key? key, required this.icon, required this.title, this.background})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 100,
        decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
