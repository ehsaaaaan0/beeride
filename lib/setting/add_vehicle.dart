import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui_helper/text_styles.dart';

class Add_vehicle extends StatefulWidget{
  @override
  State<Add_vehicle> createState() => _Add_vehicleState();
}

class _Add_vehicleState extends State<Add_vehicle> {
  String type="";
  var number= ['--------','1','2','3','4'];
  var currentItemSelected= '1';
  var carcolor= ['--------','Black','White','Gray','Red'];
  var currentColorSelected= 'Black';
    int luggage=0;
    int maxpeople=0;
    int others=0;
    int bike=0;
    int pet=0;
    int skin=0;
  @override
  Widget build(BuildContext context) {


    var status = MediaQuery.of(context).viewPadding.top;
    var mqwidth = MediaQuery.of(context).size.width;
    var mqheight = MediaQuery.of(context).size.height - status;

    return Scaffold( backgroundColor: Color(0xfffbf9f9),
    body: SafeArea(
    child: Container(
      height: mqheight,
      width: mqwidth,
        margin: EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(onTap: (){
                  Navigator.pop(context);
                },child: Icon(Icons.arrow_back, size: 30,)),

                Expanded(
                    child: Center(
                        child: Text('Add a vehicle',  style: pageName(),))),

              ],),
          ),
          Container(
            width: double.infinity,
            height: 140,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.only(right: 5, left: 5),
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/car3.png'), height: 50,width: 50,),
                Text("Add Photo"),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Model',style: subHeading(),),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(right: 5, left: 5),
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
              ),
              height: 40,
              width: mqwidth/1.8,

              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(right: 10, left: 10),
                    hintStyle: detailsHintSize(),
                    hintText: 'e.g Ford Focus'
                ),
              ),
            )

          ],),
          ),
          SizedBox(height: 15,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Type', style: subHeading(),),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.only(right: 5, left: 5),
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                  ),
                  height: 40,
                  width: mqwidth/1.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton
                      <String>(
                          items: number.map((String dropDownStringItem){
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (newValueSelected){
                            setState(() {
                              this.currentItemSelected = newValueSelected!;
                            });
                          },
                        value: currentItemSelected,
                        ),

                    ],
                  ),

                ),

              ],),
          ),
          SizedBox(height: 15,),
          Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Color', style: subHeading(),),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.only(right: 5, left: 5),
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                  ),
                  height: 40,
                  width: mqwidth/1.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    DropdownButton
                    <String>(
                      items: carcolor.map((String dropDownStringItem){
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }).toList(),
                      onChanged: (newValueSelected){
                        setState(() {
                          this.currentColorSelected = newValueSelected!;
                        });
                      },
                      value: currentColorSelected,
                    ),
                  ],),

                )

              ],),
          ),
          SizedBox(height: 15,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Year', style: subHeading(),),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.only(right: 5, left: 5),
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                  ),
                  height: 40,
                  width: mqwidth/1.8,

                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(right: 10, left: 10),
                        hintStyle: detailsHintSize(),
                        hintText: 'YYY'
                    ),
                  ),
                )

              ],),
          ),
          SizedBox(height: 15,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Licence plate', style: subHeading(),),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.only(right: 5, left: 5),
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                  ),
                  height: 40,
                  width: mqwidth/1.8,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(right: 10, left: 10),
                        hintStyle: detailsHintSize(),
                        hintText: 'POP 123'
                    ),
                  ),
                ),

              ],),
          ),
          SizedBox(height: 25,),
          Container(
              child: Text('Luggage', style: subHeading(),),
          ),
            SizedBox(height: 15,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              InkWell(
                onTap: (){
                  setState(() {
                    luggage=0;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: luggage==0? Colors.black:Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                  ),
                  height: 30,
                  width: mqwidth/5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Icon(Icons.shopping_bag, size: 15, color: luggage==0? Colors.white: Colors.black ),
                    Text('No luggage', style: TextStyle( fontFamily: "poppin_regular",
                      fontSize: 8,color: luggage==0? Colors.white: Colors.black, ),)],),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    luggage=1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: luggage==1? Colors.black:Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                  ),
                  height: 30,
                  width: mqwidth/5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Icon(Icons.shopping_bag, size: 15,color: luggage==1? Colors.white: Colors.black),
                    Text('Small', style: TextStyle( fontFamily: "poppin_regular",
                      fontSize: 8,color: luggage==1? Colors.white: Colors.black, ),)],),
                ),
              ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        luggage=2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: luggage==2? Colors.black:Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                      ),
                      height: 30,
                      width: mqwidth/5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.shopping_bag, size: 15,color: luggage==2? Colors.white: Colors.black),
                          Text('Medium', style: TextStyle( fontFamily: "poppin_regular",
                            fontSize: 8,color: luggage==2? Colors.white: Colors.black, ),)],),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        luggage=3;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: luggage==3? Colors.black:Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                      ),
                      height: 30,
                      width: mqwidth/5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.shopping_bag, size: 15,color: luggage==3? Colors.white: Colors.black),
                          Text('Large', style: TextStyle( fontFamily: "poppin_regular",
                            fontSize: 8,color: luggage==3? Colors.white: Colors.black, ),)],),
                    ),
                  ),
            ],),),
            SizedBox(height: 15,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Back row seat', style: subHeading(),),
                  SizedBox(height: 8,),
                  Text('Pledge to a mximum of 2 people in back for better reviews.', style: searchOfPlaces(),)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                     setState(() {
                       maxpeople=0;
                     });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: maxpeople==0? Colors.black:Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                      ),
                      height: 30,
                      width: mqwidth/2.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Icon(Icons.airline_seat_legroom_extra_sharp, color: maxpeople==0? Colors.white: Colors.black),
                        Text('Max 2 People',style:TextStyle( fontFamily: "poppin_regular",
                          fontSize: 12,color: maxpeople==0? Colors.white: Colors.black, ))
                      ],),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        maxpeople=1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: maxpeople==1? Colors.black:Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                      ),
                      height: 30,
                      width: mqwidth/2.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.airline_seat_legroom_extra_sharp, color: maxpeople==1? Colors.white: Colors.black),
                          Text('Max 2 People',style:TextStyle( fontFamily: "poppin_regular",
                            fontSize: 12,color: maxpeople==1? Colors.white: Colors.black, ))
                        ],),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child:
                  Text('Others', style: subHeading(),),
            ),
            SizedBox(height: 10,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        if(others==0){
                          others=1;
                        }
                        else{
                          others=0;
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: others==0? Colors.black: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                      ),
                      height: 30,
                      width: mqwidth/3.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.flare_outlined,color: others==0? Colors.white: Colors.black),
                          Text('Winter tries', style: TextStyle(fontFamily: "poppin_regular",
                            fontSize: 8,color: others==0? Colors.white: Colors.black,),)
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
                          color: bike==0?Colors.black: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                      ),
                      height: 30,
                      width: mqwidth/4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.directions_bike_outlined,color: bike==0? Colors.white: Colors.black),
                          Text('Bikes',style: TextStyle(fontFamily: "poppin_regular",
                            fontSize: 8,color: bike==0? Colors.white: Colors.black,)),
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
                          color: pet==0?Colors.black: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                      ),
                      height: 30,
                      width: mqwidth/4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.pets_rounded,color: pet==0? Colors.white: Colors.black),
                          Text('Pets',style: TextStyle(fontFamily: "poppin_regular",
                            fontSize: 8,color: pet==0? Colors.white: Colors.black,)),
                        ],),
                    ),
                  ),
                ],
              ),
            ),
      SizedBox(height: 10,),
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
                color: skin==0? Colors.black: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
            ),
          height: 30,
          width: mqwidth/2.5,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.snowboarding, color: skin==0? Colors.white: Colors.black),
            Text('skin/Snowboard',style: TextStyle(fontFamily: "poppin_regular",
              fontSize: 8,color: skin==0? Colors.white: Colors.black,))
          ],)
        ),
      ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: Colors.black,),
              margin: EdgeInsets.all(5),
              width: double.infinity,
              height: 50,
              child: Center(child: Text('Add vehicle', style:whiteText(),)),
            ),
            SizedBox(height: 20,),

        ],),
      ),
    ),

    ));

  }
}