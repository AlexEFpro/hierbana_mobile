import "package:flutter/material.dart";

class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(11, 83, 69, 0),
        leading: Builder(builder: (BuildContext context){
          return Image.asset(
          "images/logo.png",
            width: 50,);
        }) , 
        title: Text('Hierbana'),
        actions: [IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => print('hi on menu icon'),
              )],
          
      ),



      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Text('Catalogo'),
            Text('Productos')
          ],
        ),
      ), 
    );
  }
}