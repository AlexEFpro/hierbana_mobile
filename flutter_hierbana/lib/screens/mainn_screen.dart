import "package:flutter/material.dart";


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
int selectedBnavbarIndex=0;
class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        leading: Builder(builder: (BuildContext context){
          return
           Image.asset(
          "images/logo.png",
            width: 40,
            
            );
        }) , 
        title: Text('Hierbana',
        style: TextStyle(color: Colors.white),),
        
         backgroundColor: Color(0xFF0B5345),
        
        actions: [IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white ,
                ),
                onPressed: () => print('hi on menu icon'),
              )],
          
      ),


      body:Center(
        
        child: Column(
        
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          
          const[
            
            ElevatedButton(onPressed: null,
             child:  Text('Catalogo')),
          ],
        ),
        
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedBnavbarIndex,
        onTap: (value){
          setState(() {
            selectedBnavbarIndex = value;
          });
        },
        backgroundColor: Color(0xFF0B5345),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.people_alt_sharp),
            activeIcon: const Icon(Icons.people_outline_sharp,color: Colors.white),
            label: '',
            backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
            icon: const Icon(Icons.email_outlined, color: Colors.white),
            activeIcon: const Icon(Icons.email),
            label: '',
            
            ),
        ],
      ),
    );
  }
}