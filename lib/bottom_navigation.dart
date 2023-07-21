import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: bottom_navigation(),
  debugShowCheckedModeBanner: false,));
}
class bottom_navigation extends StatefulWidget{
  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  int selectedindex = 0;

  void onitemselected(int index){
    setState(() {
      selectedindex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('Bottom Navigation'),),
     bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.blue,
       selectedItemColor: Colors.green,
       unselectedItemColor: Colors.white,
       type: BottomNavigationBarType.fixed,
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: "Account"),
         BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
         BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favourite"),
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
       ],
       currentIndex: selectedindex,
         onTap: onitemselected,),
     );
  }
}