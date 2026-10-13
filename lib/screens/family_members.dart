import 'package:flutter/material.dart';

import 'package:toku/components/item.dart';

import '/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({super.key});

  List<itemModel> numbers = const [
    itemModel(
      sound: "sounds/family_members/father.wav",
      image: "assets/images/family_members/family_father.png",
      jpName: "Otōsan",
      enName: "father",
    ),
    itemModel(
      sound: "sounds/family_members/mother.wav",
      image: "assets/images/family_members/family_mother.png",
      jpName: "Okāsan",
      enName: "mother",
    ),
    itemModel(
      sound: "sounds/family_members/son.wav",
      image: "assets/images/family_members/family_son.png",
      jpName: "Musuko",
      enName: "son",
    ),
    itemModel(
      sound: "sounds/family_members/younger_brohter.wav",
      image: "assets/images/family_members/family_younger_brother.png",
      jpName: "Otōto",
      enName: "younger brother",
    ),
    itemModel(
      sound: "sounds/family_members/younger_sister.wav",
      image: "assets/images/family_members/family_younger_sister.png",
      jpName: "Imōto",
      enName: "younger sister",
    ),
    itemModel(
      sound: "sounds/family_members/older_bother.wav",
      image: "assets/images/family_members/family_older_brother.png",
      jpName: "Onīsan",
      enName: "older brother",
    ),
    itemModel(
      sound: "sounds/family_members/older_sister.wav",
      image: "assets/images/family_members/family_older_sister.png",
      jpName: "Onēsan",
      enName: "older sister",
    ),
    itemModel(
      sound: "sounds/family_members/grand_father.wav",
      image: "assets/images/family_members/family_grandfather.png",
      jpName: "Ojīsan",
      enName: "grand father",
    ),
    itemModel(
      sound: "sounds/family_members/grand_mother.wav",
      image: "assets/images/family_members/family_grandmother.png",
      jpName: "Obāsan",
      enName: "grand mother",
    ),
    itemModel(
      sound: "sounds/family_members/daughter.wav",
      image: "assets/images/family_members/family_daughter.png",
      jpName: "Musume",
      enName: "daughter",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFC99139),
        title: const Text(
          "Family Members",
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
          return item(color: const Color(0xFFEDCE93), number: numbers[index]);
        },
      ),
    );
  }
}
