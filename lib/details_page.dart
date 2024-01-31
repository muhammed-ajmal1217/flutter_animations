import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  String? image;
  String? tag;
  String? title;
  String? description;
  DetailsPage({super.key, this.image, this.tag, this.title,this.description});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(seconds: 2),
              curve: Curves.easeInOut,
              top: 0,
              child: AnimatedOpacity(
                opacity: 0.8,
                duration: Duration(seconds: 2),
                child: Image.asset('assets/stars1.png', height: 700),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 14),
                ),
              ),
            ),
            Column(
              children: [
                Hero(
                  tag: widget.tag!,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70, left: 40, right: 40),
                    child: SingleChildScrollView(
                      child: Image.asset(widget.image!),
                    ),
                  ),
                ),
                SizedBox(height: 16), 
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      widget.title ?? '',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                        widget.description ?? '',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
