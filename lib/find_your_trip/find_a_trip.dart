import 'package:beeride/find_your_trip/trips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../ui_helper/text_styles.dart';

class Find_a_trip extends StatefulWidget{
  @override
  State<Find_a_trip> createState() => _Find_a_tripState();
}

class _Find_a_tripState extends State<Find_a_trip> {
  var dateInput = TextEditingController();
  TextEditingController timeinput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var status = MediaQuery
        .of(context)
        .viewPadding
        .top;
    var mqwidth = MediaQuery
        .of(context)
        .size
        .width;
    var mqheight = MediaQuery
        .of(context)
        .size
        .height - status;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: mqheight,
          width: mqwidth,
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          )),
                      Expanded(
                          child: Center(
                              child: Text(
                                'Find a Trip',
                                style: pageName(),
                              ))),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.location_on),
                    Container(
                      width: mqwidth/1.27,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.only(right: 5, left: 5),
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                      ),
                      child:
                      TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(right: 10, left: 10),
                            hintStyle: detailsHintSize(),
                            hintText: 'Enter an origin'
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child:
                  Text('Destination', style: subHeading(),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.location_on),
                    Container(
                      width: mqwidth/1.27,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.only(right: 5, left: 5),
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                      ),
                      child:
                      TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(right: 10, left: 10),
                            hintStyle: detailsHintSize(),
                            hintText: 'Enter destination'
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child:
                  Row(
                    children: [
                      Text('Schedule', style: subHeading(),),
                      Text('(Optional)', style: offWhiteText(),),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: mqwidth / 2 - 30,
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
                      width: mqwidth / 2 - 30,
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
                const SizedBox(height: 15,),
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Trips(),));
                    },
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.black,),
                    margin: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 50,
                    child: Center(child: Text('Search Rides', style:whiteText(),)),
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