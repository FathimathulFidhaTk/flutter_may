import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: facebook(),
    debugShowCheckedModeBanner: false,
  ));
}

class facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: CustomScrollView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          slivers: [
            SliverAppBar(
                expandedHeight: 260,
                backgroundColor: Colors.white,
                title: Row(
                  children: [
                    Text(
                      'facebook',
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.withOpacity(0.1)),
                        child: Icon(
                          FontAwesomeIcons.plus,
                          color: Colors.black,
                          size: 18,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.withOpacity(0.1)),
                        child: Icon(
                          FontAwesomeIcons.search,
                          color: Colors.black,
                          size: 18,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.withOpacity(0.1)),
                        child: Icon(
                          FontAwesomeIcons.facebookMessenger,
                          color: Colors.black,
                          size: 20,
                        )),
                  ],
                ),
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(100),
                    child: Column(
                      children: [
                        TabBar(
                          dividerColor: Colors.red,
                            unselectedLabelColor: Colors.black54,
                            labelColor: Colors.blue,
                            tabs: [
                              Icon(
                                Icons.home,
                                size: 35,
                              ),
                              Icon(Icons.people_outline, size: 35),
                              Icon(Icons.ondemand_video_outlined, size: 35),
                              Icon(Icons.store_outlined, size: 35),
                              Icon(Icons.notifications_none, size: 35),
                              Icon(Icons.menu_outlined, size: 35),
                            ]),
                        Divider(
                          color: Colors.black,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5, left: 20),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/fid.jpeg"),
                                radius: 25,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 18, top: 5),
                              child: Container(
                                height: 60,
                                width: 260,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      label: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15, right: 8),
                                            child: Text(
                                                'Write something here...'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 5,
                                            ),
                                            child: Text(
                                                'എന്തെങ്കിലും എഴുതൂ...'),
                                          ),
                                        ],
                                      ),
                                      hintStyle:
                                          TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Icon(
                                FontAwesomeIcons.images,
                                color: Colors.green,
                                size: 25
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Divider(
                            color: Colors.grey[350],
                            thickness: 11.5,
                          ),
                        ),
                        DefaultTabController(
                          length: 2,
                          child: AppBar(
                            backgroundColor: Colors.white,
                            title: SizedBox(
                              height: 57.0,
                              child: TabBar(
                                unselectedLabelColor: Colors.black87,
                                labelColor: Colors.blue,
                                tabs: [
                                  Text(
                                    "Stories",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text("Reels",
                                      style: TextStyle(fontSize: 20))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],

                    )
                )
            ),
            SliverList(delegate: SliverChildListDelegate([
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
            children: [
            SizedBox(
            width: 8,
            height: 50,
            ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Stack(children: [
                  SizedBox(
                    height: 50,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/fid.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              'Create \n Story',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 100,
                      left: 45,
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white.withOpacity(0.99)),
                        child: Center(
                          child: Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blue),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              weight: 500,
                              size: 35,
                            ),
                          ),
                        ),
                      ))
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Stack(children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 189,
                      width: 138,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image:
                                AssetImage("assets/images/fb1.jpeg"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 15,
                      left: 12,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.blue,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image:
                                AssetImage("assets/images/fb3.jpeg")),
                          ),
                        ),
                      )),
                  Positioned(
                    top: 150,
                    left: 15,
                    child: Column(
                      children: [
                        Text(
                          "Emilie ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Joseph",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Stack(children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 189,
                      width: 138,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image:
                                AssetImage("assets/images/fb4.jpeg"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 15,
                      left: 12,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.blue,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image:
                                AssetImage("assets/images/fb5.jpeg")),
                          ),
                        ),
                      )),
                  Positioned(
                    top: 150,
                    left: 15,
                    child: Column(
                      children: [
                        Text(
                          "Leena",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Philip",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Stack(children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 189,
                      width: 138,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image:
                                AssetImage("assets/images/fb6.jpeg"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 15,
                      left: 12,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.blue,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image:
                                AssetImage("assets/images/fb.jpeg")),
                          ),
                        ),
                      )),
                  Positioned(
                    top: 150,
                    left: 15,
                    child: Column(
                      children: [
                        Text(
                          "Saleena",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "George",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ]),
              ),
              ],
            ),
      ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Divider(
              color: Colors.grey[400],
              thickness: 10.5,
            ),
          ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 24,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 22,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                        image: (AssetImage("assets/images/fb5.jpeg"))
                                    )
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width:10,),
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 6,),
                                  Text('Leena philip',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 250,),
                                  Image(height: 15,
                                    width: 15,
                                    image: AssetImage("assets/images/fb9.png",),
                                  ),
                                  SizedBox(width: 15,),
                                  Icon(Icons.close,color: Colors.grey[600],size: 22,)
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 327),
                                child: Row(
                                  children: [
                                    Text('15h',style: TextStyle(color: Colors.grey[600],),),
                                    Text('.',style: TextStyle(color: Colors.grey[600],),),
                                    Image(height: 15, width: 15, image: AssetImage("assets/images/fb8.png",),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Image(
                          width: 600,
                          height: 450,
                          image: AssetImage("assets/images/fb12.jpeg")
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40,top: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.thumb_up,color: Colors.white,size: 10,),
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.red,
                            child: Icon(FontAwesomeIcons.heart,color: Colors.white,size: 10,),
                          ),SizedBox(width: 250,),
                          Text('9 comments . 1 share')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45,left: 45,top: 8),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          SizedBox(width: 80,),
                          Icon(FontAwesomeIcons.thumbsUp),
                          SizedBox(width: 6,),
                          Text('Like') ,
                          SizedBox(width: 70,),
                          Icon(FontAwesomeIcons.comment),
                          SizedBox(width: 6,),
                          Text('Comment'),
                          SizedBox(width: 60,),
                          Icon(FontAwesomeIcons.share,),
                          SizedBox(width: 6,),
                          Text('Share')
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Divider(
                  color: Colors.grey[350],
                  thickness: 8,
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 24,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 22,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                        image: (AssetImage("assets/images/fb3.jpeg"))
                                    )
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width:10,),
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 6,),
                                  Text('Emilie Joseph',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 250,),
                                  Image(height: 15,
                                    width: 15,
                                    image: AssetImage("assets/images/fb9.png",),
                                  ),
                                  SizedBox(width: 15,),
                                  Icon(Icons.close,color: Colors.grey[600],size: 22,)
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 300),
                                child: Row(
                                  children: [
                                    Text('2 days ago',style: TextStyle(color: Colors.grey[600],),),
                                    Text('.',style: TextStyle(color: Colors.grey[600],),),
                                    Image(height: 15, width: 15, image: AssetImage("assets/images/fb8.png",),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Image(
                          width: 600,
                          height: 450,
                          image: AssetImage("assets/images/fb15.jpeg")
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40,top: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.thumb_up,color: Colors.white,size: 10,),
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.red,
                            child: Icon(FontAwesomeIcons.heart,color: Colors.white,size: 10,),
                          ),SizedBox(width: 250,),
                          Text('50 comments . 12 share')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45,left: 45,top: 8),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          SizedBox(width: 80,),
                          Icon(FontAwesomeIcons.thumbsUp),
                          SizedBox(width: 6,),
                          Text('Like') ,
                          SizedBox(width: 70,),
                          Icon(FontAwesomeIcons.comment),
                          SizedBox(width: 6,),
                          Text('Comment'),
                          SizedBox(width: 60,),
                          Icon(FontAwesomeIcons.share,),
                          SizedBox(width: 6,),
                          Text('Share')
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 8,
                ),
              )
          ]
    )


            ),
          ]

      ),
        )
    ),
    );

  }
}
