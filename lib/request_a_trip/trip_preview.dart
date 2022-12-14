import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui_helper/text_styles.dart';

class TripPreview extends StatelessWidget {
  var name = "Ashely";
  var date = "Tomorrow at 6:30 am";
  var orign = "Calgary";
  var destination = "Banff";
  var description =
      "Pickup at Chinook LRT/heritage LRT Drop off in calgary will be Chinook LRT/heritage Lrt Do not ask for any other pickup stops!";

  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height+52,
            width: width,
            margin: EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_sharp,
                          size: 30,
                        )),
                    Text(
                      "View matches",
                      style: pageHeading(),
                    ),
                    const Icon(
                      Icons.settings,
                      size: 30,
                    ),
                  ],
                ),
                Container(
                  height: 180,
                  width: width,
                  decoration: BoxDecoration(
                      color: Color(0xfffdfdfd),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height / 7,
                        width: width - 40,
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            const SizedBox(
                              height: 60,
                              width: 60,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/profile.png"),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Text(
                                      name,
                                      style: pageHeading(),
                                    ),
                                    Image.asset(
                                      "assets/images/verify.png",
                                      height: 17,
                                      width: 17,
                                    ),
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    print("hello world");
                                  },
                                  child: Icon(Icons.arrow_forward_ios),
                                )),
                          ],
                        ),
                      ),
                      Divider(
                        height: 2,
                        color: Color(0xfff2f2f2),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            orign,
                            style: yellowText(),
                          ),
                          Text(
                            date,
                            style: detailsSize(),
                          ),
                        ],
                      ),
                      Text(
                        "Calgary, AB, Canada",
                        style: offWhiteText(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            destination,
                            style: yellowText(),
                          ),
                          Text(
                            "est. 8:15",
                            style: detailsSize(),
                          ),
                        ],
                      ),
                      Text(
                        "Banff, AB, Canada",
                        style: offWhiteText(),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: width / 2 - 40,
                      color: Color(0xfff4f4f4),
                      alignment: Alignment.center,
                      child: Text(
                        "2 Seats left",
                        style: subHeading(),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: width / 2 - 40,
                      color: Color(0xfff4f4f4),
                      alignment: Alignment.center,
                      child: Text(
                        "2 Seats left",
                        style: subHeadingGreen(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color(0xfff4f4f4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trip Discription",
                        style: yellowText(),
                      ),
                      Text(
                        description,
                        style: detailsSize(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  color: Color(0xfff4f4f4),
                  width: width,
                  height: 50,
                  child: Row(children: [
                    Text("Booked:", style: subHeading(),),
                    const SizedBox(width: 10,),
                    Image.asset("assets/images/seatbooked.png", height:26, width: 26,),
                    const SizedBox(width: 10,),
                    Image.asset("assets/images/seatbooked.png", height:26, width: 26,),
                  ],),
                ),
                Image.asset("assets/images/map.png", height: 214,width: width,),
                const SizedBox(height: 10,),


                Container(
                  width: width,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: (width * 1.35) / 2,
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                            child: 
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(color: Color(0xfff1ad00),borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    "Request to book",
                                    style: whiteDetailedText(),
                                  ),
                                ),


                        ),
                      ),
                      const SizedBox(width: 10,),
                       Container(
                        height: 50,
                        width: width / 6.5,
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(color: Color(0xfff1ad00),borderRadius: BorderRadius.circular(10)),
                              child: const Icon(
                                Icons.message,
                                color: Color(0xffffffff),
                              )),
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
