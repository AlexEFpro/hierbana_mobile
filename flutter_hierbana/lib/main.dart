import 'package:flutter/material.dart';
//import 'package:flutter_hierbana/screens/mainn_screen.dart';
import 'package:flutter_hierbana/screens/principal_screen.dart';

  

void main() {

runApp(const MyApp());

}

  

class MyApp extends StatelessWidget {

const MyApp({super.key});

  

// This widget is the root of your application.

@override

Widget build(BuildContext context) {

return  MaterialApp(
theme: ThemeData(
  useMaterial3: true,
  colorSchemeSeed: Colors.greenAccent
   ),
debugShowCheckedModeBanner:false,

home: const Principal()
);

}

}