import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: AppBackpress(),
  ));
}

class AppBackpress extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async{
      return await showDialog(context: context,
          builder: (context) => AlertDialog(
            title: Text("Alert"),
            content: Text("Do you want to Exit"),
              actions: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop(false);
                }, child: Text('NO')),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop(true);
                }, child: Text('Yes')),

            ],
      )
      );
    }

    return WillPopScope(
      onWillPop: showAlert,
      child: Scaffold(
        appBar: AppBar(title: Text("Alert"),
        ),

      ),
    );
  }
}