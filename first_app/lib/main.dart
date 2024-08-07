import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

/*
  Start Function For Dart App
  Will be exectuted automatically
  Name must be main
  */
void main() {
  /*function
      provided by Flutter
    */
  /*
      home element is required
    */
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.amber,
        body: GradientContainer(colors: [
          Color.fromARGB(255, 201, 129, 222),
          Color.fromARGB(255, 75, 22, 91),
        ]),
      ),
    ),
  );
}
