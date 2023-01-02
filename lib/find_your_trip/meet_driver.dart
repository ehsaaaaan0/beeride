import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../post_a_trip/preview_trip_activity.dart';
import '../setting/driver_profile.dart';
import '../ui_helper/button_styles.dart';
import '../ui_helper/text_styles.dart';

class Meet_driver2 extends StatefulWidget {
  @override
  State<Meet_driver2> createState() => _Meet_driver2State();
}

class _Meet_driver2State extends State<Meet_driver2> {
  int large = 0, winter = 0, bikes = 0, snow = 0, pets = 0;

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
            color: const Color(0xfffbf9f9),
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
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
                        child: Center(
                          child: Text(
                            "Trip preview",
                            style: pageName(),
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: width,
                  height: 340,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    height: 88,
                                    width: 88,
                                    child: CircleAvatar(
                                      backgroundImage:
                                      AssetImage('assets/images/driver.png'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Jennifer',
                                            style: pageHeading(),
                                          ),
                                          const Image(
                                            image: AssetImage(
                                                'assets/images/verify.png'),
                                            height: 20,
                                            width: 20,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Joined March 2022',
                                        style: subHeading(),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Female,',
                                            style: detailsSize(),
                                          ),
                                          Text(
                                            ' 47 years old',
                                            style: detailsSize(),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                  width: double.infinity,
                                  child: Text('Bio', style: yellowText())),
                              Container(
                                padding: const EdgeInsets.only(
                                    right: 10, left: 10, top: 10),
                                child: Text(
                                  '“I love driving and interacting with new '
                                      'people from diverse background, i am driving daily'
                                      ' to Banff from Calgary as i work there . I leave '
                                      'early in the morning and return in the evening! .”',
                                  style: biotext(),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: const [
                                  CircleAvatar(
                                    backgroundImage:
                                    AssetImage('assets/images/nosmoke.png'),
                                    backgroundColor: Colors.white,
                                    radius: 10,
                                  ),
                                  Text('No strong scents'),
                                  Icon(
                                    Icons.chat,
                                    color: Colors.grey,
                                  ),
                                  Text('I don’t mind chats'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),


                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '4.9 Average rating',
                        style: simpleText(),
                      ),
                      const Image(
                        image: AssetImage(
                          'assets/images/fivestar.png',
                        ),
                        height: 50,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: width,
                  height: 170,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/car_img.png",
                            width: 110,
                            height: 63,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nisan Rogue",
                                style: pageHeading2(),
                              ),
                              Text(
                                "Red, 2013",
                                style: smallSize(),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (large == 1) {
                                  large = 0;
                                } else {
                                  large = 1;
                                }
                              });
                            },
                            child: Container(
                              height: 35,
                              width: width / 4,
                              decoration: BoxDecoration(
                                  color: large == 0
                                      ? const Color(0xffdddddd)
                                      : Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.badge,
                                    size: 18,
                                    color: large == 0
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Large",
                                    style: TextStyle(
                                        fontFamily: "poppin_regular",
                                        fontSize: 12,
                                        color: large == 0
                                            ? Colors.black
                                            : Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (winter == 1) {
                                  winter = 0;
                                } else {
                                  winter = 1;
                                }
                              });
                            },
                            child: Container(
                              height: 35,
                              width: width / 3,
                              decoration: BoxDecoration(
                                  color: winter == 0
                                      ? const Color(0xffdddddd)
                                      : Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.snowing,
                                      size: 18,
                                      color: winter == 0
                                          ? Colors.black
                                          : Colors.white),
                                  Text("Winter tries",
                                      style: TextStyle(
                                          fontFamily: "poppin_regular",
                                          fontSize: 12,
                                          color: winter == 0
                                              ? Colors.black
                                              : Colors.white))
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (bikes == 1) {
                                  bikes = 0;
                                } else {
                                  bikes = 1;
                                }
                              });
                            },
                            child: Container(
                              height: 35,
                              width: width / 4,
                              decoration: BoxDecoration(
                                  color: bikes == 0
                                      ? const Color(0xffdddddd)
                                      : Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.pedal_bike_sharp,
                                    size: 18,
                                    color: bikes == 0
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Bikes",
                                    style: TextStyle(
                                        fontFamily: "poppin_regular",
                                        fontSize: 12,
                                        color: bikes == 0
                                            ? Colors.black
                                            : Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (snow == 1) {
                                  snow = 0;
                                } else {
                                  snow = 1;
                                }
                              });
                            },
                            child: Container(
                              height: 35,
                              width: width / 2.4,
                              decoration: BoxDecoration(
                                  color: snow == 0
                                      ? const Color(0xffdddddd)
                                      : Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.snowboarding,
                                    size: 18,
                                    color:
                                    snow == 0 ? Colors.black : Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Skin / snowboard",
                                    style: TextStyle(
                                        fontFamily: "poppin_regular",
                                        fontSize: 12,
                                        color: snow == 0
                                            ? Colors.black
                                            : Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (pets == 1) {
                                  pets = 0;
                                } else {
                                  pets = 1;
                                }
                              });
                            },
                            child: Container(
                              height: 35,
                              width: width / 3.5,
                              decoration: BoxDecoration(
                                  color: pets == 0
                                      ? const Color(0xffdddddd)
                                      : Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.pets_sharp,
                                      size: 18,
                                      color: winter == 0
                                          ? Colors.black
                                          : Colors.white),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text("Pets",
                                      style: TextStyle(
                                          fontFamily: "poppin_regular",
                                          fontSize: 12,
                                          color: pets == 0
                                              ? Colors.black
                                              : Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}