import 'package:beeride/ui_helper/button_styles.dart';
import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'edit_number.dart';

class Personal_details extends StatefulWidget {
  @override
  State<Personal_details> createState() => _Personal_detailsState();
}

class _Personal_detailsState extends State<Personal_details> {
  int _value = 1;
  int _type = 1;
  final dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var mqwidth = MediaQuery.of(context).size.width;
    var mqheight = MediaQuery.of(context).size.height - status;
    return Scaffold(
      backgroundColor: const Color(0xffFBF9F9),
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
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          )),
                      Expanded(
                          child: Center(
                              child: Text(
                        'Personal details',
                        style: pageName(),
                      ))),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    'Phone number',
                    style: subHeading(),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(blurRadius: 1, color: Colors.grey)
                        ]),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: mqwidth / 2,
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            enabled: false,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.only(right: 10, left: 10),
                                hintStyle: detailsHintSize(),
                                hintText: '+92 0334 8726398'),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => EditPhoneNumber(),)),
                          child: Container(
                            height: 50,
                            width: mqwidth / 3,
                            alignment: Alignment.center,
                            child: const Text(
                              "chnage",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: "poppin_regular",
                                fontSize: 12,
                                color: Color(0xff6a6a6a),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      //border: Border.all(width: 1, color: Colors.white,),
                      color: const Color(0xff71B9EB),
                      boxShadow: const [
                        BoxShadow(blurRadius: 1, color: Colors.grey)
                      ]),
                  child: Text(
                    'Please note: You can verfiy your name '
                    'by uploading a piece og office ID. Being verified'
                    ' makes you more trustworthy and appealing to other '
                    'users as both a driver  and passenger!',
                    style: detailsSize(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    'First Name',
                    style: subHeading(),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 1, color: Colors.grey)
                      ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.only(right: 10, left: 10),
                        hintStyle: detailsHintSize(),
                        hintText: 'Jennifer'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    'Last Name',
                    style: subHeading(),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 1, color: Colors.grey)
                      ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.only(right: 10, left: 10),
                        hintStyle: detailsHintSize(),
                        hintText: 'Lopes'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    'Date of Birth',
                    style: subHeading(),
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.only(right: 5, left: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(blurRadius: 1, color: Colors.grey)
                    ],
                  ),
                  child: TextField(
                    controller: dateInput,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.calendar_today),
                        labelText: "Date of Birth",
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
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(formattedDate);
                        setState(() {
                          dateInput.text = formattedDate;
                        });
                      } else {}
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    'Bio',
                    style: subHeading(),
                  ),
                ),
                Container(
                  height: 100,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 1, color: Colors.grey)
                      ]),
                  child: TextFormField(
                    maxLines: 10,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.only(right: 10, left: 10),
                        hintStyle: detailsHintSize(),
                        hintText: 'Example: i travel on weekends and would '
                            'love to meet people and share rides'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    'Select grender',
                    style: subHeading(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      //border: Border.all(width: 1, color: Colors.white,),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 1, color: Colors.grey)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Image(
                            image: AssetImage('assets/images/female.png'),
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Female'),
                        ],
                      ),
                      Radio(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      //border: Border.all(width: 1, color: Colors.white,),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 1, color: Colors.grey)
                      ]),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Image(
                            image: AssetImage('assets/images/male.png'),
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Male'),
                        ],
                      ),
                      Radio(
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    'User type',
                    style: subHeading(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      //border: Border.all(width: 1, color: Colors.white,),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 1, color: Colors.grey)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Image(
                            image:
                                AssetImage('assets/images/driver_mostly.png'),
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Passenger'),
                        ],
                      ),
                      Radio(
                        value: 1,
                        groupValue: _type,
                        onChanged: (value) {
                          setState(() {
                            _type = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      //border: Border.all(width: 1, color: Colors.white,),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 1, color: Colors.grey)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Image(
                            image:
                                AssetImage('assets/images/mostlypessanger.png'),
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Driver'),
                        ],
                      ),
                      Radio(
                        value: 2,
                        groupValue: _type,
                        onChanged: (value) {
                          setState(() {
                            _type = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  width: mqwidth,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: loginWithPhoneButtons(),
                    child: Text(
                      "Continue",
                      style: loginWithPhoneText(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
