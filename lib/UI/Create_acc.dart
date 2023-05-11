import 'package:flutter/material.dart';

class create_acc extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return create_accState();
  }

}

class create_accState extends State<create_acc>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation:0,
      iconTheme: IconThemeData(color: Colors.green),),
body:Container(
 child: ListView(
children:[
  Container(
    margin: EdgeInsets.only(left:21.0, top:15.0),
    //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
    child:Text("Personal ",style: new TextStyle( color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

  ),
  Container(
    margin: EdgeInsets.only(left:21.0, top:15.0),
    //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
    child:Text("information ",style: new TextStyle( height:0.90,color: Colors.green, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

  ),

      Padding(padding: EdgeInsets.only(top:50.0)),
      Container(
          margin: EdgeInsets.only(left:40.0,top:50.0 ),
          //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
          child:RichText(
            text: TextSpan(
              text: "Let's create your ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w900,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Account',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Poppins',

                  ),
                ),
                TextSpan(
                  text: '!',
                ),
              ],
            ),
          ),
      ),




          ]
  )
),

  );
  }


}


