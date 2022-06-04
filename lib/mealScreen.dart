import 'package:cookiq/constants.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.grey.shade50,
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
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kMainPaddingH),
            child: Container(
              height: size.height * 0.3,
              decoration: BoxDecoration(
                color: Colors.red.shade100,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(children: [
                  Container(
                    height: size.height * 0.2,
                    width: size.width * 0.3,
                    color: Colors.red.shade400,
                  )
                ]),
              ),
            ),
          )
        ]),
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
