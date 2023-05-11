import 'package:flutter/material.dart';

import 'Create_acc.dart';

class Email_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Email_Screen_State();
  }
}

class Email_Screen_State extends State<Email_Screen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Color(0xffffffff),
      elevation:0,
      iconTheme: IconThemeData(color: Colors.green),),

body:Container(
  child:ListView(
    children:[
      Container(
        margin: EdgeInsets.only(left:21.0, top:15.0),
        //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
        child:Text("Personal ",style: new TextStyle( color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

      ),
      Container(
        margin: EdgeInsets.only(left:21.0,top:0.0 ),
        //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
        child:Text("Information ",style: new TextStyle(height:0.90,color: Colors.green, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

      ),

      Container(
        margin:EdgeInsets.only(top:10.0) ,
        child: Text("Note: minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",style:new TextStyle(height:0.90,color: Color(0xFF929292), fontSize: 10.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'), ),
      ),
      Padding(padding: EdgeInsets.only(top:50.0)),
      Container(
        margin: EdgeInsets.only(left:21.0,top:50.0 ),
        //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
        child:RichText(
          text: TextSpan(
            text: 'What is your ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w900,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Email Address',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Poppins',

                ),
              ),
              TextSpan(
                text: '?',
              ),
            ],
          ),
        ),
        // child:Text("We need to verify your Number?",style: new TextStyle(height:0.90,color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

      ),
      Padding(padding: EdgeInsets.only(left:20,right: 20)),
      Container(
        margin: EdgeInsets.only(right: 20.0),
        padding: EdgeInsets.only(left:20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80), // set the border radius
          //border: Border.all(),
        ),
        child: TextField(
//          controller: _userController,
          decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            filled: true,
            fillColor: Colors.grey.shade200,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(80),
              borderSide: BorderSide.none,),

            hintText: "prathvi@unada.io",
          ),
        ),
      ),

      Padding(padding: EdgeInsets.only(top:0)),
      Container(
        margin: EdgeInsets.only(left:21.0,top:0 ),
        //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
        child:RichText(
          text: TextSpan(
            text: 'Note: ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w900,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Please check your email for verification and confirm it.',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Poppins',

                ),
              ),
            ],
          ),
        ),),


      Padding(padding: EdgeInsets.only(top: 250.0)),
      Transform.scale(
        scale: 0.3,
      child:SizedBox(
          width: 20, // set the width of the SizedBox
      child:ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          //maximumSize: Size(40, 10),
         // minimumSize: Size(100, 40),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          primary: Colors.greenAccent.shade700,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80.0)
          ),

        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> create_acc(),),);
          print("button clicked");
          
        },
        icon: Container(
          margin: EdgeInsets.only(left:0),
          width: 80,
          child: Icon(
            Icons.arrow_forward,
            size: 90,
            color: Colors.black,
          ),
        ), label: Text(""),
      ),

      ),
      ),
          ],


  ),
),




    );
  }
}