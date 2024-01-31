import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/Llist_page.dart';

class Animation1 extends StatefulWidget {
  Animation1({Key? key}) : super(key: key);

  @override
  State<Animation1> createState() => _Animation1State();
}

class _Animation1State extends State<Animation1> with TickerProviderStateMixin {
  double bottomPosition = 0.0;
  double bottpositioned1 = 0.0;
  double bottomPosition2 = 0.0;
  double bottomPosition3 = 0.0;
  double topPosition = 0.0;
  double leftPosition = 0.0;
  double spaceshipOpacity = 0.1;
  double jupiterOpacity = 0.7;
  double earthOpacity = 0.4;
  late AnimationController rotationController;
  TextEditingController textFieldController1 = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();

  @override
  void initState() {
    super.initState();
    rotationController = AnimationController(
      duration: Duration(seconds: 20),
      vsync: this,
    )..repeat();

    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        bottomPosition = 0.0;
        topPosition = 300.0;
        leftPosition = 40.0;
        spaceshipOpacity = 1.0;
        bottpositioned1 = 50.0;
        bottomPosition2 = 170.0;
        bottomPosition2 = 150.0;
      });
    });
    Timer.periodic(Duration(milliseconds: 16), (timer) {
      setState(() {
        leftPosition += 1.0;
        if (leftPosition > 700) {
          leftPosition = -700.0;
        }
        bottpositioned1 += 0.5;
        if (bottpositioned1 > 1600) {
          bottpositioned1 = -1300.0;
        }
        bottomPosition2 += 1.0;
        if (bottomPosition2 > 2000) {
          bottomPosition2 = -1600.0;
        }
        bottomPosition3 += 0.3;
        if (bottomPosition3 > 2000) {
          bottomPosition3 = -1600.0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            bottom: bottomPosition,
            child: AnimatedOpacity(
                opacity: 0.6,
                duration: Duration(seconds: 2),
                child: Image.asset('assets/stars.png', height: 500)),
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            top: bottomPosition,
            child: AnimatedOpacity(
                opacity: 0.6,
                duration: Duration(seconds: 2),
                child: Image.asset('assets/stars1.png', height: 500)),
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            top: topPosition,
            child: Image.asset('assets/bulbs.png', height: 200),
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            left: leftPosition,
            child: AnimatedOpacity(
              opacity: spaceshipOpacity,
              duration: Duration(seconds: 2),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/spaceships.png',
                  height: 120,
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            bottom: bottpositioned1,
            right: 30,
            child: AnimatedOpacity(
              opacity: jupiterOpacity,
              duration: Duration(seconds: 2),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: RotationTransition(
                  turns: rotationController,
                  child: Image.asset(
                    'assets/jupiter.png',
                    height: 120,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            bottom: bottomPosition2,
            left: 30,
            child: AnimatedOpacity(
              opacity: earthOpacity,
              duration: Duration(seconds: 2),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: RotationTransition(
                  turns: rotationController,
                  child: Image.asset(
                    'assets/earth.png',
                    height: 80,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            bottom: bottomPosition3,
            left: 130,
            child: AnimatedOpacity(
              opacity: earthOpacity,
              duration: Duration(seconds: 2),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: RotationTransition(
                  turns: rotationController,
                  child: Image.asset(
                    'assets/jupiter1.png',
                    height: 80,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 30,
            child: Container(
              width: 350,
              child: TextField(
                controller: textFieldController1,
                decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w100),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white))),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 30,
            child: Container(
              width: 350,
              child: TextField(
                controller: textFieldController2,
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w100),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white))),
              ),
            ),
          ),
          Positioned(
            top: 500.0,
            left: 30.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>ListPage() )));
                },
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 14, 74, 123).withOpacity(0.3),
                        Color.fromARGB(255, 55, 142, 132).withOpacity(0.3)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Login to Space',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    rotationController.dispose();
    textFieldController1.dispose();
    textFieldController2.dispose();
    super.dispose();
  }
}
