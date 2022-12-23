
import 'package:beeride/setting/add_vehicle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Vehicles extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height-status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 200,width:200,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Add_vehicle(),));
            },child: Text("Random")),)
          ],)
        ),
      ),
    );

  }

}