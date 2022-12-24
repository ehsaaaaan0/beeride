import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:beeride/ui_helper/card_style.dart';
import 'package:beeride/main_home.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as Path;
import 'package:async/async.dart';
import 'package:beeride/ui_helper/button_styles.dart';
import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginWithNumber extends StatelessWidget {
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
                            "Profile set-up",
                            textAlign: TextAlign.center,
                            style: pageName(),
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Enter Phone Number",
                        style: pageHeading(),
                      ),
                      Text(
                        "Enter your phone number and six digit verification will be sent on you number",
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
                      Text(
                        "By tapping “I agree”, you agree to the rules, to our terms of service and to our privacy and policy",
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
                            var phone = phoneNumber.text.toString();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OnBoarding(phone),
                                ));
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

class OnBoarding extends StatelessWidget {
  var phone;

  OnBoarding(var this.phone, {super.key});

  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height / 3,
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
                            "Onboarding",
                            textAlign: TextAlign.center,
                            style: pageName(),
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Enter Phone Number",
                        style: pageHeading(),
                      ),
                      Text(
                        "Enter your phone number and six digit verification will be sent on you number",
                        style: detailsSize(),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 3,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 65,
                        width: width,
                        child: Card(
                          elevation: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 7,
                              ),
                              Image.asset(
                                "assets/images/boardingCard.png",
                                height: 35,
                                width: 60,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  child: Text(
                                "We’re carpoolers, not taxis or uber",
                                style: subHeading(),
                              ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 65,
                        width: width,
                        child: Card(
                          elevation: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/boardingCash.png",
                                height: 35,
                                width: 60,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                  child: Text(
                                "No cash allowed",
                                style: subHeading(),
                              ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 65,
                        width: width,
                        child: Card(
                          elevation: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/boardingTime.png",
                                height: 35,
                                width: 60,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                  child: Text(
                                "Show up 10 minutes early",
                                style: subHeading(),
                              ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height / 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "By tapping “I agree”, you agree to the rules, to our terms of service and to our privacy and policy",
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ReviewPicture(phone),
                                ));
                          },
                          style: loginWithPhoneButtons(),
                          child: Text(
                            "I agree",
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

class ReviewPicture extends StatelessWidget {
  var phone;

  ReviewPicture(var this.phone, {super.key});

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
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            "Review picture",
                            textAlign: TextAlign.center,
                            style: pageName(),
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Add a picture",
                        style: pageHeading(),
                      ),
                      Text(
                        "Please follow these guidelines so other members can easily recognize you.",
                        style: detailsSize(),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 2,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 65,
                        width: width,
                        child: Card(
                          elevation: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 7,
                              ),
                              Image.asset(
                                "assets/images/smile.png",
                                height: 35,
                                width: 60,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  child: Text(
                                "Clearly show you face",
                                style: subHeading(),
                              ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 65,
                        width: width,
                        child: Card(
                          elevation: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/noglasses.png",
                                height: 35,
                                width: 60,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                  child: Text(
                                "No sunglasses",
                                style: subHeading(),
                              ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 65,
                        width: width,
                        child: Card(
                          elevation: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/groupPhone.png",
                                height: 35,
                                width: 60,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                  child: Text(
                                "No group photo",
                                style: subHeading(),
                              ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 65,
                        width: width,
                        child: Card(
                          elevation: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/pet.png",
                                height: 35,
                                width: 60,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                  child: Text(
                                "No pets",
                                style: subHeading(),
                              ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: width,
                      height: 100,
                      child: Image.asset("assets/images/stars.png"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CompleteProfile(phone),
                              ));
                        },
                        style: loginWithPhoneButtons(),
                        child: Text(
                          "I agree",
                          style: loginWithPhoneText(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CompleteProfile extends StatefulWidget {
  var phone;

  CompleteProfile(var this.phone, {super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState(phone);
}

class _CompleteProfileState extends State<CompleteProfile> {
  var phone;

  _CompleteProfileState(var this.phone);

  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  final dateInput = TextEditingController();
  final fullName = TextEditingController();
  final bio = TextEditingController();
  int gender = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: width,
            margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
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
                      "Profile set-up",
                      textAlign: TextAlign.center,
                      style: pageName(),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Complete your profile",
                  style: pageHeading(),
                ),
                Text(
                  "Add a profile photo name and bio to let other people know who you are",
                  style: detailsSize(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      pickImage();
                    },
                    child: SizedBox(
                      height: 115,
                      width: 115,
                      child: Stack(
                        clipBehavior: Clip.none,
                        fit: StackFit.expand,
                        children: [
                          image != null
                              ? ClipOval(
                                  child: Image.file(
                                  image!,
                                  fit: BoxFit.cover,
                                ))
                              : const CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/profile.png"),
                                ),
                          Positioned(
                              bottom: 0,
                              right: -30,
                              child: RawMaterialButton(
                                onPressed: () {},
                                elevation: 2.0,
                                fillColor: const Color(0xffffcd4e),
                                padding: const EdgeInsets.all(5.0),
                                shape: const CircleBorder(),
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Display name",
                  style: subHeading(),
                ),
                SizedBox(
                  height: 55,
                  width: width,
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: fullName,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Sultan Cheema',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Select Gender",
                  style: subHeading(),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      gender = 1;
                    });
                  },
                  child: Card(
                    margin: const EdgeInsets.only(top: 8),
                    elevation: 2,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: width,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/female.png",
                              height: 31,
                              width: 31,
                            ),
                            const Text('Female',
                                style: TextStyle(
                                    fontFamily: "poppin_regular",
                                    fontSize: 16,
                                    color: Color.fromRGBO(140, 140, 140, 100))),
                            Card(
                                child: Container(
                              height: 17,
                              width: 17,
                              decoration: BoxDecoration(
                                  color: gender == 1
                                      ? Color(0xffddcd4e)
                                      : const Color.fromRGBO(
                                          238, 238, 238, 100),
                                  borderRadius: BorderRadius.circular(250)),
                            ))
                          ],
                        ), //Column
                      ), //Padding
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      gender = 2;
                    });
                  },
                  child: Card(
                    margin: const EdgeInsets.only(top: 10),
                    elevation: 2,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: width,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/male.png",
                              height: 31,
                              width: 31,
                            ),
                            const Text('Male',
                                style: TextStyle(
                                    fontFamily: "poppin_regular",
                                    fontSize: 16,
                                    color: Color.fromRGBO(140, 140, 140, 100))),
                            Card(
                                child: Container(
                              height: 17,
                              width: 17,
                              decoration: BoxDecoration(
                                  color: gender == 2
                                      ? Color(0xffddcd4e)
                                      : const Color.fromRGBO(
                                          238, 238, 238, 100),
                                  borderRadius: BorderRadius.circular(250)),
                            ))
                          ],
                        ), //Column
                      ), //Padding
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.only(top: 10),
                  elevation: 2,
                  shadowColor: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
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
                ),
                const SizedBox(
                    width: double.infinity,
                    child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 8),
                        child: Text(
                          'Bio',
                          style: TextStyle(
                              fontFamily: "poppin_regular", fontSize: 17),
                        ))),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.only(top: 10),
                  elevation: 1,
                  shadowColor: Colors.black,
                  child: SizedBox(
                    width: double.infinity,
                    height: 101,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          controller: bio,
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  "Example: i travel on weekends and would love to meet people and share rides",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(140, 140, 140, 100))),
                        )), //Padding
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      String phoneNumber = phone;
                      String name = fullName.text.toString().trim();
                      String bio_ = bio.text.toString().trim();
                      String dob = dateInput.text.toString().trim();
                      String gen;
                      if (image == null) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          duration: Duration(seconds: 5),
                          content: Text('Please Select Image'),
                        ));
                      } else if (dob.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          duration: Duration(seconds: 5),
                          content: Text('Please Select Date Of Birth'),
                        ));
                      } else if (gender.isLowerThan(0)) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          duration: Duration(seconds: 5),
                          content: Text('Please Select Gender'),
                        ));
                      } else {
                        print("pressed2");
                        var subString = name.split(" ");
                        String firstName = subString[0];
                        String secondName = subString[1];
                        print("pressed3");
                        var subTime = dob.split("-");
                        String year = subTime[0];
                        String month = subTime[1];
                        String date = subTime[2];
                        print("pressed4");
                        if (gender == 0) {
                          gen = "female";
                        } else {
                          gen = "male";
                        }
                        print("pressed5");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HowWillUse(
                                  phoneNumber,
                                  firstName,
                                  secondName,
                                  bio_,
                                  year,
                                  month,
                                  date,
                                  gen,
                                  image!),
                            ));
                      }
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
        ),
      ),
    );
  }
}

