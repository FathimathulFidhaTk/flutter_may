import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/images/farmer8.jpg',
  'assets/images/farmer2.jpg',
  'assets/images/farmer5.jpg',
  'assets/images/farmer1.jpg',
  'assets/images/farmer3.jpg',
  'assets/images/farmer6.jpg',
  'assets/images/farmer7.png',
];

void main() {
  runApp(MaterialApp(
    home: slider(),
    debugShowCheckedModeBanner: false,
  ));
}

class slider extends StatelessWidget {
  @override
  var img = [
    'assets/images/f1.jpg',
    'assets/images/f2.jpg',
    'assets/images/f3.jpg',
    'assets/images/f4.jpg'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lightGreenAccent[700],
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.lightGreenAccent[700],
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.lightGreenAccent[700],
              ),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.lightGreenAccent[700],
              ),
              label: 'Account'),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.lightGreenAccent[700],
            title: const Text(
              'FARMERS FRESH ZONE',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            floating: false,
            pinned: true,
            actions: const [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.location_on_outlined,
                    size: 18,
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Center(
                      child: Text(
                    "Kochi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))),
            ],
            bottom: AppBar(
              backgroundColor: Colors.lightGreenAccent[700],
              title: Container(
                height: 40,
                color: Colors.white,
                child: Center(
                  child: TextField(
                      decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for Vegetables and Fruits.',
                    prefixIcon: Icon(Icons.search),
                  )),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Text(
                        'VEGETABLES',
                        style: TextStyle(color: Colors.lightGreenAccent[700]),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Text('FRUITS',
                              style: TextStyle(
                                  color: Colors.lightGreenAccent[700]))),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Text(
                        'EXOTIC CUTS',
                        style: TextStyle(color: Colors.lightGreenAccent[700]),
                      )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Container(
                      margin: EdgeInsets.all(3),
                      height: 200,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                          initialPage: 2,
                          autoPlay: true,
                        ),
                        items: imgList
                            .map((item) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(item),
                                    ),
                                  ),
                                ))
                            .toList(),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  height: 55,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 3,
                            ),
                            SizedBox(width: 50),
                            Icon(Icons.timer_rounded),
                            SizedBox(
                              width: 98,
                            ),
                            Icon(Icons.camera_front_outlined),
                            SizedBox(
                              width: 110,
                            ),
                            Icon(Icons.maps_home_work),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Row(
                            children: [
                              SizedBox(width: 25),
                              Text(
                                '30 mins policy',
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(width: 35.5),
                              Text('Traceability'),
                              SizedBox(width: 45),
                              Text('Local Surrounding'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Shop by Category",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
                width: 10,
              ),
              veggrid(),
            ]),
          )
        ],
      ),
    );
  }
}

class veggrid extends StatelessWidget {
  final List<String> img = [
    'assets/images/f3.jpg',
    'assets/images/f2.jpg',
    'assets/images/f1.jpg',
    'assets/images/f6.png',
    'assets/images/f8.jpg',
    'assets/images/f9.jpg',
    'assets/images/f5.jpg',
    'assets/images/f10.jpg',
    'assets/images/f11.jpg',
  ];

  final List<String> names = [
    '  Vegetables',
    "       Fruits",
    '   Exotic Fruits',
    '      Spices',
    '   Production',
    ' Nutrition Fruit',
    'Exotic Vegatables',
    '  Nutrition Veg',
    '      Fresh cut',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3),
        itemCount: img.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 8.9,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 15.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(img[index])),
                ),
              ),
              SizedBox(
                height: 5,
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  names[index],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          );
        });
  }
}
