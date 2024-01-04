import 'package:flutter/material.dart';
import 'package:myapp/anim1.dart';
import 'package:myapp/anim2.dart';
import 'package:myapp/anim3.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List<Widget> pages=[
    Animation1(),
    Animation2(),
    Animation3(),
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          label: 'AnimPage1',
          icon: Icon(Icons.home)),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          label: 'AnimPage2',
          icon: Icon(Icons.home)),
        BottomNavigationBarItem(
          label: 'AnimPage3',
          icon: Icon(Icons.home)),
      ],
      currentIndex: currentIndex,
      onTap: (value) {
        setState(() {
          currentIndex=value;
        });
      },
      ),
    );
  }
}