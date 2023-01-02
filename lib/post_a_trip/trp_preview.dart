import 'package:beeride/post_a_trip/preview_trip_activity.dart';
import 'package:beeride/setting/driver_profile.dart';
import 'package:beeride/ui_helper/button_styles.dart';
import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/material.dart';

class TripPreview extends StatefulWidget {
  @override
  State<TripPreview> createState() => _TripPreviewState();
}

class _TripPreviewState extends State<TripPreview> {
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
                  height: 170,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              height: 60,
                              width: 60,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/profile.png"),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Khubaib",
                              style: pageHeading(),
                            ),
                            Image.asset(
                              "assets/images/verify.png",
                              height: 14,
                              width: 13,
                            ),
                            Expanded(
                                child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Driver_profile(),
                                    ));
                              },
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: const Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  size: 30,
                                ),
                              ),
                            )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Calgary",
                                  style: yellowText(),
                                ),
                                Text(
                                  "Calgary, AB, Canada",
                                  style: detailsHintSize(),
                                ),
                              ],
                            ),
                            Text(
                              "Wed, Nov 23 at 6:30am",
                              style: detailsSize(),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Banff",
                                  style: yellowText(),
                                ),
                                Text(
                                  "Banff, AB, Canada",
                                  style: detailsHintSize(),
                                ),
                              ],
                            ),
                            Text(
                              "est. 8:15",
                              style: detailsSize(),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: width / 2.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      alignment: Alignment.center,
                      child: Text(
                        "2 Seats total",
                        style: pageHeading2(),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: width / 2.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      alignment: Alignment.center,
                      child: const Text(
                        "\$20 per seat",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                            fontFamily: "poppin_semibold"),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: width,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Booked",
                        style: pageHeading2(),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/images/seat_offwhite.png",
                        height: 26,
                        width: 26,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/images/seat_offwhite.png",
                        height: 26,
                        width: 26,
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
                              width: width / 2.5,
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
                SizedBox(
                  height: 200,
                  width: width,
                  child: Image.asset("assets/images/map.png"),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PreviewTripActiivty(),
                          ));
                    },
                    style: loginWithPhoneButtons(),
                    child: Text(
                      "Review trip activity",
                      style: loginWithPhoneText(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
