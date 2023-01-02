import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/material.dart';

import '../ui_helper/button_styles.dart';
import 'available_pessanger.dart';

class PreviewTripActiivty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var statusBar = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height-statusBar;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: width,
            color: Color(0xfffbf9f9),
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Text(
                        "Trip activity",
                        style: pageName(),
                      ),
                      InkWell(
                          onTap: () {},
                          child: const Icon(Icons.settings,
                              size: 30, color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(width: width,
                height: height/2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Calgary to Banff", style: pageNameBig(),),
                      const SizedBox(height: 5,),
                      Text("Saturday, October 29 at 2:00pm", style: pageHeading2(),),
                      const SizedBox(height: 35,),
                      Text("No activity, yet", style: offWhiteText(),)
                    ],
                  ),
                ),
                SizedBox(width: width,
                height: height/3,
                child: Column(mainAxisAlignment: MainAxisAlignment.end,children: [
                  SizedBox(
                    width: width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SelectPessanger(),));
                      },
                      style: loginWithPhoneButtons(),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Invite passengers",
                              style: loginWithPhoneText(),
                            ),
                          ),
                           Expanded(child: Container(padding: const EdgeInsets.only(right: 5),alignment: Alignment.centerRight,child: const Icon(Icons.arrow_forward_sharp, size: 30,)))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: loginWithPhoneButtons(),
                      child:  Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Share trip",
                              style: loginWithPhoneText(),
                            ),
                          ),
                          Expanded(child: Container(padding: const EdgeInsets.only(right: 5),alignment: Alignment.centerRight,child: const Icon(Icons.arrow_forward_sharp, size: 30,)))
                        ],
                      ),
                    ),
                  ),
                ],),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}