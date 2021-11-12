import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wat/res/res.dart';

// ignore: avoid_classes_with_only_static_members
class ShowMessage {
  static show(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.black,
      fontSize: sizes.mediumFontSize,
      textColor: Colors.white,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_SHORT,
    );
  }
}
