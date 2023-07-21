import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: hotel_room_detail_ui(),
  debugShowCheckedModeBanner: false,));
}
class hotel_room_detail_ui extends StatefulWidget{
  @override
  State<hotel_room_detail_ui> createState() => _hotel_room_detail_uiState();
}

class _hotel_room_detail_uiState extends State<hotel_room_detail_ui> {
  get bottomNavigationBar => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  BottomNavigationBar(
        selectedItemColor: Colors.black,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search),
            label: 'Search',),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),
              label: 'Favourites'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: 'Settings'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Container(
          child: ListView(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Image(image: AssetImage("assets/images/r1.jpg"),fit: BoxFit.fill,),
                      Padding(
                        padding: const EdgeInsets.only(top:15),
                        child: Center(child: Text('DETAIL',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 230,left: 10),
                        child: Text('Crowne Plaza',style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),),
                      ),SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 252,left: 10),
                        child: Text('Kochi, Kerala',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 280),
                        child: Container(
                          width: 120,
                          height: 25,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[300]),
                          child: Center(child: Text('8.4/8.5 reviews')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 275,left: 435),
                        child: Icon(Icons.favorite_border,color: Colors.white,),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 5),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellowAccent,size: 18,),
                              Icon(Icons.star,color: Colors.yellowAccent,size: 18),
                              Icon(Icons.star,color: Colors.yellowAccent,size: 18),
                              Icon(Icons.star,color: Colors.yellowAccent,size: 18),
                              Icon(Icons.star,color: Colors.grey,size: 18),
                              Icon(Icons.star,color: Colors.grey,size: 18),

                              SizedBox(
                                width: 290,
                              ),
                              Column(
                                children: [
                                  Text('\$ 200',style: TextStyle(color: Colors.purple,fontSize: 15,fontWeight: FontWeight.bold),),
                                  Text('/per night',style: TextStyle(fontSize: 12,color: Colors.grey,),)

                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 200,),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Icon(Icons.location_on,size: 15,color: Colors.grey,),
                                Text('8 km to LuluMall',style: TextStyle(fontSize: 12,color: Colors.grey),),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 30,
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.purple),
                            child: TextButton(onPressed: (){}, child: Center(child: Text("Book Now",style: TextStyle(color: Colors.white),))),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15 ,right: 15),
                    child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 360 ,top: 25,bottom: 10),
                              child: Text('DESCRIPTION',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                            ),
                    Text('Crowne Plaza Kochi is the perfect choice for Business and Leisure travelers, offers 269 spacious rooms and suites with excellent views of the backwaters and the city, Hotel is the host for wide range of Dining options with two Award winning Restaurants Skygrill and Zoka, with two swimming pools and a Bar.Crowne Plaza Kochi is in the new business district of Kochi on National Highway 66 along the banks of Vembanadu Lake with proximity to Forum Mall, provides easy accessibility to Business hubs (InfoPark Kochi, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base) and Leisure destinations like Marine drive, Fort Kochi, Mattancherry Palace. We are located 45 minutes’ drive from Cochin International Airport.Our Aira Spa is one of the largest hotel spas in Kerala, with a dedicated area of 25,000 sq. feet. Our variety of authentic culinary outlets, leisure facilities and high-tech meeting spaces can accommodate large business Meetings, events and social gatherings all within a tranquil waterfront settings.',
                        textAlign: TextAlign.justify
                      ,style: TextStyle(fontSize: 12)
                    ),
                          ],
                        ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

    );

  }
} 