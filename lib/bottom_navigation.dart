import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/anim1.dart';
import 'package:myapp/anim2.dart';
import 'package:myapp/anim3.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List<Widget> pages = [
    Animation1(),
    Animation2(),
    Animation3(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Iconsax.home,color: Colors.white,),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Iconsax.home_11,color: Colors.white,),  
            backgroundColor: Colors.blue, 
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Iconsax.home_14,color: Colors.white,),  
          ),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
