import 'package:beeride/request_a_trip/trip_posted.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../ui_helper/button_styles.dart';
import '../ui_helper/text_styles.dart';

class RequestATrip extends StatefulWidget {
  @override
  State<RequestATrip> createState() => _RequestATripState();
}

class _RequestATripState extends State<RequestATrip> {
  var dateInput = TextEditingController();
  TextEditingController timeinput = TextEditingController();
  int seat = 1;

  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.arrow_back_sharp,
                            size: 30,
                          )),
                      Expanded(
                          child: Text(
                        "Post a Request",
                        textAlign: TextAlign.center,
                        style: pageName(),
                      ))
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 25),
                  height: height / 1.3,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Origin",
                        style: subHeading(),
                      ),
                      Container(
                        width: width,
                        height: 50,
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Icon(Icons.location_on),
                              ),
                              Expanded(
                                  child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(left: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Enter an origin",
                                      hintStyle: detailsHintSize(),
                                      border: InputBorder.none),
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Destination",
                        style: subHeading(),
                      ),
                      Container(
                        width: width,
                        height: 50,
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Icon(Icons.location_on),
                              ),
                              Expanded(
                                  child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(left: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Enter destination",
                                      hintStyle: detailsHintSize(),
                                      border: InputBorder.none),
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Schedule",
                        style: subHeading(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: width / 2 - 30,
                            height: 50,
                            child: Card(
                              margin: const EdgeInsets.only(top: 10),
                              elevation: 1,
                              shadowColor: Colors.black,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: TextField(
                                  controller: dateInput,
                                  decoration: InputDecoration(
                                      icon: Icon(Icons.calendar_month),
                                      hintText: "Date",
                                      hintStyle: detailsHintSize(),
                                      border: InputBorder.none),
                                  readOnly: true,
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1950),
                                        lastDate: DateTime(2100));

                                    if (pickedDate != null) {
                                      print(pickedDate);
                                      String formattedDate =
                                          DateFormat('yyyy-MM-dd')
                                              .format(pickedDate);
                                      print(formattedDate);
                                      setState(() {
                                        dateInput.text = formattedDate;
                                      });
                                    } else {}
                                  },
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: width / 2 - 30,
                            height: 50,
                            child: Card(
                              margin: const EdgeInsets.only(top: 10),
                              elevation: 1,
                              shadowColor: Colors.black,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: TextField(
                                  controller: timeinput,
                                  decoration: InputDecoration(
                                      icon: Icon(Icons.calendar_month),
                                      hintText: "Time",
                                      hintStyle: detailsHintSize(),
                                      border: InputBorder.none),
                                  readOnly: true,
                                  onTap: () async {
                                    TimeOfDay? pickedTime =
                                        await showTimePicker(
                                      initialTime: TimeOfDay.now(),
                                      context: context,
                                    );

                                    if (pickedTime != null) {
                                      print(pickedTime
                                          .format(context)); //output 10:51 PM
                                      DateTime parsedTime = DateFormat.jm()
                                          .parse(pickedTime
                                              .format(context)
                                              .toString());
                                      print(
                                          parsedTime);
                                      String formattedTime =
                                          DateFormat('HH:mm:ss')
                                              .format(parsedTime);
                                      print(formattedTime);
                                      setState(() {
                                        timeinput.text =
                                            formattedTime;
                                      });
                                    } else {
                                      print("Time is not selected");
                                    }
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Seat Required",
                        style: subHeading(),
                      ),
                      Container(
                        width: width,
                        height: 50,
                        child: Card(
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Image.asset(
                                    "assets/images/seat.png",
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    seat = 1;
                                                  });
                                                },
                                                child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      color: seat == 1
                                                          ? Color(0xfff1ad00)
                                                          : Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "1",
                                                    style: TextStyle(
                                                        color: seat == 1
                                                            ? Color(0xffffffff)
                                                            : Color(0xff828282),
                                                        fontSize: 18,
                                                        fontFamily:
                                                            "poppin_semibold"),
                                                  ),
                                                )),
                                            InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    seat = 2;
                                                  });
                                                },
                                                child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      color: seat == 2
                                                          ? Color(0xfff1ad00)
                                                          : Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "2",
                                                    style: TextStyle(
                                                        color: seat == 2
                                                            ? Color(0xffffffff)
                                                            : Color(0xff828282),
                                                        fontSize: 18,
                                                        fontFamily:
                                                            "poppin_semibold"),
                                                  ),
                                                )),
                                            InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    seat = 3;
                                                  });
                                                },
                                                child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      color: seat == 3
                                                          ? Color(0xfff1ad00)
                                                          : Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "3",
                                                    style: TextStyle(
                                                        color: seat == 3
                                                            ? Color(0xffffffff)
                                                            : Color(0xff828282),
                                                        fontSize: 18,
                                                        fontFamily:
                                                            "poppin_semibold"),
                                                  ),
                                                ))
                                          ],
                                        ))),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TripPostedSuccessfully(),));
                    },
                    style: loginWithPhoneButtons(),
                    child: Text(
                      "Continue",
                      style: loginWithPhoneText(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
