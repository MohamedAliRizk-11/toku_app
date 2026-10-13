import 'package:flutter/material.dart';
import '/models/number.dart';
//import 'package:audioplayers/audioplayers.dart';

class phraseItem extends StatelessWidget {
  const phraseItem({super.key, required this.phrases, required this.color});

  final itemModel phrases;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrases.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  phrases.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),

          Spacer(),

          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              splashColor: const Color(0xffD8D1C9),
              onPressed: () {
                phrases.playSound();
              },
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 32),
            ),
          ),
        ],
      ),
    );
  }
}
