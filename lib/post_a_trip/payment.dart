import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/material.dart';

import 'card_details.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
            width: width,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_sharp,size: 30, color: Colors.black,),
                      ),
                    ),
                    Expanded(
                        child: Center(
                            child: Text(
                      "Payment",
                      style: pageName(),
                    )))
                  ],
                ),
                const SizedBox(height: 40),
                const Text("select a card to pay for this booking",
                    style: TextStyle(
                        fontFamily: "poppin_regular",
                        color: Colors.black,
                        fontSize: 18)),
                const SizedBox(height: 25),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CardDetails(),));
                  },
                  child: Container(
                      width: width,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffe7e7e7), width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text("+Add a new card",
                          style: TextStyle(
                              fontFamily: "poppin_regular",
                              fontSize: 16,
                              color: Colors.black))),
                ),
              ],
            )));
  }
}
