import "package:flutter/material.dart";
class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}
int selectedBnavbarIndex=0; //inicializacion del estado de la bottombar
class _PrincipalState extends State<Principal> {
  
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
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/principal_mobile.png'),
            fit: BoxFit.cover
            )
          ),
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