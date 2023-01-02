

import 'package:beeride/find_your_trip/settingfindtrip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main_home.dart';
import '../post_a_trip/trip_setting.dart';
import '../ui_helper/text_styles.dart';

class Driver_inbox extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width,
        margin: const EdgeInsets.only(top:50, left:20, right:20),
        child: Stack(
          children: [
            SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:  [
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainHomePage(),));
                },child: const Icon(Icons.arrow_back_sharp, size: 30,color: Colors.black,)),
                Text("Ashley", style: pageName()),
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Settingfindtrip(),));
                },child: const Icon(Icons.settings, size: 30, color: Colors.black,)),
              ],),
              const SizedBox(height:20),
              Row(children: [
                Image.asset("assets/images/profile.png",width: 40,height: 40,),
                const SizedBox(width: 20),
                Column(crossAxisAlignment: CrossAxisAlignment.start,children:const [
                  Text("Calagry to Banff", style: TextStyle(fontSize: 14, fontFamily: "poppin_semibold",color: Colors.black)),
                  Text("Tomorrow at 6:30am", style: TextStyle(fontSize: 14, fontFamily: "poppin_regular",color: Color(0xff6a6a6a))),
                ]),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text("\$20", style: TextStyle(fontSize: 14, fontFamily: "poppin_semibold",color: Colors.green)),
                    Text("2 seats", style: TextStyle(fontSize: 14, fontFamily: "poppin_regular",color: Colors.black)),
                  ],
                ))
              ],),
              const SizedBox(height: 20,),
              const Text("Ashley wrote this trip description ",style: TextStyle(fontFamily: "poppin_semibold",fontSize: 16, color: Colors.orange,),),
              const SizedBox(height: 10,),
              const Text("“I love driving and interacting with new people from diverse background, i am driving daily to Banff from Calgary as i work there . I leave early in the morning and return in the evening! .”", style: TextStyle(fontFamily: "poppin_regular",color: Color(0xff676767),fontSize: 12)),
              const SizedBox(height: 10,),

            ],),),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 10,bottom: 10,top: 10),
                height: 60,
                width: width,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.location_on,size: 30, ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Write message...",
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.blue,
                      elevation: 0,
                      child: const Icon(Icons.send,color: Colors.white,size: 18,),
                    ),
                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}