
import 'package:flutter/material.dart';

ButtonStyle mainPageButton(){
  return ElevatedButton.styleFrom(
    backgroundColor: const Color(0xff333333),
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
  );
}

TextStyle buttonText(){
  return const TextStyle(
    color: Colors.white,
    fontFamily: "poppin_semibold",
    fontSize: 18
  );
}


ButtonStyle loginWithStyle(){
  return ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      shape: const StadiumBorder()
  );
}

TextStyle loginWithPhoneText(){
  return const TextStyle(
      color: Colors.black,
      fontFamily: "poppin_semibold",
      fontSize: 16
  );
}

ButtonStyle loginWithPhoneButtons(){
  return ElevatedButton.styleFrom(
      backgroundColor: Color(0xffddcd4e),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}