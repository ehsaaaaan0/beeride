import 'package:beeride/request_a_trip/trip_preview.dart';
import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewMatches extends StatelessWidget {
  var names = ["Babar", "kanwal"];
  var rating = ["5.0","4.5"];
  var rides = ["258","100"];
  var images = [Image.asset("assets/images/car1.png", height: 50,width: 90,),Image.asset("assets/images/car2.png",height: 50,width: 90,)];
  var date = ["Tomorrow at 6:30 am","Tomorrow at 4:30 am"];
  var orign = "Calgary";
  var destination = "Banff";
  var images_profile = [const CircleAvatar(
    backgroundImage: AssetImage(
        "assets/images/profile.jpg"),
  ),const CircleAvatar(
    backgroundImage: AssetImage(
        "assets/images/profile.png"),
  ),];
  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Color(0xffeaeaea),
            child: Container(
              height: height,
              width: width,
              margin: const EdgeInsets.only(left:20, right: 20,top: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                  InkWell( onTap: () {
                    Navigator.pop(context);
                  }, child:
                  const Icon(Icons.arrow_back_sharp,size: 30,)),
                   Expanded(child:Center(child: Text("View matches",style: pageHeading(),)),)
                ],),
                Expanded(child:
                ListView.builder(itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TripPreview(),)),
                    child: Container(
                        height: 200,
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
                                      width: 80,
                                      height: 100,
                                      child: Stack(
                                        alignment: AlignmentDirectional.topEnd,
                                        children:  [
                                          Positioned(
                                              top: 0,
                                              left: -55,
                                              child: SizedBox(
                                                height: 90,
                                                width: 170,
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
                                                height: 80,
                                                width: 160,
                                                child: images_profile[index],
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
                                                        names[index],
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
                                                        rating[index],
                                                        style: subHeading(),
                                                      ),
                                                      const SizedBox(
                                                        width: 9,
                                                      ),
                                                      Text(
                                                        rides[index]+" driven",
                                                        style: subHeading(),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
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
                                            date[index],
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

                                        ],
                                      ),
                                    ))
                              ],
                            ),
                            Positioned(top: 0,right: 0,child:
                            Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(20))),child: images[index],),),
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
                                  "1 Seat left 18\$",
                                  style: whiteText(),
                                ),
                              ),
                            ),
                          ],
                        )),
                  );
                },itemCount: 2,),),



              ],),
            ),
          ),
      ),
    );
  }
}
