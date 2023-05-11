import 'package:flutter/material.dart';

class birth_date extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return birth_dateState();
  }

}

class birth_dateState extends State<birth_date> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Color(0xffffffff),
       elevation: 0,
       iconTheme: IconThemeData(color: Colors.green),
     ) ,
     body:
     ListView(

         children: [
     Row(
     children: [
     Container(
     child: Column(

     children: [
     Transform.translate(offset: Offset(-16, 0),
     child:  Container(
       child: Text("Personal ",style: new TextStyle( color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
     ),),
    Transform.translate(offset: Offset(5, 0),
    child:   Container(
    //margin: EdgeInsets.only(left:30,),
    child:Text("Information ",style: new TextStyle(height:0.90,color: Colors.green, fontSize: 24.0, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
    ),),
    Transform.translate(offset: Offset(27, 0),
    child:  Container(
    child: Text("Note: minim mollit non deserunt ullamco ",style:new TextStyle( color: Color(0xff929292), fontSize: 9.0, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
    ), ),
    Transform.translate(offset: Offset(5, 0),
    child:  Container(
    child: Text("est sit aliqua dolor do amet sint. ",style:new TextStyle( color: Color(0xff929292), fontSize: 9.0, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
    ), )  ,
    ],
    ), ),
    Container(
    child:Column(
    children: [
    Transform.translate(offset: Offset(40,0),
    child:Container(
    child: Image.asset('image/perso.png',height: 70,),
    ),),


    Transform.translate(offset: Offset(40, 7),
    child: Container(
    child:RichText(
    text: TextSpan(
    text: 'category ',
    style: TextStyle(
    color: Color(0xff929292),
    fontSize: 11,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w300,
    ),
    children: <TextSpan>[
    TextSpan(
    text: '4/12',
    style: TextStyle(
    color: Color(0xff24B445),
    fontWeight: FontWeight.w900,
    fontFamily: 'Poppins',
    ),
    ),
    ],
    ),
    ),
    ),),
    ],
    ),
    ),
    ],
    ),

    Center(
    child: Container(
    margin: EdgeInsets.only(left:0,top:50.0 ),
    //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
    child:RichText(
    text: TextSpan(
    text: 'Lets create your ',
    style: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    ),
    children: <TextSpan>[
    TextSpan(
    text: 'Account',
    style: TextStyle(
    color: Color(0xff24B445),
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',

    ),
    ),
    TextSpan(
    text: '!',
    ),
    ],
    ),
    ),
    // child:Text("We need to verify your Number?",style: new TextStyle(height:0.90,color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

    ),
    ),

    Container(
    child:Column(
    children: [
    Container(
    child:Text("Amet minim mollit non deserunt ullamco est sit ", style: new TextStyle(color:Color(0xff929292),fontSize: 12),
    ),),

    Container( child:Text("aliqua dolor do amet sint.",  style: new TextStyle(color:Color(0xff929292),fontSize: 12),
    ),
    ),
    ],
    ),
    ),],
    ),
   );
  }
}