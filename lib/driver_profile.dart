import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Driver_profile extends StatelessWidget{
  var names = ["Babar Azam", "kanwal"];
  var review = ["We felt comfortable and enjoyed the tripe, Ashley was very accomodating We felt comfertale and enjoyed the tripe, Ashley was very accomodating  ","We felt comfertale and enjoyed the tripe, Ashley was very accomodating We felt comfertale and enjoyed the tripe, Ashley was very accomodating  "];
  var images = [
    CircleAvatar(backgroundImage: AssetImage('assets/images/profile.png', ),),
    CircleAvatar(backgroundImage: AssetImage('assets/images/profile.jpg', ),),
     ];
  var eventname=["Calgary to Banff","Calgary to sidny"];
  var charges=["22","21"];
  var time=["tomorrow at 12:45pm","tomorrow at 10:45pm"];
  var seat=["1 seat","2 seat"];
  var eventimages = [
    CircleAvatar(backgroundImage: AssetImage('assets/images/eventprofile.png', ),),
    CircleAvatar(backgroundImage: AssetImage('assets/images/eventprofile.png', ),),
  ];
  @override
  Widget build(BuildContext context) {

    var status = MediaQuery.of(context).viewPadding.top;
    var mqwidth = MediaQuery.of(context).size.width;
    var mqheight = MediaQuery.of(context).size.height - status;
    
    return Scaffold( backgroundColor: Color(0xfffbf9f9) ,
      body: SafeArea(

          child: Container(
            height: mqheight,
            width: mqwidth,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Icon(Icons.arrow_back, size: 40,),
                     
                        Expanded(
                            child: Center(
                                child: Text('Khubaib Profile', style: pageHeading(),))),
                    
                    ],),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                    
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: Column(children: [

                  Container(


                    child: Row(

                      children: [
                        SizedBox(
                          height: 88,
                          width: 88,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/driver.png'),


                          ),
                        ),
                            SizedBox(width: 10,),

                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Jennifer', style: pageHeading(),),
                                    Image(image: AssetImage('assets/images/verify.png'), height: 20,width: 20,),
                                  ],
                                ),
                                Text('Joined March 2022', style: subHeading(),),
                                Row(
                                  children: [
                                    Text('Female,', style: detailsSize(),),
                                    Text(' 47 years old', style: detailsSize(),),
                                  ],
                                ),
                              ],
                            )

                      ],
                    ),
                  ),
                  Container(width: double.infinity,child: Text('Bio', style: yellowText())),
                  Container(

                   child: Text('“I love driving and interacting with new '
                       'people from diverse background, i am driving daily'
                       ' to Banff from Calgary as i work there . I leave '
                       'early in the morning and return in the evening! .”', style: biotext(),),
                    padding: const EdgeInsets.only(right: 10, left: 10, top: 10),

                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      children: [
                        CircleAvatar(backgroundImage: AssetImage('assets/images/nosmoke.png'),backgroundColor: Colors.white, radius: 10,),
                      Text('No strong scents'),
                      Icon(Icons.chat, color: Colors.grey,),
                      Text('I don’t mind chats'),
                    ],),
                  ),
                  ],),),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration:
                    BoxDecoration(

                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container( child: Row(
                          children: [
                            Icon(Icons.car_crash, size: 30,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Text('114', style: smalltext(),),
                                Text('people driven',style: smalltext(),),
                              ],
                            ),
                          ],
                        )),
                        Container( child: Row(
                          children: [
                            Icon(Icons.personal_injury,size: 30),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('2',style: smalltext(),),
                                Text('Rides taken',style: smalltext(),),
                              ],
                            ),
                          ],
                        )),
                        Container( child: Row(
                          children: [
                            Icon(Icons.add_road,size: 30),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('2204',style: smalltext(),),
                                Text('Km started',style: smalltext(),),
                              ],
                            ),
                          ],
                        )),



                      ],),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('4.9 Average rating', style: simpleText(),),
                        Image(
                          image: AssetImage('assets/images/fivestar.png',),
                          height: 50,
                          width: 100,
                        ),
                      ],),
                      Text('4.9 Timeliness'),
                      Text('4.9 Comunication'),
                      Text('4.9 Safety'),
                    ],),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),

                  height: 280,
                  width: double.infinity,

                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           children: [
                             Text('20 ', style: pageHeading(),),
                             Text('Reviews', style: pageHeading(),),
                           ],
                         ),
                         Expanded(child:
                    ListView.builder(itemBuilder: (context, index) {
                          return Container(margin: EdgeInsets.only(top:20),width: double.infinity,child:Row(crossAxisAlignment: CrossAxisAlignment.start,children:[
                            images[index],
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                Text(names[index], style: const TextStyle(fontFamily: "poppin_regular",fontSize: 16, color: Colors.black)),

                                Container(width: double.infinity,child: Text(review[index],maxLines: 100,overflow: TextOverflow.ellipsis ,style: const TextStyle(fontFamily: "poppin_regular",fontSize: 12, color: Color(0xff767676)))),
                              ],),
                            )
                          ]));
                    },itemCount: names.length,),),
                       ],
                     ),

                  ),
                  SizedBox(height: 20,),
                  Container(

                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),

                    height: 170,
                    width: double.infinity,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('2 ', style: pageHeading(),),
                            Text('upcoming events', style: pageHeading(),),
                          ],
                        ),
                        Expanded(child:
                        ListView.builder(itemBuilder: (context, index) {
                          return Container(margin: EdgeInsets.only(top:20),width: double.infinity,child:Row(crossAxisAlignment: CrossAxisAlignment.start,children:[
                            eventimages[index],
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(eventname[index], style: const TextStyle(fontFamily: "poppin_regular",fontSize: 12, color: Colors.black)),
                                    Text(charges[index], style: const TextStyle(fontFamily: "poppin_regular",fontSize: 12, color: Colors.lightGreenAccent,)),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                Container(child: Text(time[index],maxLines: 100,overflow: TextOverflow.ellipsis ,style: const TextStyle(fontFamily: "poppin_regular",fontSize: 10, color: Color(0xff767676)),),),
                                Container(child: Text(seat[index], maxLines: 100,overflow: TextOverflow.ellipsis ,style: const TextStyle(fontFamily: "poppin_regular",fontSize: 10, color: Color(0xff767676),),),),
                                ],),
                                    //maxLines: 100,overflow: TextOverflow.ellipsis ,style: const TextStyle(fontFamily: "poppin_regular",fontSize: 12, color: Color(0xff767676)))),
                              ],),
                            )
                          ]));
                        },itemCount: names.length,),),
                      ],
                    ),

                  ),
                ],
              ),
            ),
          ),

      )
    );
  }
  }