import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'UI/Home.dart';

void main(){
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(MaterialApp(
    title:"Sighnup page",
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFffffff)),
    home: new Home(),

  ));
}