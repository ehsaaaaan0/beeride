
import 'package:beeride/setting/driver_profile.dart';
import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/material.dart';

class TripsPreview extends StatefulWidget {
  @override
  State<TripsPreview> createState() => _TripsPreviewState();
}

class _TripsPreviewState extends State<TripsPreview> {
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
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Trip Discription", style: TextStyle(color:Colors.blue,),),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text("Pickup at Chinook LRT/heritage LRT Drop off in calgary will be Chinook LRT/heritage Lrt"
                        "Do not ask for any other pickup stops"),
                    ],
                  ),
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
                SizedBox(
                  height: 200,
                  width: width,
                  child: Image.asset("assets/images/map.png"),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Color(0xff0073C2),),
                      margin: EdgeInsets.all(5),
                      width: width/1.5,
                      height: 50,
                      child: Center(child: Text('Request to book', style:whiteText(),)),
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Color(0xff0073C2),),
                      margin: EdgeInsets.all(5),
                      width: width/6,
                      height: 50,
                      child: Center(child: Icon(Icons.message, color: Colors.white,),),
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