



import 'package:beeride/ui_helper/button_styles.dart';
import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class EditPhoneNumber extends StatelessWidget{
  var phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height / 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                                "Personal details",
                                textAlign: TextAlign.center,
                                style: pageName(),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Change your number",
                        style: pageHeading(),
                      ),
                      Text(
                        "Please enter your phone number with a valid country code",
                        style: detailsSize(),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 4,
                  child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Enter You Number",
                            style: subHeading(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                              width: width,
                              child: IntlPhoneField(
                                controller: phoneNumber,
                                decoration: const InputDecoration(
                                  labelText: 'Phone Number',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                initialCountryCode: 'CA',
                                onChanged: (phone) {
                                  //when phone number country code is changed
                                  print(phone.completeNumber); //get complete number
                                  print(phone.countryCode); // get country code only
                                  print(phone.number); // only phone number
                                },
                              )),
                        ],
                      )),
                ),
                SizedBox(
                  height: height / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: width,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmOTP(),));
                          },
                          style: loginWithPhoneButtons(),
                          child: Text(
                            "Continue",
                            style: loginWithPhoneText(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
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


class ConfirmOTP extends StatelessWidget{
  var phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.only(right: 20, left: 20, top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height / 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                                "Personal details",
                                textAlign: TextAlign.center,
                                style: pageName(),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Enter verification code",
                        style: pageHeading(),
                      ),
                      Text(
                        "Enter the 6-digit code we sent in a text message to: +92 303345955",
                        style: detailsSize(),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 4,
                  child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Enter OTP",
                            style: subHeading(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                              width: width,
                              child: TextField(
                                controller: phoneNumber,
                                decoration: const InputDecoration(
                                  hintText: 'OTP COde',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(),
                                  ),
                                ),

                              )),
                        ],
                      )),
                ),
                SizedBox(
                  height: height / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Request a new code if you don’t recive one in the next minute",
                        style: detailsSize(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: width,
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
                        height: 40,
                      ),
                    ],
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

