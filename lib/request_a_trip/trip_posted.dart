import 'package:beeride/request_a_trip/view_matches.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui_helper/button_styles.dart';
import '../ui_helper/text_styles.dart';

class TripPostedSuccessfully extends StatelessWidget {
  var name = "Fawad";
  var rating = "5.0";
  var rides = "258";
  var date = "Saturday, October 29 at 2:00pm";
  var orign = "Calgary";
  var destination = "Banff";
  var seats = "1";
  var tripDiscription =
      "I want to go to banff beacuse i have to vist my parents and i have’nt meet them for last 6 months and i realy have to vist them";

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
            color: Color(0xffeaeaea),
            child: Container(
              width: width,
              height: height,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            "Trip Request posted",
                            textAlign: TextAlign.center,
                            style: pageName(),
                          ))
                        ],
                      )),
                  Container(
                      height: height / 2,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    height: 120,
                                    child: Stack(
                                      alignment: AlignmentDirectional.topEnd,
                                      children: const [
                                        Positioned(
                                            top: 0,
                                            left: -55,
                                            child: SizedBox(
                                              height: 110,
                                              width: 190,
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    "assets/images/top_right.png"),
                                              ),
                                            ) //Icon
                                            ),
                                        Positioned(
                                            top: 5,
                                            left: -50,
                                            child: SizedBox(
                                              height: 100,
                                              width: 180,
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    "assets/images/profile.jpg"),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                      child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: height / 7,
                                        alignment: Alignment.center,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
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
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Color(0xfff1ad00),
                                                ),
                                                Text(
                                                  rating,
                                                  style: subHeading(),
                                                ),
                                                const SizedBox(
                                                  width: 9,
                                                ),
                                                Text(
                                                  "$rides driven",
                                                  style: subHeading(),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TripRequestedSetting(),)),
                                        child: Container(
                                            padding: EdgeInsets.only(right: 20),
                                            child: const Icon(
                                              Icons.settings,
                                              color: Color(0xfff1ad00),
                                            )),
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                              Expanded(
                                  child: Container(
                                margin:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      date,
                                      style: subHeading(),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          orign,
                                          style: yellowText(),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "$orign , AB, Canada",
                                          style: offWhiteText(),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          destination,
                                          style: yellowText(),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "$destination, AB, Canada",
                                          style: offWhiteText(),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "Trip description",
                                      style: yellowText(),
                                    ),
                                    Text(
                                      tripDiscription,
                                      style: detailsSize(),
                                    ),
                                  ],
                                ),
                              ))
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 40,
                              width: 120,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color(0xfff1ad00),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20)),
                              ),
                              child: Text(
                                "$seats Seat requested",
                                style: whiteText(),
                              ),
                            ),
                          ),
                        ],
                      )),

                  const SizedBox(height: 40,),
                   SizedBox(
                    width: width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ViewMatches(),));
                      },
                      style: loginWithPhoneButtons(),
                      child: Text(
                        "View matches",
                        style: buttonText(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class TripRequestedSetting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: height,
          height: width,
          margin: const EdgeInsets.only(top: 50,left: 20,right: 20),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                InkWell( onTap: () {
                  Navigator.pop(context);
                }, child:
                const Icon(Icons.arrow_back_sharp,size: 30,)),
                const Expanded(child:Center(child: Text("Request Setting",style: TextStyle(fontFamily: "poppin_semibold", fontSize: 22, color: Colors.black),)),)
              ],),
              const SizedBox(height: 35,),

              Card(elevation: 1,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),child: InkWell(
                onTap: () {

                },
                child: Container(
                  width: width,height: 60,
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Share Request",style: TextStyle(fontFamily: "poppin_semibold", fontSize: 14),),
                      Icon(Icons.arrow_forward_sharp, size: 25,)
                    ],
                  ),
                ),
              ),),
              Card(elevation: 1,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),child: Container(
                width: width,height: 60,
                margin: const EdgeInsets.only(left: 20,right: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Edit Request",style: TextStyle(fontFamily: "poppin_semibold", fontSize: 14),),
                    Icon(Icons.arrow_forward_sharp, size: 25,)
                  ],
                ),
              ),),
              Card(elevation: 1,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),child: Container(
                width: width,height: 60,
                margin: const EdgeInsets.only(left: 20,right: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Delete Request",style: TextStyle(fontFamily: "poppin_semibold", fontSize: 14, color: Colors.red),),
                    Icon(Icons.arrow_forward_sharp, size: 25,)
                  ],
                ),
              ),)


            ],
          ),
        ),
      ),
    );
  }

}
