import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gv_builder(),
    debugShowCheckedModeBanner: false,
  ));
}

class gv_builder extends StatelessWidget {
  @override
  var num = ["1", '2', '3', '4', '5', '6', '7', '8', '9', '10'];
  var dig = ["0/20", '0/20', '0/20', '0/20', '0/20', '0/20', '0/20', '0/20', '0/20', '0/20'];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: ListView(
        children: [
          Container(
            child: Row(
              children: [
                Text(
                  "  Some Text",
                  style: TextStyle(fontSize: 25, color: Colors.greenAccent),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 300, top: 15, bottom: 15),
                  child: Text(
                    '0/10',
                    style: TextStyle(fontSize: 25, color: Colors.greenAccent),
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                    color: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          num[index],
                          style: TextStyle(fontSize: 22,color: Colors.white),
                        ),
                        Text(dig[index],style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                );
              }),
          Row(
            children: [
              Text(
                "  Some Text",
                style: TextStyle(fontSize: 25, color: Colors.greenAccent),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300, top: 15, bottom: 15),
                child: Text(
                  '0/10',
                  style: TextStyle(fontSize: 25, color: Colors.greenAccent),
                ),
              ),
            ],
          ),
          GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                    color: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          num[index],
                          style: TextStyle(fontSize: 22,color: Colors.white),
                        ),
                        Text(dig[index],style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                );
              }),
          Row(
            children: [
              Text(
                "  Some Text",
                style: TextStyle(fontSize: 25, color: Colors.greenAccent),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300, top: 15, bottom: 15),
                child: Text(
                  '0/10',
                  style: TextStyle(fontSize: 25, color: Colors.greenAccent),
                ),
              ),
            ],
          ),
          GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                    color: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          num[index],
                          style: TextStyle(fontSize: 22,color: Colors.white),
                        ),
                        Text(dig[index],style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
