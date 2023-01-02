import 'package:beeride/post_a_trip/payment.dart';
import 'package:flutter/material.dart';

import '../ui_helper/text_styles.dart';

class BookDetails extends StatefulWidget{
  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {

  List<String> items = ["Select any time","Within 24 hour","Within 6 hour", "Within 4 hour", "Within 2 hour","Within 1 hour"];
  String? selectedItem = "Select any time";

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(width: width,margin: const EdgeInsets.only(left:20, right:20, top:50),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox( child: InkWell(
                      onTap: () { Navigator.pop(context);},
                      child: const Icon(Icons.arrow_back_sharp,size: 30, color: Colors.black,),
                    ),),
                    Expanded(
                        child: Center(child: Text("Booking", style: pageName(),))
                    )
                  ],),
                const SizedBox(height:20),
                const Text("Message to driver", style: TextStyle(fontFamily: "poppin_regular", fontSize: 22, color: Colors.black)),
                const Text("Tell the driver why you’er travelling ",style: TextStyle(fontFamily: "poppin_regular", fontSize: 15, color: Color(0xff464646))),
                const SizedBox(height:20),
                Container(width: width, height: 110, margin: const EdgeInsets.only(top:5), padding: const EdgeInsets.only(left:10, right:10),decoration: BoxDecoration(border: Border.all(color: Color(0xffe9e9e9), width: 2),borderRadius: BorderRadius.circular(10))   ,child: TextField(minLines: 2,maxLines: 5,decoration: InputDecoration(border: InputBorder.none,hintText: "Tell the driver why you’er travelling"),)),
                const SizedBox(height:10),
                const Divider(height: 2,color: Color(0xffd3d0d0),),
                const SizedBox(height:20),
                const Text("Booking expiry", style: TextStyle(fontFamily: "poppin_regular", fontSize: 22, color: Colors.black)),
                const Text("Choose how quickly the driver has to respond to your request.cAfter this time,cyout booking will expire automatically",style: TextStyle(fontFamily: "poppin_regular", fontSize: 15, color: Color(0xff464646))),
                const SizedBox(height:20),
                Container(width: double.infinity, height: 50, margin: const EdgeInsets.only(top:5),  padding: const EdgeInsets.only(left:20, right:20),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffe9e9e9), width: 2),borderRadius: BorderRadius.circular(10)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(

                        value: selectedItem,
                        items: items
                            .map((item) =>  DropdownMenuItem(
                            value: item,child: Text(item, style: const TextStyle(fontSize: 16, fontFamily: "poppin_regular", color: Color(0xff4a4a4a)))))
                            .toList(),
                        onChanged: (item)=> setState(()=> selectedItem = item),
                      ),
                    )
                ),

                Container(
                  width: width,
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height/4,
                  child: SizedBox(
                    width: width,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xfff1ad00),
                          shape: const StadiumBorder()),
                      child: const Text(
                        "Continue",
                        style: TextStyle(fontSize: 17, fontFamily: "poppin_regular",color: Colors.white),
                      ),
                    ),
                  ),
                )
              ])),
        )
    );
  }
}