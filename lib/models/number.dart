import 'package:audioplayers/audioplayers.dart';

class itemModel {
  final String sound;
  final String? image;
  final String jpName;
  final String enName;
  const itemModel({
    required this.sound,
    this.image,
    required this.jpName,
    required this.enName,
  });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}




/*
class phraseModel {
  final String sound;

  final String jpName;
  final String enName;
  const phraseModel({
    required this.sound,

    required this.jpName,
    required this.enName,
  });
}
*/