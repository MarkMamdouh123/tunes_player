import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneItem extends StatelessWidget {
  final Color color;
  final String tune;

  const TuneItem({super.key, required this.color, required this.tune});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(AssetSource(tune));
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
