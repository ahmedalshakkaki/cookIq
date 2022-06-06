import 'dart:async';
import 'dart:math';

import 'package:cookiq/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

import 'details.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black45,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SearchWidget(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kMainPaddingH),
        child: ListView(children: [TodayMeal(size: size), Wheel()]),
      ),
    );
  }
}

class TodayMeal extends StatelessWidget {
  const TodayMeal({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kMainPaddingH),
      child: Container(
        height: size.height * 0.3,
        decoration: BoxDecoration(
          color: Colors.red.shade100,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              height: size.height * 0.2,
              width: size.width * 0.3,
              color: Colors.red.shade400,
            ),
            Container(
              width: size.width * 0.5,
              height: size.height * 0.2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Lorem Ipsum',
                      ),
                      Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In suscipit nibh et varius semper. Curabitur eget metus nec tellus elementum pellentesque. Proin lobortis ex eget elit pulvinar, nec rutrum lectus fringilla. Aliquam et auctor mi.')
                    ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // showSearch(context: context, delegate: DataSearch());
      },
      child: GestureDetector(
        onTap: () {
          // showSearch(context: context, delegate: DataSearch());
        },
        child: TextFormField(
          onTap: () {
            // showSearch(context: context, delegate: DataSearch());
          },
          enabled: false,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 0, left: 0, right: 0),
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.grey.shade200,
            // Color(0xFFF5F5F7),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
            hintText: 'Enter a search term',
          ),
        ),
      ),
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
      'باكله ',
      'دولمه',
      'c',
      'd',
      'e',
      'f',
    ];

    return Container(
      height: 500,
      width: 500,
      child: GestureDetector(
        onTap: (() {
          setState(() {
            selected.add(
              Fortune.randomInt(0, list.length),
            );
          });
        }),
        child: Column(
          children: [
            Expanded(
                child: FortuneWheel(
              indicators: <FortuneIndicator>[
                FortuneIndicator(

                    // alignment: Alignment
                    //     ., // <-- changing the position of the indicator
                    child: CircleAvatar(
                  foregroundColor: Colors.yellowAccent,
                )),
              ],

              // rotationCount: 10,
              // alignment: Alignment.bottomLeft,

              items: [
                for (var items in list)
                  FortuneItem(
                    child: GestureDetector(
                        onTap: () {
                          print(items);

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details()));
                        },
                        child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.transparent,
                            child: Center(child: Text(items)))),
                    // style: FortuneItemStyle(
                    //   color: Colors.red, // <-- custom circle slice fill color
                    //   borderColor: Color.fromARGB(160, 0, 200,
                    //       27), // <-- custom circle slice stroke color
                    //   borderWidth: 10, // <-- custom circle slice stroke width
                    // ),
                  ),
              ],
              selected: selected.stream,
            )),
          ],
        ),
      ),
    );
  }
}
