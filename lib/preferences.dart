import 'package:beeride/ui_helper/button_styles.dart';
import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Preferences extends StatefulWidget {
  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  int smoking =0;
  int night=0;
  int chat=0;
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
            margin: EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                      'Preferences',
                      style: pageName(),
                    ))),
                  ],
                ),
                const SizedBox(height: 10,),
                Text("Tell other about your predrences", style: pageName(),),
                Text("This information will be displayed on your profile and your trips", style: subHeading(),),
                const SizedBox(height: 30,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [

                  InkWell(
                    onTap: () {
                      setState(() {
                        smoking=0;
                      });
                    },
                    child: Container(width: width/2.5, height: 100, child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

                      SizedBox(height: 50, child: smoking==0?Image.asset("assets/images/smoking.png"):Image.asset("assets/images/smoking_non.png"),),
                      Text("scents ok", style: TextStyle(fontFamily: "poppin_regular", fontSize: 12, color: smoking==0?Colors.black:Color(0xffa9a9a9)),),

                    ],),),
                  ),
                  InkWell(onTap: () {
                    setState(() {
                      smoking=1;
                    });
                  },child: Container(width: width/2.5, height: 100,child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

                    SizedBox(height: 50, child: smoking==1?Image.asset("assets/images/non_smoking.png"):Image.asset("assets/images/han_smoking.png"),),
                    Text("scents ok", style: TextStyle(fontFamily: "poppin_regular", fontSize: 12, color: smoking==1?Colors.black:Color(0xffa9a9a9)),),
                  ],),),)
                ],),
                SizedBox(height: 30,),
                Divider(height: 2, color: Color(0xffa9a9a9),),
                SizedBox(height: 30,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,children: [
                  InkWell(onTap: () {
                    setState(() {
                      chat=0;
                    });
                  },child: Container(width: width/3.5,height: 100,child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

                    SizedBox(height: 50, child: chat==0?Image.asset("assets/images/moon2.png"):Image.asset("assets/images/moon1.png"),),
                    Text("I like quite", style: TextStyle(fontFamily: "poppin_regular", fontSize: 12, color: chat==0?Colors.black:Color(0xffa9a9a9)),),
                  ],),),),
                  InkWell(
                    onTap: () {
                      setState(() {
                        chat=1;
                      });
                    },
                    child: Container(width: width/3.5,height: 100,child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,children: [

                      SizedBox(height: 50, child: chat==1?Image.asset("assets/images/chat1.png"):Image.asset("assets/images/chat2.png"),),
                      Center(child: Text("i  don’t mind chat", textAlign: TextAlign.center,style: TextStyle(fontFamily: "poppin_regular", fontSize: 12, color: chat==1?Colors.black:Color(0xffa9a9a9)),),)
                    ],),),
                  ),
                  InkWell(onTap: () {
                    setState(() {
                      chat=2;
                    });
                  },child: Container(width: width/3.5,height: 100,child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,children: [

                    SizedBox(height: 50, child: chat==2?Image.asset("assets/images/chat3.png"):Image.asset("assets/images/chat0.png"),),
                    Center(child: Text("I’m pretty chatty",textAlign: TextAlign.center, style: TextStyle(fontFamily: "poppin_regular", fontSize: 12, color: chat==2?Colors.black:Color(0xffa9a9a9)),)),
                  ],),)),
                ],),


                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: loginWithPhoneButtons(),
                          child: Text(
                            "Update prefrences",
                            style: loginWithPhoneText(),
                          ),
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
