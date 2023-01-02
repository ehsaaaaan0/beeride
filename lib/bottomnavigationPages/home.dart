import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../find_your_trip/find_a_trip.dart';
import '../post_a_trip/post_a_trip.dart';
import '../request_a_trip/request_a_trip.dart';
import '../ui_helper/text_styles.dart';

class HomePage extends StatelessWidget {
  var userName = "Jennifer";

  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          child: SingleChildScrollView(
            child: Container(
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text("Hi,",
                                style: TextStyle(
                                    fontFamily: "poppin_regular",
                                    fontSize: 27,
                                    color: Colors.black)),
                            SizedBox(
                              width: (width / 2) - 10,
                              child: Text(
                                userName,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontFamily: "poppin_semibold",
                                    fontSize: 35,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              Container(
                                width: width / 2,
                                height: 190,
                                child: Stack(
                                  alignment: AlignmentDirectional.topEnd,
                                  children: const [
                                    Positioned(
                                        top: -45,
                                        right: -25,
                                        child: SizedBox(
                                          height: 240,
                                          width: 190,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/images/top_right.png"),
                                          ),
                                        ) //Icon
                                    ),
                                    Positioned(
                                        top: -50,
                                        right: -20,
                                        child: SizedBox(
                                          height: 250,
                                          width: 180,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/images/profile.jpg"),
                                          ),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 50,
                              width: (width * 1.35) / 2,
                              child: Card(
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Search for places...",
                                        style: searchOfPlaces(),
                                      ),
                                      const Icon(
                                        Icons.search,
                                        color: Color(0xff6a6a6a),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 50,
                              width: width / 6.5,
                              child: Card(
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.message,
                                      color: Color(0xff6a6a6a),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                          width: double.infinity,
                          child: Text(
                            "What are you looking for",
                            style: pageHeading(),
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 20, left: 15),
                        height: 138,
                        width: width,
                        decoration: const BoxDecoration(
                            color: Color(0xffa3a3a3),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RequestATrip(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/dots.png",
                                  height: 35,
                                  width: 28,
                                ),
                                Text(
                                  "Request a trip",
                                  style: pageHeading(),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "When new trip matches your travel ",
                                          style: detailsSize(),
                                        ),
                                        Text(
                                          "needs Get Notified",
                                          style: detailsSize(),
                                        ),
                                      ],
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(),
                                        height: 71,
                                        width: 90,
                                        child: Image.asset(
                                          "assets/images/requestTrip.png",
                                          height: 72,
                                          width: 95,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10, right: 20, left: 15),
                        height: 137,
                        width: width,
                        decoration: const BoxDecoration(
                            color: Color(0xffffdadc),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PostATrip(),));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/pinkdots.png",
                                  height: 35,
                                  width: 28,
                                ),
                                Text(
                                  "Post your trip",
                                  style: pageHeading(),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Let others know about your plan so ",
                                          style: detailsSize(),
                                        ),
                                        Text(
                                          "they can join you on your journey",
                                          style: detailsSize(),
                                        ),
                                      ],
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(),
                                        height: 71,
                                        width: 90,
                                        child: Image.asset(
                                          "assets/images/postTrip.png",
                                          height: 72,
                                          width: 95,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 20, left: 15),
                        height: 137,
                        width: width,
                        decoration: const BoxDecoration(
                            color: Color(0xffbde4fe),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Find_a_trip(),));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/bluedots.png",
                                  height: 35,
                                  width: 28,
                                ),
                                Text(
                                  "Find your trip",
                                  style: pageHeading(),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Find a ride and carpool anywhere in ",
                                          style: detailsSize(),
                                        ),
                                        Text(
                                          "Canada as pasenger",
                                          style: detailsSize(),
                                        ),
                                      ],
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(),
                                        height: 71,
                                        width: 77,
                                        child: Image.asset(
                                          "assets/images/findTrip.png",
                                          height: 72,
                                          width: 95,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
