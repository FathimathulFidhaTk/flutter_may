import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [

            Lottie.asset('assets/lottiefiles/animation1.json'),

            // Load a Lottie file from a remote url
            // Lottie.network(
            //     'https://asset-cdn.lottiefiles'),

            // // Load an animation and its images from a zip file
            // Lottie.asset('assets/lottiefiles/angel.zip'),
          ],
        ),
      ),
    );
  }
}