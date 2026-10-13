import 'package:flutter/material.dart';

import 'package:toku/components/item.dart';

import '/models/number.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  List<itemModel> numbers = const [
    itemModel(
      sound: "sounds/colors/red.wav",
      image: "assets/images/colors/color_red.png",
      jpName: "Aka",
      enName: "red",
    ),
    itemModel(
      sound: "sounds/colors/yellow.wav",
      image: "assets/images/colors/yellow.png",
      jpName: "Kiiro",
      enName: "yellow",
    ),
    itemModel(
      sound: "sounds/colors/green.wav",
      image: "assets/images/colors/color_green.png",
      jpName: "Midori",
      enName: "green",
    ),
    itemModel(
      sound: "sounds/colors/white.wav",
      image: "assets/images/colors/color_white.png",
      jpName: "Shiro",
      enName: "white",
    ),
    itemModel(
      sound: "sounds/colors/black.wav",
      image: "assets/images/colors/color_black.png",
      jpName: "Kuro",
      enName: "black",
    ),
    itemModel(
      sound: "sounds/colors/brown.wav",
      image: "assets/images/colors/color_brown.png",
      jpName: "Chairo",
      enName: "brown",
    ),
    itemModel(
      sound: "sounds/colors/gray.wav",
      image: "assets/images/colors/color_gray.png",
      jpName: "Haiiro",
      enName: "gray",
    ),
    itemModel(
      sound: "sounds/colors/dusty_yellow.wav",
      image: "assets/images/colors/color_dusty_yellow.png",
      jpName: "Kusunda kiiro",
      enName: "dusty_yellow",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A7A53),
        title: const Text(
          "Colors",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return item(color: const Color(0xFFA7BEA6), number: numbers[index]);
        },
      ),
    );
  }
}
