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
                  onPressed: () {}, icon: Icon(Icons.send_to_mobile_sharp)),
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
        ],
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
