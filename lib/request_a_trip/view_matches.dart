import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewMatches extends StatelessWidget {
  var names = ["Babar Azam", "kanwal"];
  var review = ["We felt comfertale and enjoyed the tripe, Ashley was very accomodating We felt comfertale and enjoyed the tripe, Ashley was very accomodating  ","We felt comfertale and enjoyed the tripe, Ashley was very accomodating We felt comfertale and enjoyed the tripe, Ashley was very accomodating  "];
  var images = [Image.asset("assets/images/profile.png", height: 100,width: 100,),Image.asset("assets/images/profile.jpg",height: 100,width: 100,)];

  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var height = MediaQuery.of(context).size.height - status;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Color(0xffeaeaea),
            child: Container(
              height: height,
              width: width,
              margin: const EdgeInsets.only(left:20, right: 20,top: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                  InkWell( onTap: () {
                    Navigator.pop(context);
                  }, child:
                  const Icon(Icons.arrow_back_sharp,size: 30,)),
                   Expanded(child:Center(child: Text("View matches",style: pageHeading(),)),)
                ],),
                Expanded(child:
                ListView.builder(itemBuilder: (context, index) {
                  return Container(margin: EdgeInsets.only(top:20),width: double.infinity,child:Row(crossAxisAlignment: CrossAxisAlignment.start,children:[
                    images[index],
                    Expanded(
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                        Text(names[index], style: const TextStyle(fontFamily: "poppin_regular",fontSize: 16, color: Colors.black)),
                        Container(width: double.infinity,child: Text(review[index],maxLines: 100,overflow: TextOverflow.ellipsis ,style: const TextStyle(fontFamily: "poppin_regular",fontSize: 12, color: Color(0xff767676)))),
                      ],),
                    )
                  ]));
                },itemCount: names.length,),),

                
                
              ],),
            ),
          ),
      ),
    );
  }
}
