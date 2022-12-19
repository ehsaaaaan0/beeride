import 'package:beeride/driver_profile.dart';
import 'package:beeride/personal_details.dart';
import 'package:beeride/ui_helper/button_styles.dart';
import 'package:beeride/ui_helper/text_styles.dart';
import 'package:flutter/material.dart';

import 'login_with_number.dart';

void main() {
  runApp(const MyApp());
}

class Palette {
  static const MaterialColor kToDark = MaterialColor(
    0xffddcd4e, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffddcd4e),//10%
      100: Color(0xffddcd4e),//20%
      200: Color(0xffddcd4e),//30%
      300: Color(0xffddcd4e),//40%
      400: Color(0xffddcd4e),//50%
      500: Color(0xffddcd4e),//60%
      600: Color(0xffddcd4e),//70%
      700: Color(0xffddcd4e),//80%
      800: Color(0xffddcd4e),//90%
      900: Color(0xffddcd4e),//100%
    },
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontFamily: "poppin", color: Colors.black, fontSize: 45),
          headline2: TextStyle(
              fontFamily: "poppin", color: Colors.black, fontSize: 28),
          headline3: TextStyle(fontFamily: "poppin_regular", color: Colors.black, fontSize: 14),

        ),

        iconTheme: const IconThemeData(color: Colors.black),

      ),
      home: Personal_details(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var appName = "Canva";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/images/logo.png"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "$appName For Pakistan",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Image.asset("assets/images/cars.png")
                ],
              ),
              SizedBox(height: 60, width: 200,child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWith(),));}, child: Text("Let's go", style: buttonText(),),style: mainPageButton(),))
            ],
          ),
        ),
      ),
    );
  }
}



class LoginWith extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var status = MediaQuery.of(context).viewPadding.top;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height-status;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          padding: const EdgeInsets.only(left: 20, right: 20,bottom: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              InkWell(onTap: () {
                Navigator.pop(context);
              },  child: const Icon(Icons.arrow_back_sharp, size: 30,)),
              Text("Welcome", style: Theme.of(context).textTheme.headline2,),
              Text("We’r are so glad you’er here! Please choose an option below to sign in", style: Theme.of(context).textTheme.headline3,)
            ],),
            Image.asset("assets/images/loginimages.png"),
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
              SizedBox(
                width: width,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWithNumber(),));
                }, style: loginWithStyle(),child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.phone_android_rounded, size: 30,color: Colors.black,),
                     Text("Continue with Number", style: simpleText(), )
                  ],),),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: width,
                height: 50,
                child: ElevatedButton(onPressed: (){
                }, style: loginWithStyle(),child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/google.png", width: 30, height: 30,),
                    Text("Continue with Google", style: simpleText(), )
                  ],),),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: width,
                height: 50,
                child: ElevatedButton(onPressed: (){
                }, style: loginWithStyle(),child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/apple.png", width: 30, height: 30,),
                    Text("Continue with Apple", style: simpleText(), )
                  ],),),
              ),
            ],)
          ],),
        ),
      ),
    );
  }
  
}
