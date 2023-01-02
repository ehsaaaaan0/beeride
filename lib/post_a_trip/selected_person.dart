import 'package:beeride/post_a_trip/trip_setting.dart';
import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui_helper/button_styles.dart';
import 'booking.dart';

class SelectedPerson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          Container(
            width: width / 8,
            height: 50,
            decoration: BoxDecoration(
                color: const Color(0xfff1ad00),
                borderRadius: BorderRadius.circular(5)),
            alignment: Alignment.center,
            child: const Icon(
              Icons.location_on,
              size: 30,
              color: Colors.white,
            ),
          ),
          Container(
            width: width / 1.37,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xffeaeaea),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5))),
            child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Message to Ashley"))),
          ),
          Container(
            width: width / 7,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xffeaeaea),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            child: Icon(
              Icons.send_rounded,
              size: 30,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            color: const Color(0xfffbf9f9),
            margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_sharp,
                          size: 30,
                          color: Colors.black,
                        )),
                    Text(
                      "Ashley",
                      style: pageName(),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TripSetting(),
                          )),
                      child: const Icon(
                        Icons.settings,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: width,
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/profile.png",
                                height: 40,
                                width: 40,
                              ),
                              Expanded(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Calagry to Banff",
                                        style: detailsSize(),
                                      ),
                                      Text(
                                        "Tomorrow at 6:30am",
                                        style: detailsHintSize(),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "\$20",
                                        style: subHeadingGreen(),
                                      ),
                                      Text(
                                        "2 seats",
                                        style: detailsHintSize(),
                                      )
                                    ],
                                  )
                                ],
                              ))
                            ],
                          ),
                          Text(
                            "Ashley wrote this trip description ",
                            style: yellowText(),
                          ),
                          Text(
                            "I love driving and interacting with new people from diverse background, i am driving daily to Banff from Calgary as i work there . I leave early in the morning and return in the evening!",
                            style: searchOfPlaces(),
                          ),
                          Container(
                            width: width,
                            height: 50,
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Booking(),));
                              },
                              style: loginWithPhoneButtons(),
                              child: Text(
                                "Request to book",
                                style: loginWithPhoneText(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container();
                  },
                  itemCount: 2,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
