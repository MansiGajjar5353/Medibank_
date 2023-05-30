import 'package:flutter/material.dart';
class HealthSummary extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return HealthSummaryState();
  }



}

class HealthSummaryState extends State<HealthSummary> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        title: Text("Patient Summary", style: TextStyle(color: Color(0xff000000),fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),
      ),
      body:ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffE3E3E3),
            ),
            height: 500,
           width: 200,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Patient Information"),
              Text("hello")
            ],  
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Patient Information"),
                Text("Text"),
              ],
            ),
          ],

      ),
            ),













        ],

      ),
    );
  }
}