import 'package:flutter/material.dart';
import 'Dashboard.dart';

class Payment extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PaymentState();
  }


}

class PaymentState extends State<Payment>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        leading: Row(
          children: [
            Stack(
              children: [

      Transform.translate(offset: Offset(5,0),
             child:   Flexible(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
      ),
                Transform.translate(offset: Offset(280,0),
                  child:   Flexible(
                  child:IconButton(
                    icon: Image.asset(
                      'image/Dashboard.png',
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard(),));
                    },
                  ),
                ),
                ),
              ],
            ),

          ],
        ),
      ),

      body:ListView(
        children: [
          Container(
            child: InkWell(
              child: Text("Dashboard"),
              onTap:  (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard(),));},
            ),
          )
        ],
      ),
    );
  }

}