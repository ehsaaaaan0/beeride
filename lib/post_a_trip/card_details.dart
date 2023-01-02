import 'package:beeride/post_a_trip/request_posted.dart';
import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: width,
            margin: const EdgeInsets.only(top: 50, right: 20, left: 20),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 20),
                          child: SizedBox(child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons.arrow_back_sharp,size: 30,color: Colors.black,),
                          ),)),
                      Expanded(
                          child: Center(child: Text("Card Details",
                            style: pageName(),))
                      )
                    ],),
                  const SizedBox(height: 45),
                  const Text("Enter car details", style: TextStyle(
                      fontFamily: "poppin_regular",
                      fontSize: 20,
                      color: Colors.black)),
                  const SizedBox(height: 30),
                  Container(width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(border: Border.all(
                          color: const Color(0xffe7e7e7), width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(padding: EdgeInsets.only(left: 20),
                          child: TextField(decoration: InputDecoration(
                              hintText: "First and last name",
                              border: InputBorder.none),))),
                  const SizedBox(height: 30),
                  Container(padding: const EdgeInsets.only(left: 10, right: 10),
                      width: width,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffe7e7e7), width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(children: [
                        Container(width: MediaQuery 
                            .of(context)
                            .size
                            .width / 10,
                            alignment: Alignment.center,
                            child: const Icon(Icons.credit_card)),
                        SizedBox(width: MediaQuery
                            .of(context)
                            .size
                            .width / 2.5,
                            child: const TextField(decoration: InputDecoration(
                                hintText: "Card number",
                                border: InputBorder.none),)),
                        SizedBox(width: MediaQuery
                            .of(context)
                            .size
                            .width / 4,
                            child: const TextField(
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                  hintText: "MM/YY", border: InputBorder.none),)),
                        SizedBox(width: MediaQuery
                            .of(context)
                            .size
                            .width / 12,
                            child: const TextField(decoration: InputDecoration(
                                hintText: "CVV", border: InputBorder.none),)),
                      ])),
                  const SizedBox(height: 50),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: width,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RequestPosted(),));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xfff1ad00),
                            shape: const StadiumBorder()),
                        child: const Text(
                          "Add card",
                          style: TextStyle(
                              fontSize: 17, fontFamily: "poppin_regular"),
                        ),
                      ),
                    ),
                  )
                ]),),
        )
    );
  }
}