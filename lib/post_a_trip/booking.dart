import 'package:flutter/material.dart';

import '../ui_helper/button_styles.dart';
import '../ui_helper/text_styles.dart';
import 'booking_schedule.dart';

class Booking extends StatefulWidget {
  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  var price = 20;
  var total = 4.20;
  var bookingFee = 4.20;
  var seat=1;

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
          color: const Color(0xfffbf9f9),
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                InkWell(onTap: () {
                  Navigator.pop(context);
                },child: const Icon(Icons.arrow_back_sharp,size: 30, color: Colors.black,),),
                Expanded(child: Center(child: Text("Booking", style: pageName(),),),),
              ],),
              const SizedBox(height: 25,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Text("Seats needed", style: subHeading(),),
                Row(children: [
                  InkWell(onTap: () {
                    setState(() {
                      if(seat==1){
                        seat=1;
                      }else{
                        seat--;
                        price = price-20;
                        total = price+4.20;
                      }
                    });
                  },child: Container(height: 35,width: 35,alignment: Alignment.center, decoration: BoxDecoration(color: const Color(0xffd9d9d9), borderRadius: BorderRadius.circular(5)),child:  Text("-", style: pageName(),),),),

                  const SizedBox(width: 5,),
                  Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),child: Text("$seat", style: subHeading(),),
                  ),
                  const SizedBox(width: 5,),

                  InkWell(onTap: () {
                    setState(() {
                      if(seat==3){
                        seat=3;
                      }else{
                        seat++;
                        price = price+20;
                        total = price+4.20;
                      }
                    });
                  },child: Container(height: 35,width: 35,alignment: Alignment.center, decoration: BoxDecoration(color: const Color(0xff367cff), borderRadius: BorderRadius.circular(5)),child: const Icon(Icons.add, size: 30,color: Colors.black,),),)

                ],)

              ],),
              const SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Text("$seat seat", style: searchOfPlaces(),),
                Text("\$$price",style: searchOfPlaces(),)
              ],),
              const SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Text("Booking Fees", style: searchOfPlaces(),),
                Text("\$$bookingFee",style: searchOfPlaces(),)
              ],),
              const SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Text("Total", style: biotext(),),
                Text("\$$total",style: greenSmall(),)
              ],),
              const SizedBox(height: 20,),
              Text("Promo code (optional)", style: pageHeading2(),),
              const SizedBox(height: 10,),
              SizedBox(width: width,height: 50,child: Card(elevation: 1,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),child: Padding(padding: EdgeInsets.only(left: 20),child: TextField(decoration: InputDecoration(border: InputBorder.none,hintText: 'Enter a valid  promo code'))),),),
              Expanded(
                child: Container(
                  width: width,
                  height: 50,
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetails(),));
                      },
                      style: loginWithPhoneButtons(),
                      child: Text(
                        "Request to book",
                        style: loginWithPhoneText(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}




