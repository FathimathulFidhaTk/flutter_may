import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/product/dummy_products.dart';
import 'package:flutter_may/product/product2.dart';

void main(){
  runApp(MaterialApp(home: product1(),
  debugShowCheckedModeBanner: false,
  routes: {
      'second': (context) => product2(),
      }));
}


class product1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('Product List'),),
    body: ListView(
      children:
        dummyproducts.map((product){
          return GestureDetector(
              onTap: () => gotonext(context, product["id"]),
              child: Card(
                margin: EdgeInsets.all(10),
                  child: Image.asset("${product['image']}",height: 300,width: 200,)),
            );
        }
          ).toList(),
    ),
  );
  }

  gotonext(BuildContext context, product) {
    Navigator.of(context).pushNamed("second",arguments: product);

  }

}