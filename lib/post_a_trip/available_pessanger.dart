import 'package:beeride/post_a_trip/selected_person.dart';
import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/material.dart';

import '../ui_helper/button_styles.dart';

class SelectPessanger extends StatefulWidget {
  @override
  State<SelectPessanger> createState() => _SelectPessangerState();
}

class _SelectPessangerState extends State<SelectPessanger> {
  int select = 0;

  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height - 30,
            width: width,
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_sharp,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                        child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Select passengers",
                        style: pageName(),
                      ),
                    ))
                  ],
                ),
                Expanded(
                  flex: 13,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            setState(() {
                              select = 1;
                            });
                          },
                          child: Card(
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              height: 190,
                              width: width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Positioned(
                                      top: -10,
                                      left: -10,
                                      child: SizedBox(
                                        height: 55,
                                        width: 55,
                                        child: ClipOval(
                                            child: Image.asset(
                                                "assets/images/profile.png")),
                                      )),
                                  Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: 35,
                                        width: 120,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                            color: Color(0xfff1ad00),
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(10),
                                                topLeft: Radius.circular(10))),
                                        child: Text(
                                          "Select passenger",
                                          style: whiteText(),
                                        ),
                                      )),
                                  SizedBox(
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                            padding:
                                                const EdgeInsets.only(left: 50),
                                            child: Text(
                                              "Thomas",
                                              style: pageHeading2(),
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, left: 10, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Sat, Oct 29",
                                                style: subHeading(),
                                              ),
                                              Text(
                                                "1 Seat needed ",
                                                style: subHeading(),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Calgary",
                                                style: yellowText(),
                                              ),
                                              Text(
                                                "Calgary international Airport",
                                                style: searchOfPlaces(),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Banff",
                                                style: yellowText(),
                                              ),
                                              Text(
                                                "Banff, AB, Canada",
                                                style: searchOfPlaces(),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 1,
                                          color: Colors.black12,
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: Text(
                                              "Hey everyone! I’m needing a ride from Calgary airport to Banff, hope we can do it together",
                                              style: searchOfPlaces(),
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                    },
                    itemCount: 100,
                  ),
                ),
                Visibility(
                  visible: select == 0 ? false : true,
                  child: Expanded(
                    child: SizedBox(
                      width: width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SelectedPerson(),
                              ));
                        },
                        style: loginWithPhoneButtons(),
                        child: Text(
                          "Invite this passengers",
                          style: loginWithPhoneText(),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
