import 'dart:async';
import 'dart:math';

import 'package:cookiq/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

import 'example.dart';
import 'mealScreen.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'cookIq',
          style: TextStyle(
              color: Colors.black45, fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kMainPaddingH, vertical: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MealScreen();
              }));
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kContainerBorderRadius)),
              child: Container(
                height: size.height * 0.25,
                decoration: BoxDecoration(
                    color: Colors.blueAccent.shade200,
                    borderRadius:
                        BorderRadius.circular(kContainerBorderRadius)),
                child: Center(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kMainPaddingH, vertical: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Wheel();
              }));
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kContainerBorderRadius)),
              child: Container(
                height: size.height * 0.25,
                decoration: BoxDecoration(
                    color: Colors.blueAccent.shade200,
                    borderRadius:
                        BorderRadius.circular(kContainerBorderRadius)),
                child: Center(
                  child: Text(
                    'Lunch',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kMainPaddingH, vertical: 10),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kContainerBorderRadius)),
            child: Container(
              height: size.height * 0.25,
              decoration: BoxDecoration(
                  color: Colors.blueAccent.shade200,
                  borderRadius: BorderRadius.circular(kContainerBorderRadius)),
              child: Center(
                child: Text(
                  'Dinner',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

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
