import 'package:flutter/material.dart';
import 'package:myapp/widgets/helpers.dart';

class Animation3 extends StatefulWidget {
  const Animation3({super.key});

  @override
  State<Animation3> createState() => _Animation3State();
}

class _Animation3State extends State<Animation3> {
  bool _bool = true;
  double turns = 0.0;
  double height = 50;
  int count = 0;
  bool selected = false;
  bool selected1 = false;
  double targetvalue = 100.0;
  double opacityLevel=1.0;
  bool first=true;
  double fontSize=60.0;
  Color color = Colors.pinkAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //AnimatedCrossFade====================================================================
                  animationContainer(
                    child: GestureDetector(
                      child: AnimatedCrossFade(
                          firstChild: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/gymimage1.jpg',
                              height: 150,
                            ),
                          ),
                          secondChild: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/gymimage2.jpg',
                              height: 150,
                            ),
                          ),
                          crossFadeState: _bool
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                          duration: Duration(seconds: 1)),
                      onTap: () {
                        setState(() {
                          _bool = !_bool;
                        });
                      },
                    ),
                  ),
                  spacingWidth(10),
                  //AnimatedRotation====================================================================
                  animationContainer(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        child: AnimatedRotation(
                          turns: turns,
                          duration: Duration(seconds: 2),
                          child: Image.asset(
                            'assets/earth.png',
                            height: 150,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            turns += 1 / 4;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
              spacingHeight(10),
              Row(
                //AnimatedSize==========================================================================
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  animationContainer(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: GestureDetector(
                        child: AnimatedSize(
                            child: Container(
                              height: height,
                              width: height,
                              color: Colors.red,
                            ),
                            duration: Duration(seconds: 1)),
                        onTap: () {
                          setState(() {
                            height = height == 130 ? 50 : 130;
                          });
                        },
                      ),
                    ),
                  ),
                  spacingWidth(10),
                  //AnimatedSize=================================================================================
                  animationContainer(
                      child: SizedBox(
                          height: 190,
                          width: 180,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              AnimatedPositioned(
                                  width: selected ? 100.0 : 50.0,
                                  height: selected ? 50.0 : 150.0,
                                  top: selected ? 50.0 : 50,
                                  curve: Curves.fastOutSlowIn,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected = !selected;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.amberAccent,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                    ),
                                  ),
                                  duration: Duration(seconds: 2))
                            ],
                          )))
                ],
              ),
              spacingHeight(10),
              Row(
                children: [
                  //TweenAnimationBuilder==========================================================================
                  animationContainer(
                      child: TweenAnimationBuilder(
                        curve: Curves.linear,
                        tween: Tween<double>(begin: 0, end: targetvalue),
                        duration: const Duration(seconds: 2),
                        builder: (context, size, child) {
                          return Image.asset(
                            'assets/smiley2.png',
                            height: size as double,
                          );
                        },
                        onEnd: () {
                          setState(() {
                          targetvalue = targetvalue == 100.0 ? 180.0 : 100.0;
                        });
                        },
                      )),
                      spacingWidth(10),
                      //AnimatedOpacity===========================================================================
                      animationContainer(child: GestureDetector(
                        child: AnimatedOpacity(
                          opacity: opacityLevel, 
                          duration: Duration(seconds: 1),
                          child:Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset(
                                'assets/hi.png',
                                height: 150,
                              ),
                          ), 
                          ),
                          onTap: () {
                            setState(() {
                              opacityLevel=opacityLevel==0?1.0:0.0;
                            });
                          },
                      ))
                ],
              ),
              spacingHeight(10),
              Row(
                children: [
                  //AnimatedAlign===========================================================================
                  animationContainer(child: GestureDetector(
                    child: SizedBox(
                      height: 190,
                      width: 190,
                      child: AnimatedAlign(
                        alignment: selected1?Alignment.bottomLeft:Alignment.topRight,
                        curve: Curves.fastOutSlowIn,
                        duration: Duration(seconds: 1),
                        child: Image.asset(
                                  'assets/bluecube.png',
                                  height: 120,
                                ),     
                        ),
                    ),
                      onTap: () {
                        setState(() {
                          selected1=!selected1;
                        });
                      },
                  )),
                  spacingWidth(10),
                  //AnimatedDefaultTextStyle===========================================================================
                  animationContainer(child: GestureDetector(
                    child: AnimatedDefaultTextStyle(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text('Hello'),
                      ), 
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),duration: Duration(seconds: 1)),
                      onTap: () {
                        setState(() {
                          fontSize=first?60:30;
                          color = first?Colors.pinkAccent:Colors.amber;
                          first=!first;
                        });
                      },
                  ))
                ],
              ),
              // spacingHeight(10),
              // Row(
              //   children: [
              //     animationContainer(child: GestureDetector()),
              //     spacingWidth(10),
              //     animationContainer(child: GestureDetector())
              //   ],
              // ),
            ],
          ),
        ),
      ),
    ));
  }
}