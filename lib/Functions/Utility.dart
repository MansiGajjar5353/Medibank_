import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



final String API = "https://staging.themedibank.in/api/v1/";


class Utility {
  static void ShowToast(String Msg) {
    Fluttertoast.showToast(
        msg: Msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

