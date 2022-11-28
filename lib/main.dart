import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Dice App",
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int diceNumber = 1;

  changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 19,
          ),
          // Image
          Center(
            child: Image.asset(
              "assets/$diceNumber.png",
              height: 190,
              width: 190,
            ),
          ),
          // Button
          MaterialButton(
            color: Colors.blue,
            onPressed: changeDice,
            child: Text(
              "Roll",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 90),
          Text(
            "flutter with susan",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
