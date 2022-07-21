import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
var serverError = 'server error';

showMsg(String text) {

 return Fluttertoast.showToast(
      msg: "This is Center Short Toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
}



