
  import 'package:flutter/material.dart';

SizedBox spacingHeight(double height) {
    return SizedBox(
              height: 10,
            );
  }

  SizedBox spacingWidth(double width) => SizedBox(width: width,);

  Container animationContainer({required Widget child}) {
    return Container(
      height: 190,
      width: 190,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 227, 227, 227), borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [child],
      ),
    );
  }