import 'package:cookiq/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  Details({
    Key? key,
  }) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String content = 'content';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            height: size.height * 0.05,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                // Text(
                //   'Weather News',
                //   style: GoogleFonts.poppins(
                //       color: Colors.blue,
                //       fontWeight: FontWeight.w500,
                //       fontSize: 14),
                // ),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(kContainerBorderRadius)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius:
                            BorderRadius.circular(kContainerBorderRadius),
                        boxShadow: [BoxShadow(color: Colors.grey.shade50)]),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(children: [
                        IconButton(
                            onPressed: () {
                              print('shar');
                            },
                            icon: Icon(
                              Icons.share,
                              color: Colors.purple,
                            )),
                        Text('Share it',
                            style: GoogleFonts.poppins(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.w500))
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          )),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black45,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        // title: Text(
        //   'News',
        //   style: TextStyle(color: Colors.blue),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Column(
              children: [
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(kContainerBorderRadius)),
                  child: Container(
                    height: size.height * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(kContainerBorderRadius),
                      image: DecorationImage(
                        image: NetworkImage(
                            // "${newsData['articles'][index1]['urlToImage'].toString()}"),
                            // widget.imageUrl

                            'https://picsum.photos/1800'),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Row(
                //     children: [
                //       Text(
                //         'widget.newsSource',
                //         style: GoogleFonts.poppins(
                //             color: Colors.blue.shade900,
                //             fontSize: 12,
                //             fontWeight: FontWeight.w500),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 10),
                //         child: Icon(
                //           Icons.circle,
                //           color: Colors.blue,
                //           size: 10,
                //         ),
                //       ),
                //       Text(
                //         'widget.publishAt',
                //         style: GoogleFonts.poppins(
                //             color: Colors.purple,
                //             fontSize: 12,
                //             fontWeight: FontWeight.w500),
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  SizedBox(
                    width: size.width * 0.75,
                    child: Text(
                      'widget.newsTitle',
                      style: GoogleFonts.poppins(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: size.height * 0.45,
                child: Column(
                  children: [
                    Text(
                      'widget.newsContent',
                      style: GoogleFonts.poppins(
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 2),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        ' widget.articleUrl',
                        style: GoogleFonts.poppins(
                            color: Colors.blue,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 2),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
