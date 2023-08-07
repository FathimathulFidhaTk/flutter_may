import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'car2_ui.dart';


void main(){
  runApp(MaterialApp(
    home: car_app(),
    debugShowCheckedModeBanner: false,
  ));
}
class car_app extends StatefulWidget {
  static final title = 'salomon_bottom_bar';
  final CarouselController _controller = CarouselController();

  @override
  State<car_app> createState() => _car_appState();
}

class _car_appState extends State<car_app> {
  var _currentIndex = 0;

  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override

  double screenWidth = 0;

  double screenHeight = 0;

  @override
  Widget build(BuildContext context){
  screenHeight = MediaQuery.of(context).size.height;
  screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                child: Column(
                  children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
          ),
          child: Container(
                height: screenHeight / 1.9,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                      Padding(
                      padding: const EdgeInsets.only(left: 20,),
                      child: Stack(
                      children: [
                      Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Container(
                      padding: EdgeInsets.all(3),
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      shape: BoxShape.circle,
                      ),
                      child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                      child: Container(
                      height: 70,
                      width: 70,
                      child: Image.asset(
                      "assets/images/fid.jpeg",
                      fit: BoxFit.cover,
                      ),
                      ),
                      ),
                      ),
                      ),
                      ),
                      Positioned(
                      top: 55,
                      left: 35,
                      child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellowAccent,
                      ),
                        child: Text('ood'),
                      ),
                      ),
                      Positioned(
                      child: Padding(
                      padding: const EdgeInsets.only(left: 350,top: 20),
                      child: Container(child: Row(
                      children: [
                      Padding(
                      padding: const EdgeInsets.only(top: 5,right: 5),
                      child: Text('IDR',style: TextStyle(fontSize: 12,color: Colors.black54),),
                      ),
                      Text('17.7jt',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold)),
                      Container(
                      height: 30,
                      width: 30.0,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue,
                      ),
                      child: Icon(Icons.add,color: Colors.white,),
                      ),
                        ]
                      )
                      )
                        )
                      )
                      ],
                      ),
                      )
                      ],
                      ),
                      Container(
                      width: 500.4,
                      height: 210.0,
                       child: OnBoardingAnimation(
                          controller: PageController(initialPage: 1),
                          pages: const [
                            _GetCardsContent(
                              image: 'assets/images/car66.jpg',
                              cardContent:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                            ),
                            _GetCardsContent(
                              image: 'assets/images/car21.webp',
                              cardContent:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                            ),
                            _GetCardsContent(
                              image: 'assets/images/car20.jpg',
                              cardContent:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                            ),
                            _GetCardsContent(
                              image: 'assets/images/car03.png',
                              cardContent:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                            ),
                          ],
                          indicatorDotHeight: 7.0,
                          indicatorDotWidth: 7.0,
                          indicatorType: IndicatorType.expandingDots,
                          indicatorPosition: IndicatorPosition.bottomCenter,
                          indicatorSwapType: SwapType.normal,
                        ),
                      ),

                      Expanded(
                      flex: 1,
                      child: Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                      children: [
                      Text(
                      'GTR',
                      style: TextStyle(
                      fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text('Nisson',style: TextStyle(color: Colors.grey),),
                      ],
                      ),
                      TextButton(
                      onPressed: () {},
                      child:  Row(
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text('My Garage'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Icon(Icons.arrow_forward,size: 18,),
                      )
                      ],
                      ))
                      ],
                      ),
                      ),
                      )
                      ],
                      ),
                      )
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
                      child: Container(
                        height: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 18,left: 0),
                                  child: Text('Available Cars',style: TextStyle(color: Colors.white,fontSize: 20),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30,top: 3),
                                  child: Text('Long term and short term',style: TextStyle(color: Colors.white70),),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10,left: 190),
                              child: Container(
                                  height: 45,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white
                                  ),
                                  child:
                                  Icon(Icons.arrow_forward_ios,color: Colors.blue,)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13,left: 20),
                      child: Container(
                          child: Row(
                            children: [
                              Text('TOP DEALS',style: TextStyle(fontSize: 20,color: Colors.black26,fontWeight: FontWeight.bold),),
                              SizedBox(width: 300,),
                              Text('More',style: TextStyle(color: Colors.blue,fontSize: 15),),
                              Icon(Icons.arrow_forward_ios,color: Colors.blue,size: 13,)
                            ],
                          )
                      ),
                    ),SizedBox(height: 5.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Container(
                            height: 250,
                            width: 200.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8,left: 110),
                                  child: Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.blue.shade50
                                      ),
                                      child: Text(" weekly",style: TextStyle(color: Colors.blue),)),
                                ),
                                Image.asset('assets/images/car66.jpg',fit: BoxFit.fitWidth),
                                Padding(
                                  padding: const EdgeInsets.only(right: 95,top: 10),
                                  child: Text('Discovery',style: TextStyle(fontSize: 15,color: Colors.black87),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 70),
                                  child: Text('Land Rover',style: TextStyle(fontSize: 18,color: Colors.black),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 100.5),
                                  child: Text('per week',style: TextStyle(color: Colors.grey),),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 10,),
                          Container(
                            height: 250,
                            width: 200.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8,left: 110),
                                  child: Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.blue.shade50
                                      ),
                                      child: Text(" weekly",style: TextStyle(color: Colors.blue),)),
                                ),
                                Image.asset('assets/images/cr1.jpeg',fit: BoxFit.fitWidth),
                                Padding(
                                  padding: const EdgeInsets.only(right: 140,top: 10),
                                  child: Text('Stutz',style: TextStyle(fontSize: 12,color: Colors.black87),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text('Stutz BB Black Hawk',style: TextStyle(fontSize: 16,color: Colors.black),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 105.5),
                                  child: Text('per month',style: TextStyle(color: Colors.grey),),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 250,
                            width: 200.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8,left: 110),
                                  child: Container(
                                      width: 58,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.blue.shade50
                                      ),
                                      child: Text(" monthly",style: TextStyle(color: Colors.blue),)),
                                ),
                                Image.asset('assets/images/car88.jpg',fit: BoxFit.fitWidth),
                                Padding(
                                  padding: const EdgeInsets.only(right: 140,top: 10),
                                  child: Text('C4',style: TextStyle(fontSize: 15,color: Colors.black87),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 70),
                                  child: Text('Alfa Romeo',style: TextStyle(fontSize: 18,color: Colors.black),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 100.5),
                                  child: Text('per month',style: TextStyle(color: Colors.grey),),
                                ),

                              ],
                            ),

                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 250,
                            width: 200.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8,left: 110),
                                  child: Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.blue.shade50
                                      ),
                                      child: Text(" weekly",style: TextStyle(color: Colors.blue),)),
                                ),
                                Image.asset('assets/images/car22.jpeg',fit: BoxFit.fitWidth),
                                Padding(
                                  padding: const EdgeInsets.only(right: 100,top: 10),
                                  child: Text('Discovery',style: TextStyle(fontSize: 15,color: Colors.black87),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 48),
                                  child: Text('Packed Twelve',style: TextStyle(fontSize: 18,color: Colors.black),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 109.5),
                                  child: Text('per week',style: TextStyle(color: Colors.grey),),
                                ),
                              ],
                            ),
                          ), SizedBox(width: 10,),
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.all(8.0),

                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                    builder: (context) => car_app2()  ));
                                    },
                              child: Container(
                                height: 250,
                                width: 200.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8,left: 110),
                                      child: Card(
                                        child: Container(
                                            width: 50,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color: Colors.blue.shade50
                                            ),
                                            child: Text(" weekly",style: TextStyle(color: Colors.blue),)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: Image.asset('assets/images/car00.jpg',fit: BoxFit.fitWidth),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 110,top: 30),
                                      child: Text('Chevrolet',style: TextStyle(fontSize: 15,color: Colors.black87),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 110),
                                      child: Text('Camaro',style: TextStyle(fontSize: 18,color: Colors.black),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 109.5),
                                      child: Text('per week',style: TextStyle(color: Colors.grey),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Container(
                          child: Row(
                            children: [
                              Text('TOP DEALERS',style: TextStyle(fontSize: 18,color: Colors.black26,fontWeight: FontWeight.bold),),
                              SizedBox(width: 292,),
                              Text('More',style: TextStyle(color: Colors.blue,fontSize: 15),),
                              Icon(Icons.arrow_forward_ios,color: Colors.blue,size: 13,)
                            ],
                          )
                      ),
                    ),SizedBox(height: 12.0,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(width: 15,),
                          Container(
                            height: 165.0,
                            width: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white
                              ),
                                child: Column(
                                  children:[
                                    SizedBox(height: 20,),
                                    Container(
                                  height: 80.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.yellowAccent
                                  ),
                                    child : Center(child: Text('Hertz',style: TextStyle(color: Colors.black,
                                        fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),)),
                                ),SizedBox(height: 15,),
                                    Text('Hertz',style: TextStyle(color: Colors.black,fontSize: 20)),
                                    Text('174 offers',style: TextStyle(color: Colors.grey),),
                                  ]
                             ),
                            ),SizedBox(width: 15,),
                          Container(
                              height: 165.0,
                              width: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white
                              ),
                                child: Column(
                                  children:[
                                    SizedBox(height: 20,),
                                    Container(
                                  height: 80.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.red,
                                  ),
                                    child : Center(child: Text('AVIS',style: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.bold),)),
                                ),SizedBox(height: 15,),
                                    Text('Avis',style: TextStyle(color: Colors.black,fontSize: 20)),
                                    Text('126 offers',style: TextStyle(color: Colors.grey),),
                                  ]),),
                          SizedBox(width: 15,),
                          Container(
                              height: 165.0,
                              width: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white
                              ),
                                child: Column(
                                  children:[
                                    SizedBox(height: 20,),
                                    Container(
                                  height: 80.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black,
                                  ),
                                    child : Center(child: Text('Tesla',style: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.bold),)),
                                ),SizedBox(height: 15,),
                                    Text('Tesla',style: TextStyle(color: Colors.black,fontSize: 20)),
                                    Text('800 offers',style: TextStyle(color: Colors.grey),),
                                  ]),),
                          SizedBox(width: 10,),
                          Container(
                              height: 165.0,
                              width: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white
                              ),
                                child: Column(
                                  children:[
                                    SizedBox(height: 20,),
                                    Container(
                                  height: 80.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.green,
                                  ),
                                    child : Center(child: Text('Budget',style: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.bold),)),
                                ),SizedBox(height: 15,),
                                    Text('Budget',style: TextStyle(color: Colors.black,fontSize: 20)),
                                    Text('520 offers',style: TextStyle(color: Colors.grey),),
                                  ]),),
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

      bottomNavigationBar: Container(
      child: ClipRRect(
      borderRadius: const BorderRadius.only(
      topRight: Radius.circular(25),
      topLeft: Radius.circular(25),
    ),
        child: SalomonBottomBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.blue,
            ),

            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.blue,
            ),

            SalomonBottomBarItem(
              icon: Badge(
                label: Text('2'),
                child:
                Icon(Icons.notifications_none),
              ), title: Text("Notification"),
                selectedColor: Colors.blue,
              // icon: Icon(Icons.notifications_none),
              // title: Text("Notification"),
              // selectedColor: Colors.blue,
            ),

            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.blue,
            ),
          ],
        ),
      ),
      )

    );
  }
}
class _GetCardsContent extends StatelessWidget {
  final String image, cardContent;

  const _GetCardsContent({
    Key? key,
    this.image = '',
    this.cardContent = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Padding(
        padding: const EdgeInsets.all(11.0),
    child: ClipRRect(
    borderRadius: const BorderRadius.all(
    Radius.circular(20.0),
    ),
    child: Image.asset(image,height: 200,width: 400.0,),
    )
    )
    );
  }
}



