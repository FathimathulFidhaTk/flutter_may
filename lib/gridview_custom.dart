import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: gridview_custom(),
  ));
}
class gridview_custom extends StatelessWidget{
  @override

  var img = ['assets/images/pic11.png','assets/images/pic12.png','assets/images/pic13.png','assets/images/pic14.png','assets/images/pic15.png','assets/images/pic17.png','assets/images/pic16.png'];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView Custom')),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          childrenDelegate: SliverChildBuilderDelegate((context, index)
          {
        return Card(
          child: Image(image: AssetImage(img[index]),)
        );
      },
              childCount: img.length,
      )
      ),
    );
  }

}