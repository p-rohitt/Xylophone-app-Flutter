import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int index) {
    final player = AssetsAudioPlayer();
    player.open(Audio('assets/note$index.wav'));
  }

  Expanded buildKey(int index, Color color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: const SizedBox(),
        onPressed: () {
          playSound(index);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.orangeAccent),
              buildKey(2, Colors.redAccent),
              buildKey(3, Colors.greenAccent),
              buildKey(4, Colors.lightBlueAccent),
              buildKey(5, Colors.amberAccent),
              buildKey(6, Colors.purpleAccent),
              buildKey(7, Colors.limeAccent),
            ],
          ),
        ),
      ),
    );
  }
}
