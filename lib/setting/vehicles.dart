
import 'package:beeride/setting/add_vehicle.dart';
import 'package:beeride/setting/driver_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui_helper/text_styles.dart';

class Vehicles extends StatefulWidget{
  @override
  State<Vehicles> createState() => _VehiclesState();
}

class _VehiclesState extends State<Vehicles> {
  int luggage=0;
  int maxpeople=0;
  int large=0;
  int winter=0;
  int bike=0;
  int skin=0;
  int pet=0;
  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var mqwidth = MediaQuery.of(context).size.width;
    var mqheight = MediaQuery.of(context).size.height - status;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: mqheight,
          width: mqwidth,
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
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
                                'Vehicles',
                                style: pageName(),
                              ))),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            height: 63,
                            width: 101,
                            child: Image(
                              image:
                              AssetImage('assets/images/car2.png'),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              Row(
                                children: [
                                  Icon(Icons.edit,),
                                  Icon(Icons.delete),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Nisan Rogue',
                                    style: pageHeading(),
                                  ),

                                ],
                              ),

                              Row(
                                children: [
                                  Text(
                                    'Red,',
                                    style: detailsSize(),
                                  ),
                                  Text(
                                    ' 2013',
                                    style: detailsSize(),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(large==0){
                              large=1;
                            }
                            else{
                              large=0;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: large==0? Colors.white: Colors.black,
                              boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                          ),
                          height: 30,
                          width: mqwidth/3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.shopping_bag,color: large==0? Colors.black: Colors.white),
                              Text('Large', style: TextStyle(fontFamily: "poppin_regular",
                                fontSize: 8,color: large==0? Colors.black: Colors.white,),)
                            ],),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(winter==0){
                              winter=1;
                            }
                            else{
                              winter=0;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: winter==0?Colors.white:Colors.black ,
                              boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                          ),
                          height: 30,
                          width: mqwidth/4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.flare_outlined,color: winter==0? Colors.black: Colors.white),
                              Text('Winter tries',style: TextStyle(fontFamily: "poppin_regular",
                                fontSize: 8,color: winter==0? Colors.black: Colors.white,)),
                            ],),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(bike==0){
                              bike=1;
                            }
                            else{
                              bike=0;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: bike==0?Colors.white: Colors.black,
                              boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                          ),
                          height: 30,
                          width: mqwidth/4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.directions_bike_outlined,color: bike==0? Colors.black: Colors.white),
                              Text('Bikes',style: TextStyle(fontFamily: "poppin_regular",
                                fontSize: 8,color: bike==0? Colors.white: Colors.black,)),
                            ],),
                        ),
                      ),
                    ],
                  ),
                ),
          SizedBox(height: 15,),
          Container(
              child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              InkWell(
              onTap: (){
        setState(() {
        if(skin==0){
        skin=1;
        }
        else{
        skin=0;
        }
        });
        },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: skin==0? Colors.white: Colors.black,
                boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
            ),
            height: 30,
            width: mqwidth/3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.snowboarding,color: skin==0? Colors.black: Colors.white),
                Text('Skin / snowboard', style: TextStyle(fontFamily: "poppin_regular",
                  fontSize: 8,color: skin==0? Colors.black: Colors.white,),)
              ],),
          ),
        ),
        InkWell(
          onTap: (){
            setState(() {
              if(pet==0){
                pet=1;
              }
              else{
                pet=0;
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: pet==0?Colors.white: Colors.black,
                boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
            ),
            height: 30,
            width: mqwidth/4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.pets_rounded,color: pet==0? Colors.black: Colors.white),
                Text('Pets',style: TextStyle(fontFamily: "poppin_regular",
                  fontSize: 8,color: pet==0? Colors.black: Colors.white,)),
              ],),
          ),
        ),
        ],
      ),
    ),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Add_vehicle(),));
                  },
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.black,),
                    margin: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 50,
                    child: Center(child: Text('Add Vehicle', style:whiteText(),)),
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