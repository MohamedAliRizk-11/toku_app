import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import '/models/number.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
  List<itemModel> numbers = const [
    itemModel(
      sound: "sounds/numbers/number_one_sound.mp3",
      image: "assets/images/numbers/number_one.png",
      jpName: "ichi",
      enName: "one",
    ),
    itemModel(
      sound: "sounds/numbers/number_two_sound.mp3",
      image: "assets/images/numbers/number_two.png",
      jpName: "Ni",
      enName: "Two",
    ),
    itemModel(
      sound: "sounds/numbers/number_three_sound.mp3",
      image: "assets/images/numbers/number_three.png",
      jpName: "San",
      enName: "Three",
    ),
    itemModel(
      sound: "sounds/numbers/number_four_sound.mp3",
      image: "assets/images/numbers/number_four.png",
      jpName: "Yon",
      enName: "Four",
    ),
    itemModel(
      sound: "sounds/numbers/number_five_sound.mp3",
      image: "assets/images/numbers/number_five.png",
      jpName: "Go",
      enName: "Five",
    ),
    itemModel(
      sound: "sounds/numbers/number_six_sound.mp3",
      image: "assets/images/numbers/number_six.png",
      jpName: "Roku",
      enName: "Six",
    ),
    itemModel(
      sound: "sounds/numbers/number_seven_sound.mp3",
      image: "assets/images/numbers/number_seven.png",
      jpName: "Nana",
      enName: "Seven",
    ),
    itemModel(
      sound: "sounds/numbers/number_eight_sound.mp3",
      image: "assets/images/numbers/number_eight.png",
      jpName: "Hachi",
      enName: "Eight",
    ),
    itemModel(
      sound: "sounds/numbers/number_nine_sound.mp3",
      image: "assets/images/numbers/number_nine.png",
      jpName: "Kyū",
      enName: "Nine",
    ),
    itemModel(
      sound: "sounds/numbers/number_ten_sound.mp3",
      image: "assets/images/numbers/number_ten.png",
      jpName: "Jū",
      enName: "Ten",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB35448),
        title: const Text(
          "Numbers",
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
          return item(color: const Color(0xFFE7A09A), number: numbers[index]);
        },
      ),
    );
  }
}
