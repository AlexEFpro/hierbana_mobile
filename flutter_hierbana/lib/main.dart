import 'package:flutter/material.dart';
import 'package:flutter_hierbana/screens/design_basic.dart';
//import 'package:flutter_hierbana/screens/mainn_screen.dart';
//import 'package:flutter_hierbana/screens/principal_screen.dart';

  

void main() {

runApp(const MyApp());

}
class MyApp extends StatelessWidget {

const MyApp({super.key});

// This widget is the root of your application.

@override

Widget build(BuildContext context) {

return  MaterialApp(
debugShowCheckedModeBanner:false,
initialRoute: 'design_basic', // establecimiento de la ruta de inicio 
routes:{ //establece las rutas de la aplicacion
  'design_basic': (BuildContext context)=>DesignBasicScreen() 

},


);

}

}