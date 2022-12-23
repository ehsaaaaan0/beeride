import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/material.dart';

import '../main_home.dart';
import '../ui_helper/button_styles.dart';

class PostATrip extends StatefulWidget {
  @override
  State<PostATrip> createState() => _PostATripState();
}

class _PostATripState extends State<PostATrip> {
  TextEditingController nameController = TextEditingController();
  int i = 0;
  bool valuefirst = false;
  int lauggage = 1, backSeat = 1, winter = 0, pet = 0, bikes = 0, skade = 0;
  String type = "";
  var number = ['--------', '1', '2', '3', '4'];
  var currentItemSelected = '1';
  var carcolor = ['--------', 'Black', 'White', 'Gray', 'Red'];
  var currentColorSelected = 'Black';
  int luggage = 0;
  int maxpeople = 0;
  int others = 0;
  int bike = 0;
  int skin = 0;
  int bookingType=1;

  @override
  Widget build(BuildContext context) {
    var statusBar = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - statusBar;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
                  width: width,
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_sharp,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                          Expanded(child: Center(child:Text("Post a Trip", style: pageName()))),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text(
                        "Itinerary",
                        style: TextStyle(
                            fontFamily: "poppin_semibold",
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      const Text(
                        "Your origin, destination and stops you’er willing to make along the way",
                        style: TextStyle(
                            fontFamily: "poppin_regular",
                            fontSize: 14,
                            color: const Color(0xff686868)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Origin",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "poppin_regular",
                            color: Colors.black),
                      ),
                      Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Container(
                            height: 45,
                            child: Row(
                              children: [
                                SizedBox(
                                    height: 60,
                                    width: width / 7,
                                    child: Icon(
                                      Icons.location_on,
                                      size: 15,
                                    )),
                                SizedBox(
                                  height: 45,
                                  width: width / 1.5,
                                  child: TextField(
                                    controller: nameController,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter an origin'),
                                  ),
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Destination",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "poppin_regular",
                            color: Colors.black),
                      ),
                      Card(
                          elevation: 1,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: SizedBox(
                            height: 45,
                            child: Row(
                              children: [
                                SizedBox(
                                    height: 60,
                                    width: width / 7,
                                    child: const Icon(Icons.location_on,
                                        size: 15)),
                                SizedBox(
                                  height: 45,
                                  width: width / 1.5,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter destination'),
                                  ),
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Image.asset(
                          "assets/images/image_divider.png",
                          height: 5,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Ride schedule",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "poppin_semibold",
                            color: Colors.black),
                      ),
                      SizedBox(
                          width: width,
                          child: Row(
                            children: const [
                              Text(
                                "Enter a precise and with",
                                style: TextStyle(
                                    fontFamily: "poppin_regular",
                                    color: const Color(0xff686868),
                                    fontSize: 10),
                              ),
                              Text(
                                " AM(morning)",
                                style: TextStyle(
                                    fontFamily: "poppin_semibold",
                                    color: Colors.black,
                                    fontSize: 10),
                              ),
                              Text(
                                " or ",
                                style: TextStyle(
                                    fontFamily: "poppin_regular",
                                    color: const Color(0xff686868),
                                    fontSize: 10),
                              ),
                              Text(
                                "PM(afternoon)",
                                style: TextStyle(
                                    fontFamily: "poppin_semibold",
                                    color: Colors.black,
                                    fontSize: 10),
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                              elevation: 2,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: i == 1 ? Colors.blue : Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 40,
                                width: 150,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      i = 1;
                                    });
                                  },
                                  child: Center(
                                      child: Text(
                                    "One-time trip",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "poppin_regular",
                                        color: i == 1
                                            ? Colors.white
                                            : Colors.black),
                                  )),
                                ),
                              )),
                          Card(
                              elevation: 2,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: i == 2 ? Colors.blue : Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 40,
                                width: 150,
                                child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        i = 2;
                                      });
                                    },
                                    child: Center(
                                        child: Text(
                                      "Recurring trip",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "poppin_regular",
                                          color: i == 2
                                              ? Colors.white
                                              : Colors.black),
                                    ))),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Leaving",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "poppin_semibold",
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                              elevation: 2,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Container(
                                height: 40,
                                width: width / 2.6,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      print("pressed");
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.calendar_month_outlined,
                                        size: 15,
                                      ),
                                      const Text(
                                        "Departure date",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "poppin_regular",
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                          const Center(
                            child: Text(
                              "at",
                              style: TextStyle(
                                  fontFamily: "poppin_regular",
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                          ),
                          Card(
                              elevation: 2,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Container(
                                height: 40,
                                width: width / 2.6,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      print("pressed");
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        size: 14,
                                      ),
                                      const Text(
                                        "Time",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "poppin_regular",
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Image.asset(
                          "assets/images/image_divider.png",
                          height: 5,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Vechile details",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "poppin_semibold",
                            color: Colors.black),
                      ),
                      const Text(
                        "This helps you get more booking and makes it it easier for passngers to identify yur vehicle during pick-up",
                        style: TextStyle(
                            color: const Color(0xff686868),
                            fontFamily: "poppin_regular",
                            fontSize: 12),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  width: 2,
                                  color: Colors.black,
                                  style: BorderStyle.solid),
                            ),
                            height: 23,
                            width: 23,
                            child: InkWell(
                              onTap: () {
                                valuefirst = true;
                              },
                              child: Checkbox(
                                checkColor: Colors.blue,
                                activeColor: Colors.white,
                                side: BorderSide.none,
                                value: this.valuefirst,
                                onChanged: (value) {
                                  setState(() {
                                    this.valuefirst = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Skip Vehicle ",
                            style: TextStyle(
                                fontFamily: "poppin_regular",
                                fontSize: 14,
                                color: const Color(0xff686868)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      Container(
                        width: double.infinity,
                        height: 140,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.only(right: 5, left: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 1, color: Colors.grey)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/car_Select.png'),
                              height: 58,
                              width: 40,
                            ),
                            SizedBox(height: 5),
                            Text("Add Photo"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Model',
                              style: subHeading(),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.only(right: 5, left: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(blurRadius: 1, color: Colors.grey)
                                  ]),
                              height: 40,
                              width: width / 1.8,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.only(right: 10, left: 10),
                                    hintStyle: detailsHintSize(),
                                    hintText: 'e.g Ford Focus'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Type',
                              style: subHeading(),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.only(right: 5, left: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(blurRadius: 1, color: Colors.grey)
                                  ]),
                              height: 40,
                              width: width / 1.8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DropdownButton<String>(
                                    items:
                                        number.map((String dropDownStringItem) {
                                      return DropdownMenuItem<String>(
                                        value: dropDownStringItem,
                                        child: Text(dropDownStringItem),
                                      );
                                    }).toList(),
                                    onChanged: (newValueSelected) {
                                      setState(() {
                                        this.currentItemSelected =
                                            newValueSelected!;
                                      });
                                    },
                                    value: currentItemSelected,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Color',
                              style: subHeading(),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.only(right: 5, left: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(blurRadius: 1, color: Colors.grey)
                                  ]),
                              height: 40,
                              width: width / 1.8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DropdownButton<String>(
                                    items: carcolor
                                        .map((String dropDownStringItem) {
                                      return DropdownMenuItem<String>(
                                        value: dropDownStringItem,
                                        child: Text(dropDownStringItem),
                                      );
                                    }).toList(),
                                    onChanged: (newValueSelected) {
                                      setState(() {
                                        this.currentColorSelected =
                                            newValueSelected!;
                                      });
                                    },
                                    value: currentColorSelected,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Year',
                              style: subHeading(),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.only(right: 5, left: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(blurRadius: 1, color: Colors.grey)
                                  ]),
                              height: 40,
                              width: width / 1.8,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.only(right: 10, left: 10),
                                    hintStyle: detailsHintSize(),
                                    hintText: 'YYY'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Licence plate',
                              style: subHeading(),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.only(right: 5, left: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(blurRadius: 1, color: Colors.grey)
                                  ]),
                              height: 40,
                              width: width / 1.8,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.only(right: 10, left: 10),
                                    hintStyle: detailsHintSize(),
                                    hintText: 'POP 123'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: Text(
                          'Luggage',
                          style: subHeading(),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  luggage = 0;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: luggage == 0
                                        ? Colors.black
                                        : Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                height: 30,
                                width: width / 5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.shopping_bag,
                                        size: 15,
                                        color: luggage == 0
                                            ? Colors.white
                                            : Colors.black),
                                    Text(
                                      'No luggage',
                                      style: TextStyle(
                                        fontFamily: "poppin_regular",
                                        fontSize: 8,
                                        color: luggage == 0
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  luggage = 1;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: luggage == 1
                                        ? Colors.black
                                        : Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                height: 30,
                                width: width / 5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.shopping_bag,
                                        size: 15,
                                        color: luggage == 1
                                            ? Colors.white
                                            : Colors.black),
                                    Text(
                                      'Small',
                                      style: TextStyle(
                                        fontFamily: "poppin_regular",
                                        fontSize: 8,
                                        color: luggage == 1
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  luggage = 2;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: luggage == 2
                                        ? Colors.black
                                        : Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                height: 30,
                                width: width / 5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.shopping_bag,
                                        size: 15,
                                        color: luggage == 2
                                            ? Colors.white
                                            : Colors.black),
                                    Text(
                                      'Medium',
                                      style: TextStyle(
                                        fontFamily: "poppin_regular",
                                        fontSize: 8,
                                        color: luggage == 2
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  luggage = 3;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: luggage == 3
                                        ? Colors.black
                                        : Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                height: 30,
                                width: width / 5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.shopping_bag,
                                        size: 15,
                                        color: luggage == 3
                                            ? Colors.white
                                            : Colors.black),
                                    Text(
                                      'Large',
                                      style: TextStyle(
                                        fontFamily: "poppin_regular",
                                        fontSize: 8,
                                        color: luggage == 3
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Back row seat',
                              style: subHeading(),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Pledge to a mximum of 2 people in back for better reviews.',
                              style: searchOfPlaces(),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  maxpeople = 0;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: maxpeople == 0
                                        ? Colors.black
                                        : Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                height: 30,
                                width: width / 2.5,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.airline_seat_legroom_extra_sharp,
                                        color: maxpeople == 0
                                            ? Colors.white
                                            : Colors.black),
                                    Text('Max 2 People',
                                        style: TextStyle(
                                          fontFamily: "poppin_regular",
                                          fontSize: 12,
                                          color: maxpeople == 0
                                              ? Colors.white
                                              : Colors.black,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  maxpeople = 1;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: maxpeople == 1
                                        ? Colors.black
                                        : Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                height: 30,
                                width: width / 2.5,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.airline_seat_legroom_extra_sharp,
                                        color: maxpeople == 1
                                            ? Colors.white
                                            : Colors.black),
                                    Text('Max 2 People',
                                        style: TextStyle(
                                          fontFamily: "poppin_regular",
                                          fontSize: 12,
                                          color: maxpeople == 1
                                              ? Colors.white
                                              : Colors.black,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Text(
                          'Others',
                          style: subHeading(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (others == 0) {
                                    others = 1;
                                  } else {
                                    others = 0;
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: others == 0
                                        ? Colors.black
                                        : Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                height: 30,
                                width: width / 3.5,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.flare_outlined,
                                        color: others == 0
                                            ? Colors.white
                                            : Colors.black),
                                    Text(
                                      'Winter tries',
                                      style: TextStyle(
                                        fontFamily: "poppin_regular",
                                        fontSize: 8,
                                        color: others == 0
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (bike == 0) {
                                    bike = 1;
                                  } else {
                                    bike = 0;
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color:
                                        bike == 0 ? Colors.black : Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                height: 30,
                                width: width / 4,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.directions_bike_outlined,
                                        color: bike == 0
                                            ? Colors.white
                                            : Colors.black),
                                    Text('Bikes',
                                        style: TextStyle(
                                          fontFamily: "poppin_regular",
                                          fontSize: 8,
                                          color: bike == 0
                                              ? Colors.white
                                              : Colors.black,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (pet == 0) {
                                    pet = 1;
                                  } else {
                                    pet = 0;
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color:
                                        pet == 0 ? Colors.black : Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                height: 30,
                                width: width / 4,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.pets_rounded,
                                        color: pet == 0
                                            ? Colors.white
                                            : Colors.black),
                                    Text('Pets',
                                        style: TextStyle(
                                          fontFamily: "poppin_regular",
                                          fontSize: 8,
                                          color: pet == 0
                                              ? Colors.white
                                              : Colors.black,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (skin == 0) {
                              skin = 1;
                            } else {
                              skin = 0;
                            }
                          });
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: skin == 0 ? Colors.black : Colors.white,
                                boxShadow: [
                                  BoxShadow(blurRadius: 1, color: Colors.grey)
                                ]),
                            height: 30,
                            width: width / 2.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.snowboarding,
                                    color: skin == 0
                                        ? Colors.white
                                        : Colors.black),
                                Text('skin/Snowboard',
                                    style: TextStyle(
                                      fontFamily: "poppin_regular",
                                      fontSize: 8,
                                      color: skin == 0
                                          ? Colors.white
                                          : Colors.black,
                                    ))
                              ],
                            )),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Image.asset(
                          "assets/images/image_divider.png",
                          height: 5,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Booking preferences",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "poppin_semibold",
                            color: Colors.black),
                      ),
                      const Text(
                        "Select your preference: review each booking request manually or accept all bookings instantly.",
                        style: TextStyle(
                            color: const Color(0xff686868),
                            fontFamily: "poppin_regular",
                            fontSize: 12),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "Select Type :",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "poppin_semibold",
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          setState((){
                            bookingType =0;
                          });
                        },
                        child: Card(
                          elevation: 1,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Container(
                            width: width,
                            decoration: BoxDecoration(
                                color: bookingType==0?Color(0xfff5f5f5):Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: bookingType==0?Border.all(
                            width: 1, color: const Color(0xff666666)):Border.all(
                              width: 1, color: Colors.white)
                            ),
                            height: 160,
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/requestTOBOOk.png", width: 37,height:31),
                                const Text(
                                  "Request to book",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "poppin_semibold",
                                      color: Colors.black),
                                ),
                                const Text(
                                  "You approve or decline passengers manually",
                                  style: TextStyle(
                                      color: Color(0xff686868),
                                      fontFamily: "poppin_semibold",
                                      fontSize: 12),
                                ),
                                const Text(
                                  "You control who gets in your car",
                                  style: TextStyle(
                                      color: Color(0xff686868),
                                      fontFamily: "poppin_regular",
                                      fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                          alignment: AlignmentDirectional.topEnd,
                          margin: const EdgeInsets.only(right: 20),
                          child: const Text("more info.")),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            bookingType =1;
                          });
                        },
                        child: Card(
                          elevation: 1,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Container(
                            width: width,
                            decoration: BoxDecoration(
                                color: bookingType==1?Color(0xfff5f5f5):Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: bookingType==1?Border.all(
                                    width: 1, color: const Color(0xff666666)):Border.all(
                                    width: 1, color: Colors.white)
                            ),
                            height: 160,
                            child: Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/light_now.png",width:30, height:40),
                                  const Text(
                                    "Instant book",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "poppin_semibold",
                                        color: Colors.black),
                                  ),
                                  const Text(
                                    "Unavailable for you",
                                    style: TextStyle(
                                        color: const Color(0xff686868),
                                        fontFamily: "poppin_semibold",
                                        fontSize: 12),
                                  ),
                                  const Text(
                                    "Drive at least 5 passengers to enable Instant book",
                                    style: TextStyle(
                                        color: const Color(0xff686868),
                                        fontFamily: "poppin_regular",
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Image.asset("assets/images/image_divider.png",height:5),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Trip description",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "poppin_semibold",
                            color: Colors.black),
                      ),
                      const Text(
                        "Add any details relevant to your trip for passengers before they book.",
                        style: TextStyle(
                            color: Color(0xff686868),
                            fontFamily: "poppin_regular",
                            fontSize: 12),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "poppin_semibold",
                            color: Colors.black),
                      ),
                      Card(
                        elevation: 1,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                          width: width,
                          height: 120,
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:
                                    'Example: i travel on weekends and would love to meet people and share rides',
                                hintMaxLines: 4),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Image.asset("assets/images/image_divider.png",height: 5),
                      ),
                      const SizedBox(height: 20),

                      //Not check here

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Price per seat",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "poppin_semibold",
                                    color: Colors.black),
                              ),
                              Text(
                                "enter the price , recomended",
                                style: TextStyle(
                                    color: Color(0xff686868),
                                    fontFamily: "poppin_regular",
                                    fontSize: 12),
                              ),
                              Text(
                                "price : \$22",
                                style: TextStyle(
                                    color: Color(0xff686868),
                                    fontFamily: "poppin_regular",
                                    fontSize: 12),
                              ),
                            ],
                          ),
                          Card(
                              elevation: 1,
                              child: Container(
                                height: 50,
                                width: 75,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                    child: Text(
                                  '\$22',
                                  style: TextStyle(
                                      fontFamily: "poppin_semibold",
                                      fontSize: 18),
                                )),
                              ))
                        ],
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Image.asset("assets/images/image_divider.png",height: 5,),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Rules While Posting trip",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "poppin_semibold",
                            color: Colors.black),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 55,
                              width: 55,
                              child:
                                  Image.asset("assets/images/rule_clock.png",width:41,height:40)),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              const Text(
                                "Be reliable",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "poppin_semibold",
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: width/1.4,
                                child: const Text(
                                  "Only post a trip if you’re sure you’re driving and show up on time",

                                  style: TextStyle(
                                      color: Color(0xff686868),
                                      fontFamily: "poppin_regular",
                                      fontSize: 12),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 55,
                              width: 55,
                              child:
                              Image.asset("assets/images/rule_safe.png",width:41,height:40)),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Drive safely",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "poppin_semibold",
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: width/1.4,
                                child: const Text(
                                  "Stick to the speed limit and do not use your phone while driving.",
                                  style: TextStyle(
                                      color: Color(0xff686868),
                                      fontFamily: "poppin_regular",
                                      fontSize: 12),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 55,
                              width: 55,
                              child:
                              Image.asset("assets/images/rule_money.png",width:41,height:40)),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "No cash",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "poppin_semibold",
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: width/1.4,
                                child: const Text(
                                  "All passengers pay online and you receive a payout after the trip.",
                                  style: TextStyle(
                                      color: Color(0xff686868),
                                      fontFamily: "poppin_regular",
                                      fontSize: 12),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),


                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  width: 2,
                                  color: Colors.black,
                                  style: BorderStyle.solid),
                            ),
                            height: 23,
                            width: 23,
                            child: InkWell(
                              onTap: () {
                                valuefirst = true;
                              },
                              child: Checkbox(
                                checkColor: Colors.blue,
                                activeColor: Colors.white,
                                side: BorderSide.none,
                                value: this.valuefirst,
                                onChanged: (value) {
                                  setState(() {
                                    this.valuefirst = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "I understand that my account could be",
                                style: TextStyle(
                                    fontFamily: "poppin_regular",
                                    fontSize: 14,
                                    color: const Color(0xff686868)),
                              ),
                              Text(
                                "suspended if I break these rules",
                                style: TextStyle(
                                    fontFamily: "poppin_regular",
                                    fontSize: 14,
                                    color: const Color(0xff686868)),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: width,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                          },
                          style: loginWithPhoneButtons(),
                          child: Text(
                            "Update prefrences",
                            style: loginWithPhoneText(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      )
                    ],
                  )))),
    );
  }
}
