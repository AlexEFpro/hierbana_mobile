import 'package:flutter/material.dart';

class BNavigator extends StatefulWidget {
  const BNavigator({super.key});

  @override
  State<BNavigator> createState() => _BNavigatorState();
}

class _BNavigatorState extends State<BNavigator> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      currentIndex: index,
      onTap: (int i){
        setState(() {
          index=i;
        });
        
},
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.grey[400],
        backgroundColor: Color(0xFF0B5345),
      
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            activeIcon: const Icon(Icons.home,color: Colors.white),
            label: '',
            backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
            icon: const Icon(Icons.medication_outlined, color: Colors.white),
            activeIcon: const Icon(Icons.medication_rounded),
            label: '',
            
            ),
             BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_basket_rounded, color: Colors.white),
            activeIcon: const Icon(Icons.shopping_basket_outlined),
            label: '',)
        ]
      );
  }
}