import 'package:flutter/material.dart';

import 'package:toku/components/phraseItem.dart';

import '/models/number.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  List<itemModel> phrases = const [
    itemModel(
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",

      jpName: "Kōdoku Suru No O Wasurenaide Kudasai",
      enName: "Don't Forget To Subscribe",
    ),
    itemModel(
      sound: "sounds/phrases/i_love_programming.wav",

      jpName: "Puroguramingu Ga Daisuki Desu",
      enName: "I Love Programming",
    ),
    itemModel(
      sound: "sounds/phrases/programming_is_easy.wav",

      jpName: "Puroguramingu Wa Kantan Desu",
      enName: "Programming Is Easy",
    ),
    itemModel(
      sound: "sounds/phrases/where_are_you_going.wav",

      jpName: "Doko Ni Ikimasu Ka?",
      enName: "Where Are You Going?",
    ),
    itemModel(
      sound: "sounds/phrases/what_is_your_name.wav",

      jpName: "Anata No Namae Wa Nan Desu Ka?",
      enName: "What Is Your Name?",
    ),
    itemModel(
      sound: "sounds/phrases/i_love_anime.wav",

      jpName: "Anime Ga Daisuki Desu",
      enName: "I Love Anime",
    ),
    itemModel(
      sound: "sounds/phrases/how_are_you_feeling.wav",

      jpName: "Kibun Wa Dō Desu Ka?",
      enName: "How Are You Feeling?",
    ),
    itemModel(
      sound: "sounds/phrases/are_you_coming.wav",

      jpName: "Kimasu Ka?",
      enName: "Are You Coming?",
    ),
    itemModel(
      sound: "sounds/phrases/yes_im_coming.wav",

      jpName: "Hai, Ikimasu",
      enName: "Yes, I'm Coming",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF695B9A),
        title: const Text(
          "Phrases",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return phraseItem(
            color: const Color(0xFFB8B6DD),
            phrases: phrases[index],
          );
        },
      ),
    );
  }
}
