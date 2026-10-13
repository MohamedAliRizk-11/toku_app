//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '/models/number.dart';

class item extends StatelessWidget {
  const item({super.key, required this.number, required this.color});
  final itemModel number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffD2DEF8),
            child: Image.asset(number.image!),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                number.playSound();
              },
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 32),
            ),
          ),
        ],
      ),
    );
  }
}
