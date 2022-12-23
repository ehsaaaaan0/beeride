import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui_helper/text_styles.dart';
import 'change_password.dart';
import 'email_address.dart';

class Password extends StatefulWidget{
  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      //border: Border.all(width: 1, color: Colors.white,),
                      color: Color(0xff71B9EB),
                      boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
                  ),

                  child: Text('No password set because you have signed with a social '
                      'provider.create onr below:', style: subHeading()),
                ),
                Container(
                  padding: EdgeInsets.all(5),

                  child:
                  Text('password', style: subHeading(),),
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
                        hintText: 'Password'
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),

                  child:
                  Text('Password (again)', style: subHeading(),),
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
                        hintText: 'Password (again)'
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Change_password(),));
                  },
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.black,),
                    margin: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 50,
                    child: Center(child: Text('Set Password', style:whiteText(),)),
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