class HowWillUse extends StatefulWidget {
  String phoneNumber, firstName, lastName, bio_, year, month, date, gen;
  File image;

  HowWillUse(this.phoneNumber, this.firstName, this.lastName, this.bio_,
      this.year, this.month, this.date, this.gen, this.image,
      {super.key});

  @override
  State<HowWillUse> createState() => _HowWillUseState(
      phoneNumber, firstName, lastName, bio_, year, month, date, gen, image);
}

class _HowWillUseState extends State<HowWillUse> {
  var appName = "Canva";
  int select = 0;
  String phoneNumber, firstName, lastName, bio, year, month, date, gen;
  File image;

  _HowWillUseState(
      String this.phoneNumber,
      String this.firstName,
      String this.lastName,
      this.bio,
      String this.year,
      String this.month,
      String this.date,
      String this.gen,
      this.image);

  register(String phoneNumber, firstName, lastName, bio, year, month, date, gen,
      roll, image) async {
    var rng = Random();
    String e = '@gmail.com';
    String news = String.fromCharCode(rng.nextInt(100000));
    String email = news + e;
    AlertDialog alert = AlertDialog(
      content: Row(children: [
        const CircularProgressIndicator(
          backgroundColor: Colors.red,
        ),
        Container(
            margin: const EdgeInsets.only(left: 7),
            child: const Text("  Creating Account...")),
      ]),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
    var url = 'https://poparide.canvasolutions.co.uk/public/api/add';
    Uri uri = Uri.parse(url);

    var request = http.MultipartRequest('POST', uri);
    request.fields['name']=firstName;
    request.fields['number']=phoneNumber;
    request.fields['status']='pending';
    request.fields['email']=email;
    request.fields['roll_as']=roll;
    request.fields['password']='random';
    request.fields['gender']=gen;
    request.fields['birth_month']=month;
    request.fields['birth_day']=date;
    request.fields['birth_year']=year;
    request.fields['description']=bio;
    var profilepicture = await http.MultipartFile.fromPath('profilepicture', image.path);
    request.files.add(profilepicture);
    var response = await request.send();
    print(response.statusCode);
    if(response.statusCode==200){
      Navigator.pop(context);
      print('success');
      print(response.request);
      print(response.contentLength);
      print(response.headers);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainHomePage(),
          ));
    } else {
      Navigator.pop(context);
      print('error');
    }
    }


  @override
  Widget build(BuildContext context) {
    var safe = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - safe;
    var width = MediaQuery.of(context).size.width - safe;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            margin: const EdgeInsets.only(left: 20, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(top: 20),
                    height: height / 3,
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
                                "Profile set-up",
                                textAlign: TextAlign.center,
                                style: pageName(),
                              ))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "How will you use $appName?",
                            style: pageHeading(),
                          ),
                          Text(
                            "Let us know how you intent to use $appName, this helps us send you relevant communication",
                            style: detailsSize(),
                          ),
                        ])),
                Container(
                    height: height / 4,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              select = 1;
                            });
                          },
                          child: SizedBox(
                            height: 126,
                            width: width / 2 - 20,
                            child: Card(
                              elevation: 10,
                              shadowColor:
                                  select == 1 ? Colors.blue : Colors.white,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/driver_mostly.png",
                                    height: 42,
                                    width: 56,
                                  ),
                                  Text(
                                    "Mostly as driver",
                                    style: detailsSize(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              select = 2;
                            });
                          },
                          child: SizedBox(
                            height: 126,
                            width: width / 2,
                            child: Card(
                              elevation: 10,
                              shadowColor:
                                  select == 2 ? Colors.red : Colors.white,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/mostlypessanger.png",
                                    height: 42,
                                    width: 56,
                                  ),
                                  Text(
                                    "Mostly as pessanger",
                                    style: detailsSize(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                Container(
                  height: height / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: width,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            if (select == 1) {
                              register(phoneNumber, firstName, lastName, bio,
                                  year, month, date, gen, "driver", image);
                            } else if (select == 2) {
                              register(phoneNumber, firstName, lastName, bio,
                                  year, month, date, gen, "preesanger", image);
                            }
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
