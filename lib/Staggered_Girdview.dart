import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main(){
  runApp(MaterialApp(
    home: staggered_gv(),
    debugShowCheckedModeBanner: false,
  ));
}
class staggered_gv extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
     body:StaggeredGridView.count(crossAxisCount: 5,
     crossAxisSpacing: 10,
     mainAxisSpacing: 10,
     staggeredTiles: [
       StaggeredTile.count(2, 2),
       StaggeredTile.count(3, 3),
       StaggeredTile.count(1, 4),
       StaggeredTile.count(1, 3),
       StaggeredTile.count(3, 2),
       StaggeredTile.count(4, 3),
       StaggeredTile.count(1, 2),
       StaggeredTile.count(5, 1),
     ],
     children: [
       listitems( Colors.yellowAccent),
       listitems( Colors.greenAccent),
       listitems( Colors.redAccent),
       listitems( Colors.blue),
       listitems( Colors.brown),
       listitems( Colors.pinkAccent),
       listitems( Colors.orange),
       listitems( Colors.yellowAccent),

     ],),
   );
  }
}

class listitems extends StatelessWidget {
  late final Color bgcolor;
  listitems(this.bgcolor);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
    );


  }

}