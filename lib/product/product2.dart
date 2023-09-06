
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/product/dummy_products.dart';


class product2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    final product = dummyproducts.firstWhere((data) => data['id']== productId);
    return Scaffold(
      appBar: AppBar(title: Text('Product2'),),
      body: Column(
        children: [
          Image.asset(product['image']),
          Text("${product['id'].toString()}"),
          Text("${product['name']}"),
          Text("${product['description']}"),
        ],
      ),


    );
  }

}