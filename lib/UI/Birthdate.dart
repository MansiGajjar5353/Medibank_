import 'package:flutter/material.dart';

class birth_date extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return birth_date_State();
  }

}

class birth_date_State extends State<birth_date> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Color(0xffffffff),
       elevation: 0,
       iconTheme: IconThemeData(color: Colors.green),
     ) ,
   );
  }
}