import 'package:flutter/material.dart';
import 'package:tunes_player/tune_model.dart';

import '../widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tuneItem = const [
    TuneModel(color: Colors.red, tune: 'note1.wav'),
    TuneModel(color: Colors.orange, tune: 'note2.wav'),
    TuneModel(color: Colors.yellow, tune: 'note3.wav'),
    TuneModel(color: Colors.green, tune: 'note4.wav'),
    TuneModel(color: Colors.greenAccent, tune: 'note5.wav'),
    TuneModel(color: Colors.blue, tune: 'note6.wav'),
    TuneModel(color: Colors.purple, tune: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black45,
        title: Text(
          "Flutter Tune",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: tuneItem
            .map(
              (e) => TuneItem(tuneModel: e),
            )
            .toList(),
      ),
    );
  }
}
