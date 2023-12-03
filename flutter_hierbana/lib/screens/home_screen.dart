import 'package:flutter/material.dart';
import 'package:flutter_hierbana/components/bottom_nav.dart';



class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context){
          return
           Image.asset(
          "images/logo.png",
            width: 40,
            
            );
        }) , 
        title: Text('Hierbana',
        
        style: TextStyle(color: Colors.white),)
        ,
        
        
         backgroundColor: Color(0xFF0B5345),
        
        actions: [IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white ,
                ),
                onPressed: () => print('hi on menu icon'),
              )],
           
      ),
      
      body:
      Stack(
        children: 
        [
          Image.asset("images/principal_mobile.png",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                
                onPressed: (){
                  Navigator.pushNamed(context, '/catalogo');
                }, 
                child: Text("Catalogo"),
                
                ),
            ],
          ),
        )
       
         ],
      ),
      bottomNavigationBar: BNavigator(),
    );
  }
}