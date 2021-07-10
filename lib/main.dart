import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white60,

      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  @override
  _ImagePage createState() => _ImagePage();
}

class _ImagePage extends State<ImagePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;

  void changeTheImage() {
    leftImageNumber = Random().nextInt(8) + 1; //because it have 0
    rightImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leftImageNumber == rightImageNumber
              ? "Congratulations you won"
              : "Try Again",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontFamily: "FiraSans-Black"),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        changeTheImage();
                      });
                    },
                    child: Image.asset(
                      "images/image-$leftImageNumber.png",
                      width: 150,
                    )),
              ),
              Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        changeTheImage();
                      });
                    },
                    child: Image.asset(
                      "images/image-$rightImageNumber.png",
                      width: 150,
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
