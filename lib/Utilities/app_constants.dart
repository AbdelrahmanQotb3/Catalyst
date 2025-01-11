import 'dart:ui';
import 'package:flutter/material.dart';

abstract class AppConstants{
  static String defaultMessageError = "something went wrong, please try again later ";
  static String internetErrorMessage = "Connection Error , Please check your internet connection";
  static TextStyle appBarText = TextStyle(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic
  );
  static Color barsColor = Color(0xff06004F);
  static TextStyle bottomNavigationBarLabelTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w500
  );
  static Widget loadingView() {
    return const Center(child: CircularProgressIndicator());
  }
  static TextStyle userName = TextStyle(
    color: Colors.black87,
    fontSize: 18,
    fontWeight: FontWeight.w600,

  );
}