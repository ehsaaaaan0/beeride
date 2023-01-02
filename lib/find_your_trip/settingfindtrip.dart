import 'package:beeride/setting/driver_profile.dart';
import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/material.dart';

import 'driver_inbox.dart';

class Settingfindtrip extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height-100,
            width: width,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Row(
                  children: [
                    InkWell(onTap: () {
                      Navigator.pop(context);
                    },child: const Icon(Icons.arrow_back_sharp),),
                    Expanded(
                      child: Center(
                        child: Text("Request Setting",
                            style: pageName()),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30,),


                InkWell(
                  onTap: () {},
                  child: Card(elevation: 1,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),child: Container(
                    width: width,height: 60,
                    margin: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Trip priview",style: TextStyle(fontFamily: "poppin_semibold", fontSize: 14, color: Colors.black),),
                        Icon(Icons.arrow_forward_sharp, size: 25,)
                      ],
                    ),
                  ),),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Driver_profile(),));
                  },
                  child: Card(elevation: 1,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),child: Container(
                    width: width,height: 60,
                    margin: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Ashley profile",style: TextStyle(fontFamily: "poppin_semibold", fontSize: 14, color: Colors.black),),
                        Icon(Icons.arrow_forward_sharp, size: 25,)
                      ],
                    ),
                  ),),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Driver_profile(),));
                  },
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Color(0xff0073C2),),
                      margin: EdgeInsets.all(5),
                      width: width/1.2,
                      height: 50,
                      child: Center(child: Text('Continue', style:whiteText(),)),
                    ),
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