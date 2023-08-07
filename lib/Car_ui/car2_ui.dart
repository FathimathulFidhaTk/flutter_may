import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_animation/onboarding_animation.dart';


void main(){
  runApp(MaterialApp(
    home: car_app2(),
    debugShowCheckedModeBanner: false,
  ));
}
class car_app2 extends StatefulWidget {
  final CarouselController _controller = CarouselController();

  @override
  State<car_app2> createState() => _car_appState();
}

class _car_appState extends State<car_app2> {
  int _current = 0;
  final CarouselController _controller = CarouselController();



  @override

  final List<String> imgList = [
    'assets/images/car00.jpg',
    'assets/images/car03.png',
    'assets/images/car02.png',
  ];

  double screenWidth = 0;

  double screenHeight = 0;

  @override
  Widget build(BuildContext context){
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                    child: Container(
                      height: screenHeight / 1.44,
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
                                      padding: EdgeInsets.only(top:5),
                                      child: Card(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                        margin: EdgeInsets.all(8.0),
                                        child: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_back_ios_outlined),
                                        ),
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(width: 300,),
                              Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Container(
                                    margin: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.blue
                                    ),
                                    child: IconButton(onPressed: () {  }, icon: Icon(Icons.bookmark_border,color: Colors.white,),
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    margin: EdgeInsets.all(8.0),
                                    child: IconButton(onPressed: () {  }, icon: Icon(Icons.save_alt),
                                    ),
                                  )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 370,top: 15),
                            child: Text("Camaro",style: TextStyle(fontSize: 26,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 398),
                            child: Text("Chevrolet",style: TextStyle(color: Colors.grey),),
                          ),
                          Container(
                            width: 450,
                            height: 200.0,
                            child: OnBoardingAnimation(
                              controller: PageController(initialPage: 1),
                              pages: const [
                                _GetCardsContent(
                                  image: 'assets/images/car00.jpg',
                                  cardContent:
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                ),
                                _GetCardsContent(
                                  image: 'assets/images/car03.png',
                                  cardContent:
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                ),
                                _GetCardsContent(
                                  image: 'assets/images/car02.png',
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
                          SizedBox(height: 20,),

                          Container(
                            child: Row(
                              children: [
                                SizedBox(width: 40,),
                                Container(
                                  height: 90,
                                  width: 125,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.blue
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 12,right: 50),
                                        child: Text('12 Month',style: TextStyle(color: Colors.white,fontSize: 12),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 13,right: 50),
                                        child: Text('4.35jt',style: TextStyle(color: Colors.white,fontSize: 22)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 3,right: 80),
                                        child: Text('IDR',style: TextStyle(color: Colors.white70)),
                                      ),
                                    ],
                                  ),
                                ), SizedBox(width: 18,),
                                Container(
                                height: 100,
                                width: 130,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                ),
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 12,right: 50),
                                          child: Text('6 Month',style: TextStyle(color: Colors.black,fontSize: 12),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 13,right: 50),
                                          child: Text('4.8jt',style: TextStyle(color: Colors.black,fontSize: 22)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 3,right: 70),
                                          child: Text('IDR',style: TextStyle(color: Colors.black)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 18,),
                                Container(
                                height: 100,
                                width: 130,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                ),
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 12,right: 50),
                                          child: Text('1 Month',style: TextStyle(color: Colors.black,fontSize: 12),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 13,right: 50),
                                          child: Text('5.1jt',style: TextStyle(color: Colors.black,fontSize: 22)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 3,right: 70),
                                          child: Text('IDR',style: TextStyle(color: Colors.black)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                    ]
                                )
                          )],
                      ),
                    )
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 320),
                  child: Text('SPECIFICATIONS',style: TextStyle(fontSize: 20,color: Colors.grey),),
                ),SizedBox(height: 12.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8,right: 80),
                              child: Text('Color',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3,right: 60),
                              child: Text('White',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ) ,
                      SizedBox(width: 10,),
                      Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8,right: 80),
                              child: Text('Gearbox',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3,right: 40),
                              child: Text('Automatic',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 60,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8,right: 80),
                              child: Text('Seat',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3,right: 90),
                              child: Text('4',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),SizedBox(height: 15,),
                Container(
                  height: 80,
                  width: 800,

                  color: Colors.white,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text('12 Month',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 30),
                            child: Text('IDR 4,35jt',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25,left: 10),
                        child: Text('per month'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: Text(
                              'Select This Car',style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                )

              ],
            ),
          ),

        ],
      ),
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
              child: Image.asset(image),
            )
        )
    );
  }
}





