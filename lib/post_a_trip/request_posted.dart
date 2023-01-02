import 'package:beeride/post_a_trip/startchat_after_confirmation.dart';
import 'package:flutter/material.dart';

import '../ui_helper/text_styles.dart';

class RequestPosted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: width,
        margin:
            const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_sharp,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    )),
                 Expanded(
                    child: Center(
                        child: Text(
                  "Payment confirm",
                  style: pageName(),
                )))
              ],
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Image.asset(
                "assets/images/Group 990.png",
                height: 190,
                width: width,
              ),
              const Center(
                  child: Text(
                      "your booking request has been successfully sent to the driver Wait for the driver to accept or decline",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "poppin_regular",
                          fontSize: 14,
                          color: Colors.black))),
            ]),
            Container(
              width: width,
              alignment: Alignment.center,
              child: SizedBox(
                width: width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StartChatAFterConfirm(),));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xfff1ad00),
                      shape: const StadiumBorder()),
                  child: const Text(
                    "Return to inbox",
                    style:
                        TextStyle(fontSize: 17, fontFamily: "poppin_regular"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
