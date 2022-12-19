import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

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
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                 const Center(
                   child: Text("Request Setting",
                      style: TextStyle(
                          fontFamily: "poppin_semibold",
                          fontSize: 22,
                          color: Colors.black)),
                 ),

                const SizedBox(height: 30,),
                Card(elevation: 1,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),child: Container(
                  width: width,height: 65,
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    children:   const [
                      SizedBox(height: 46,width: 46,child:
                        CircleAvatar(backgroundImage: AssetImage("assets/images/profile.jpg"),),),
                      SizedBox(width: 20,),
                      Expanded(child: Text("View profile",style: TextStyle(fontFamily: "poppin_semibold", fontSize: 16, color: Colors.black),)),
                      Expanded(child: Positioned( right: 2, child: Icon(Icons.arrow_forward_sharp, size: 30,)))
                    ],
                  ),
                ),),
                SizedBox(height:20),

                Card(elevation: 1,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),child: Container(
                  width: width,height: 60,
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Personal details",style: TextStyle(fontFamily: "poppin_semibold", fontSize: 14, color: Colors.black),),
                      Icon(Icons.arrow_forward_sharp, size: 25,)
                    ],
                  ),
                ),),
                Card(elevation: 1,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),child: Container(
                  width: width,height: 60,
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Preferences",style: TextStyle(fontFamily: "poppin_semibold", fontSize: 14, color: Colors.black),),
                      Icon(Icons.arrow_forward_sharp, size: 25,)
                    ],
                  ),
                ),),
                Card(elevation: 1,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),child: Container(
                  width: width,height: 60,
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Vehicles",style: TextStyle(fontFamily: "poppin_semibold", fontSize: 14, color: Colors.black),),
                      Icon(Icons.arrow_forward_sharp, size: 25,)
                    ],
                  ),
                ),),
                Card(elevation: 1,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),child: Container(
                  width: width,height: 60,
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Email address",style: TextStyle(fontFamily: "poppin_semibold", fontSize: 14, color: Colors.black),),
                      Icon(Icons.arrow_forward_sharp, size: 25,)
                    ],
                  ),
                ),),
                Card(elevation: 1,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),child: Container(
                  width: width,height: 60,
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Chnage password",style: TextStyle(fontFamily: "poppin_semibold", fontSize: 14, color: Colors.black),),
                      Icon(Icons.arrow_forward_sharp, size: 25,)
                    ],
                  ),
                ),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
