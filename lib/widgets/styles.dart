import 'package:flutter/material.dart';

abstract class Styles {
  static const Color primaryColor = Color(0xFF154478);
  static const Color secodryColor = Color(0xFF22C2F4);
  static const Color orangeColor = Color(0xFFFEB801);
  static const Color redColor = Color(0xFFFF443C);
  static const Color pinkColor = Color(0xFFEC5678);
  static const Color greenColor = Color(0xFF098961);
  static const Color tealColor = Color(0xFF098184);
  static const Color blueColor = Color(0xFF595EFF);
  static const Color blackColor = Color(0xFF4D5968);

  static const TextStyle txtTitle =
      TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 30);

  static const TextStyle txtTitleSecondry =
      TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 14);

  static const TextStyle txtTitleThird =
      TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 16);

  static const TextStyle txtRegulerBlack =
      TextStyle(fontFamily: 'Poppins', color: Colors.black87, fontSize: 12);

  static const TextStyle txtRegulerWhite =
      TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 12);

  static const TextStyle txtRegulerBlue = TextStyle(
      fontFamily: 'Poppins', color: Styles.primaryColor, fontSize: 12);

  static const TextStyle txtRegulerActive = TextStyle(
      fontFamily: 'Poppins',
      color: Colors.blue,
      fontSize: 12,
      decoration: TextDecoration.underline,
      decorationColor: Colors.blue);
}
