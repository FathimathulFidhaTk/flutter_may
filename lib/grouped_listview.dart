import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: groupedlist_view(),
    debugShowCheckedModeBanner: false,
  ));
}

class groupedlist_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Grouped ListView')),
      ),
      body: Center(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Text(
              'Android',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: ListTile(
                leading: Container(
                  color: Colors.purple,
                  height: 850,
                  width: 55,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Column(
                    children: [
                      Text(
                        'Android Tutorial',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.account_circle_rounded),
                          Text('  HanTH')
                        ],
                      ),
                      Row(
                        children: [Icon(Icons.date_range), Text('  24/12/20')],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child:
                Text('Flutter', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: ListTile(
                leading: Container(
                  color: Colors.lightGreenAccent,
                  height: 800,
                  width: 55,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text('Flutter Tutorial',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        children: [
                          Icon(Icons.account_circle_rounded),
                          Text('  HanTH')
                        ],
                      ),
                      Row(
                        children: [Icon(Icons.date_range), Text('  24/12/20')],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Text('IOS', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: ListTile(
                leading: Container(
                  color: Colors.pink,
                  height: 800,
                  width: 55,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Text(
                          'IOS Tutorial',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.account_circle_rounded),
                          Text('  HanTH')
                        ],
                      ),
                      Row(
                        children: [Icon(Icons.date_range), Text('  24/12/20')],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Text('Java', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: ListTile(
                leading: Container(
                  color: Colors.pinkAccent,
                  height: 800,
                  width: 55,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Text('Java Tutorial',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        children: [
                          Icon(Icons.account_circle_rounded),
                          Text('  HanTH')
                        ],
                      ),
                      Row(
                        children: [Icon(Icons.date_range), Text('  24/12/20')],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child:
                Text('Python', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: ListTile(
                leading: Container(
                  color: Colors.blue,
                  height: 800,
                  width: 55,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text('Python Tutorial',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        children: [
                          Icon(Icons.account_circle_rounded),
                          Text('  HanTH')
                        ],
                      ),
                      Row(
                        children: [Icon(Icons.date_range), Text('  24/12/20')],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Text('React', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: ListTile(
                leading: Container(
                  color: Colors.yellowAccent,
                  height: 800,
                  width: 55,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text('React Tutorial',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        children: [
                          Icon(Icons.account_circle_rounded),
                          Text('  HanTH')
                        ],
                      ),
                      Row(
                        children: [Icon(Icons.date_range), Text('  24/12/20')],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
