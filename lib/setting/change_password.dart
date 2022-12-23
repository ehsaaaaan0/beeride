import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui_helper/text_styles.dart';
import 'email_address.dart';

class Change_password extends StatefulWidget{
  @override
  State<Change_password> createState() => _Change_passwordState();
}

class _Change_passwordState extends State<Change_password> {
  int? groupValue;
  List<String> name =['Shejennifer123@gmail.com',];
  @override

  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var mqwidth = MediaQuery.of(context).size.width;
    var mqheight = MediaQuery.of(context).size.height - status;
    return Scaffold(backgroundColor: Color(0xfffbf9f9),
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
                              child: Text('Change Password',  style: pageName(),))),
                    ],),
                ),
                Container(
                  padding: EdgeInsets.all(5),

                  child:
                  Text('Current Password', style: subHeading(),),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.only(right: 5, left: 5),
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                  ),
                  child:
                  TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(right: 10, left: 10),
                        hintStyle: detailsHintSize(),
                        hintText: 'Current Password'
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),

                  child:
                  Text('New Password', style: subHeading(),),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.only(right: 5, left: 5),
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                  ),
                  child:
                  TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(right: 10, left: 10),
                        hintStyle: detailsHintSize(),
                        hintText: 'New Password',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),

                  child:
                  Text('New Password (again)', style: subHeading(),),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.only(right: 5, left: 5),
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                  ),
                  child:
                  TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(right: 10, left: 10),
                      hintStyle: detailsHintSize(),
                      hintText: 'New Password (again)',
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.black,),
                  margin: EdgeInsets.all(5),
                  width: double.infinity,
                  height: 50,
                  child: Center(child: Text('Set Password', style:whiteText(),)),
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}