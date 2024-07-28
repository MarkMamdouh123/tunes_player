import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player/tune_model.dart';

class TuneItem extends StatelessWidget {
  final TuneModel tuneModel;

  const TuneItem({super.key, required this.tuneModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tuneModel.playTune();
        },
        child: Container(
          color: tuneModel.color,
        ),
      ),
    );
  }
}
