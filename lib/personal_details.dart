import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/material.dart';

class Personal_details extends StatefulWidget{
  @override
  State<Personal_details> createState() => _Personal_detailsState();
}

class _Personal_detailsState extends State<Personal_details> {
  int _value=1;
  int _type=1;
  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var mqwidth = MediaQuery.of(context).size.width;
    var mqheight = MediaQuery.of(context).size.height - status;
return Scaffold(
  backgroundColor: Color(0xffFBF9F9),
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
             Icon(Icons.arrow_back, size: 40,),

             Expanded(
                 child: Center(
                     child: Text('Personal details', style: pageHeading(),))),

           ],),
       ),
       Container(
         padding: EdgeInsets.all(5),

         child:
             Text('Phone number'),
       ),
       Container(
         padding: EdgeInsets.all(5),
         child:
         TextFormField(
           decoration: InputDecoration(
             fillColor: Color(0xffFFFFFF),
               border: OutlineInputBorder(),
               contentPadding: EdgeInsets.symmetric(horizontal: 10),
               hintText: '+92 0334 8726398'
           ),
         ),
       ),
       SizedBox(height: 10,),
       Container(
         padding: EdgeInsets.all(10),
         color: Color(0xff0073C2),
         child: Text('Please note: You can verfiy your name '
             'by uploading a piece og office ID. Being verified'
             ' makes you more trustworthy and appealing to other '
             'users as both a driver  and passenger!'),
       ),
       Container(
         padding: EdgeInsets.all(5),

         child:
         Text('First Name'),
       ),
       Container(
         padding: EdgeInsets.all(5),
         child:
         TextFormField(

           decoration:
           InputDecoration(
               border: OutlineInputBorder(),
               contentPadding: EdgeInsets.symmetric(horizontal: 10),
               hintText: 'Jennifer'
           ),
         ),
       ),
       Container(
         padding: EdgeInsets.all(5),

         child:
         Text('Last Name'),
       ),
       Container(
        padding: EdgeInsets.all(5),
         child:
         TextFormField(
           decoration: InputDecoration(
               border: OutlineInputBorder(),
               contentPadding: EdgeInsets.symmetric(horizontal: 10),
               hintText: 'Lopes',
           ),

         ),
       ),
       Container(
         padding: EdgeInsets.all(5),
         child: Text('Date of Birth'),
       ),
       Container(
         padding: EdgeInsets.all(5),


       ),
       Container(
         padding: EdgeInsets.all(5),

         child:
         Text('Bio'),
       ),
       Container(
          padding: EdgeInsets.only(right: 5, left: 5),
         height: 100,
         child:
         TextFormField(
           maxLines: 10,
          // textAlignVertical: TextAlignVertical.top,
           decoration: InputDecoration(
             border: OutlineInputBorder(),
             hintText: 'Example: i travel on weekends and '
                 'would love to meet people and share rides'
           ),

         ),
       ),
       Container(
         padding: EdgeInsets.all(5),

         child:
         Text('Select grender'),
       ),
       SizedBox(height: 10,),
       Container(
         alignment: Alignment.topLeft,
         width: double.infinity,
         margin: EdgeInsets.all(5),
         padding: EdgeInsets.only(right: 5, left: 5),
         decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
             //border: Border.all(width: 1, color: Colors.white,),
             color: Colors.white,
             boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Row(
               children: [
                Image(image: AssetImage('assets/images/female.png'), height: 30,width: 30,),
                 SizedBox(width: 10,),
                 Text('Female'),
               ],
             ),
             Radio(
               value: 1,
               groupValue: _value,
               onChanged: (value){
                 setState(() {
                   _value=value!;
                 });
               },),
           ],
         ),
       ),
       SizedBox(height: 15,),
       Container(
         margin: EdgeInsets.all(5),
         padding: EdgeInsets.only(right: 5, left: 5),
         alignment: Alignment.topLeft,
         decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
             //border: Border.all(width: 1, color: Colors.white,),
             color: Colors.white,
             boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
         ),
         width: double.infinity,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Row(
               children: [
                 Image(image: AssetImage('assets/images/male.png'), height: 30,width: 30,),
                 SizedBox(width: 10,),
                 Text('Male'),
               ],
             ),
             Radio(
               value: 2,
               groupValue: _value,
               onChanged: (value){
                 setState(() {
                   _value=value!;
                 });
               },),
           ],
         ),
       ),
       Container(
         padding: EdgeInsets.all(5),

         child:
         Text('User type'),
       ),
       SizedBox(height: 10,),
       Container(
         alignment: Alignment.topLeft,
         width: double.infinity,
         margin: EdgeInsets.all(5),
         padding: EdgeInsets.only(right: 5, left: 5),
         decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
             //border: Border.all(width: 1, color: Colors.white,),
             color: Colors.white,
             boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Row(
               children: [
                 Image(image: AssetImage('assets/images/driver_mostly.png'), height: 30,width: 30,),
                 SizedBox(width: 10,),
                 Text('Passenger'),
               ],
             ),
             Radio(
               value: 1,
               groupValue: _type,
               onChanged: (value){
                 setState(() {
                   _type=value!;
                 });
               },),
           ],
         ),
       ),
       SizedBox(height: 15,),
       Container(
         alignment: Alignment.topLeft,
         width: double.infinity,
         margin: EdgeInsets.all(5),
         padding: EdgeInsets.only(right: 5, left: 5),
         decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
             //border: Border.all(width: 1, color: Colors.white,),
             color: Colors.white,
             boxShadow: [BoxShadow(blurRadius: 1,color: Colors.grey)]
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Row(
               children: [
                 Image(image: AssetImage('assets/images/mostlypessanger.png'), height: 30,width: 30,),
                 SizedBox(width: 10,),
                 Text('Driver'),
               ],
             ),
             Radio(
               value: 2,
               groupValue: _type,
               onChanged: (value){
                 setState(() {
                   _type=value!;
                 });
               },),
           ],
         ),
       ),
       Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
           color: Colors.black,),
         margin: new EdgeInsets.symmetric(horizontal: 40, vertical: 10),
         width: double.infinity,
         height: 40,
         child: Center(child: Text('Update', style:whiteText(),)),
       ),


       //practice
       Container(
         padding: EdgeInsets.only(right: 5, left: 5),
         height: 100,
         child:
         TextFormField(
           maxLines: 10,
           // textAlignVertical: TextAlignVertical.top,
           decoration: Box

         ),
       ),
       SizedBox(height: 20,),
     ],
    ),
    ),
         ),
       ),
);
  }

}
