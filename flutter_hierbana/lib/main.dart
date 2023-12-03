import 'package:flutter/material.dart';
import 'package:flutter_hierbana/screens/catalogo_screen.dart';
import 'package:flutter_hierbana/screens/home_screen.dart';

  

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
initialRoute: '/homepage', // establecimiento de la ruta de inicio 
routes:{ //establece las rutas de la aplicacion
  '/homepage': (BuildContext context)=>HomePage(),
  '/catalogo':(BuildContext context) => CatalogoScreen(), 

},


);

}

}