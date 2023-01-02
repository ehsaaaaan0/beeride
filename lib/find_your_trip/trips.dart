import 'package:beeride/find_your_trip/trip_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../request_a_trip/trip_preview.dart';
import '../ui_helper/text_styles.dart';

class Trips extends StatefulWidget{
  @override
  State<Trips> createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  var location=['Calgary, AB, Canada','Calgary, AB, Canadaa'];
  var seatleft=["1 seat left","1 seat needed"];
  var location1=['Banff, AB, Canada','Banff, AB, Canada'];
  var names = ["Khubaib", "Fawad"];
  var review = [
    "We felt comfortable and enjoyed the tripe, Ashley was very accomodating We felt comfertale and enjoyed the tripe, Ashley was very accomodating  ",
    "We felt comfertale and enjoyed the tripe, Ashley was very accomodating We felt comfertale and enjoyed the tripe, Ashley was very accomodating  "
  ];
  int luggage=0;
  var city =["calgary","calgary"];
  var city1=["Banff","Banff"];
  var rating= ["5","4"];
  var driven= ["347","247"];
  var charges = ["22", "21"];
  var time = ["tomorrow at 12:45pm", "tomorrow at 10:45pm"];
  var seat = ["1 seat", "2 seat"];
  var eventimages = [
    const CircleAvatar(
      backgroundImage: AssetImage(
        'assets/images/eventprofile.png',
      ),
    ),
    const CircleAvatar(
      backgroundImage: AssetImage(
        'assets/images/eventprofile.png',
      ),
    ),
  ];
  var carimages = [
    const Image(image: AssetImage('assets/images/car1.png')),
    const Image(image: AssetImage('assets/images/car2.png')),
  ];
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
                                'Trips',
                                style: pageName(),
                              ))),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      InkWell(
                        onTap: (){
                          setState(() {
                            luggage=1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: luggage==1? Colors.black:Colors.white70,
                              boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                          ),
                          height: 40,
                          width: mqwidth/3.7,
                          child: Center(
                            child: Text('All', style: TextStyle( fontFamily: "poppin_regular",
                              fontSize: 12,color: luggage==1? Colors.white: Colors.black, ),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            luggage=2;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: luggage==2? Colors.black:Colors.white70,
                              boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                          ),
                          height: 40,
                          width: mqwidth/3.7,
                          child: Center(
                            child: Text('Trips', style: TextStyle( fontFamily: "poppin_regular",
                              fontSize: 12,color: luggage==2? Colors.white: Colors.black, ),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            luggage=3;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: luggage==3? Colors.black:Colors.white70,
                              boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                          ),
                          height: 40,
                          width: mqwidth/3.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Text('Requests', style: TextStyle( fontFamily: "poppin_regular",
                                  fontSize: 12,color: luggage==3? Colors.white: Colors.black, ),),
                              )],),
                        ),
                      ),
                    ],),),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffFBF9F9),
                  ),
                  height: 370,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => TripsPreview(),));
                                },
                              child: Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  width: double.infinity,
                                  height: 150,
                                  child: Column(
                                    children: [
                                      Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            eventimages[index],
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(

                                              child: Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(names[index],
                                                            style: const TextStyle(
                                                                fontFamily:
                                                                "poppin_regular",
                                                                fontSize: 12,
                                                                color: Colors.black)),
                                                        Image(image: AssetImage('assets/images/verify.png',), height: 20,width: 20,),

                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                      children: [
                                                        Icon(Icons.star, color: Colors.deepOrange, size: 15,),
                                                        Text(
                                                          rating[index],
                                                          maxLines: 100,
                                                          overflow:
                                                          TextOverflow.ellipsis,
                                                          style: const TextStyle(
                                                              fontFamily:
                                                              "poppin_regular",
                                                              fontSize: 10,
                                                              color:
                                                              Color(0xff767676)),
                                                        ),
                                                        SizedBox(width: 15,),
                                                        Text(
                                                          driven[index],
                                                          maxLines: 100,
                                                          overflow:
                                                          TextOverflow.ellipsis,
                                                          style: const TextStyle(
                                                            fontFamily:
                                                            "poppin_regular",
                                                            fontSize: 10,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        const Text(
                                                          'driven',
                                                          maxLines: 100,
                                                          overflow:
                                                          TextOverflow.ellipsis,
                                                          style: TextStyle(
                                                            fontFamily:
                                                            "poppin_regular",
                                                            fontSize: 10,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    //maxLines: 100,overflow: TextOverflow.ellipsis ,style: const TextStyle(fontFamily: "poppin_regular",fontSize: 12, color: Color(0xff767676)))),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.centerRight,
                                                child: carimages[index],
                                                height: 50,
                                                width: 80,
                                              ),
                                            ),
                                          ]
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                          Text(
                                            time[index],
                                            maxLines: 100,
                                            overflow:
                                            TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                fontFamily:
                                                "poppin_regular",
                                                fontSize: 10,
                                                color:
                                                Colors.black),
                                          ),
                                          Text(
                                            seat[index],
                                            maxLines: 100,
                                            overflow:
                                            TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontFamily:
                                              "poppin_regular",
                                              fontSize: 10,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(children: [
                                        Container(
                                          width: mqwidth/6,
                                          child: Text(
                                            city[index],
                                            maxLines: 100,
                                            overflow:
                                            TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontFamily:
                                              "poppin_regular",
                                              fontSize: 10,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Container(
                                          width: mqwidth/2.5,
                                          child: Text(
                                            location[index],
                                            maxLines: 100,
                                            overflow:
                                            TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                fontFamily:
                                                "poppin_regular",
                                                fontSize: 10,
                                                color:
                                                Colors.black),
                                          ),
                                        ),
                                        Icon(Icons.cases_sharp),
                                        Icon(Icons.pets_rounded),
                                      ],),
                                      Row(children: [
                                        Container(
                                          width: mqwidth/6,
                                          child: Text(
                                            city1[index],
                                            maxLines: 100,
                                            overflow:
                                            TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontFamily:
                                              "poppin_regular",
                                              fontSize: 10,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          location1[index],
                                          maxLines: 100,
                                          overflow:
                                          TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontFamily:
                                              "poppin_regular",
                                              fontSize: 10,
                                              color:
                                              Colors.black),
                                        ),
                                      ],),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 120,

                                            height: 30,
                                            margin: EdgeInsets.all(5),
                                            padding: EdgeInsets.only(right: 5, left: 5),
                                            decoration: BoxDecoration(
                                                color: Color(0xffF1AD00),
                                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10),),

                                                boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                                            ),
                                            child:
                                            Center(
                                              child: Text(
                                                seatleft[index],
                                                maxLines: 100,
                                                overflow:
                                                TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    fontFamily:
                                                    "poppin_regular",
                                                    fontSize: 10,
                                                    color:
                                                    Colors.black),
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                              ),
                            );
                          },
                          itemCount: names.length,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 120,
                      height: 30,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.only(right: 5, left: 5),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),

                          boxShadow: const [BoxShadow(blurRadius: 1,color: Colors.grey)]
                      ),
                      child:
                      const Center(
                        child: Text(
                          "Post +",
                          maxLines: 100,
                          overflow:
                          TextOverflow.ellipsis,
                          style: TextStyle(
                              fontFamily:
                              "poppin_regular",
                              fontSize: 10,
                              color:
                              Colors.white),
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