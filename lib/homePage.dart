import 'package:cookiq/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
                  'Lunch',
                  style: TextStyle(color: Colors.white, fontSize: 20),
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
