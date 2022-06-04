import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class Wheel extends StatefulWidget {
  Wheel({Key? key}) : super(key: key);

  @override
  State<Wheel> createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  StreamController<int> selected = StreamController<int>();
  @override
  void dispose() {
    selected.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final list = <String>[
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'a',
      'b',
      'c',
    ];

    return Scaffold(
      body: Container(
        height: 500,
        width: 500,
        child: GestureDetector(
          onTap: (() {
            setState(() {
              selected.add(Random().nextInt(list.length));
            });
          }),
          child: Column(
            children: [
              Expanded(
                  child: FortuneWheel(
                items: [
                  for (var items in list) FortuneItem(child: Text(items))
                ],
                selected: selected.stream,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
