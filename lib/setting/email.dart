import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui_helper/text_styles.dart';
import 'email_address.dart';

class Email extends StatefulWidget{
  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
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
                              child: Text('Email Address',  style: pageName(),))),

                    ],),
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('The following e-mail addresses are', style: subHeading(),),
                      Text('associated with your account', style: subHeading(),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),

                  height: 40,
                  width: double.infinity,

                  child:

                      Expanded(child:
                      ListView.builder(itemBuilder: (context, index) {
                        return Container(width: double.infinity,child:Row(crossAxisAlignment: CrossAxisAlignment.center,children:[

                          // SizedBox(width: 10,),
                          Expanded(
                            child: Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
                              Text(name[index], style: detailsSize()),
                              Image(image: AssetImage('assets/images/verify.png'), height: 20,width: 20,),
                            ],),
                          ),

                          Icon(Icons.delete),
                        ]));
                      },itemCount: name.length,),),

                  ),


                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.all(5),
                  child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Email_address(),));
                      },
                  child: Text('Add another email address')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}