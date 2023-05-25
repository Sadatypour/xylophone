import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class audio extends StatefulWidget {
  audio({Key? key}) : super(key: key);

  @override
  State<audio> createState() => _audioState();
}

class _audioState extends State<audio> {
  Expanded playnote(Color color, int sond) {
    return Expanded(
      child: ElevatedButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          Note(sond);
        },
        child: Icon(
          Icons.music_note_outlined,
          color: color,
        ),
      ),
    );
  }

  void Note(int sound) async {
    final player = AudioPlayer();
    await player.play(AssetSource("sound/note$sound.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          playnote(Colors.brown, 1),
          playnote(Colors.red, 2),
          playnote(Colors.yellow, 3),
          playnote(Colors.pink, 4),
          playnote(Colors.green, 5),
          playnote(Colors.blue, 6),
          playnote(Colors.purple, 7),
        ],
      ),
    );
  }
}
