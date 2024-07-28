import 'package:flutter/material.dart';

import '../widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

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
        children: [
          TuneItem(color: Colors.red, tune: 'note1.wav'),
          TuneItem(color: Colors.orange, tune: 'note2.wav'),
          TuneItem(color: Colors.yellow, tune: 'note3.wav'),
          TuneItem(color: Colors.green, tune: 'note4.wav'),
          TuneItem(color: Colors.greenAccent, tune: 'note5.wav'),
          TuneItem(color: Colors.blue, tune: 'note6.wav'),
          TuneItem(color: Colors.purple, tune: 'note7.wav'),
        ],
      ),
    );
  }
}
