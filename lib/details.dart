import 'package:cookiq/constants.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kMainPaddingH),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 20, left: 20),
              child: Container(
                height: size.height * 0.4,
                width: size.width * 0.7,
                color: Colors.white,
                child: Image.network('src'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
