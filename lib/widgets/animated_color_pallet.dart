import 'dart:math';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/helpers.dart';
class AnimatedColorPaleState extends StatefulWidget {
  const AnimatedColorPaleState({super.key});

  @override
  State<AnimatedColorPaleState> createState() => AnimatedColorPaleStateState();
}

class AnimatedColorPaleStateState extends State<AnimatedColorPaleState> {
  List<Color> colorPalett=generetaRandomPalet();
  static List<Color> generetaRandomPalet(){
    final random=Random();
    return List.generate(5, (index) {
      return Color.fromRGBO(
        random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
    });
  }
  void regeneratePalte(){
    setState(() {
      colorPalett=generetaRandomPalet();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            for(Color color in colorPalett)
            GestureDetector(
              onTap: () {
                setState(() {
                  regeneratePalte();
                });
              },
              child: AnimatedContainer(
                height: 50,
                width: 50,
                color: color,
                margin: EdgeInsets.all(8),
                duration: Duration(seconds: 1)),
            )
          ],
        ),
      ),
    );
  }
}