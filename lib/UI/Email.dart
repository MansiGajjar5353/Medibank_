import 'package:flutter/material.dart';
import 'package:project_signup_page/UI/Create_acc.dart';

class Email_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return Email_ScreenState();
  }


}

class Email_ScreenState extends State<Email_Screen>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar:AppBar(
      backgroundColor: Color(0xffffffff),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.green),
    ),
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
                text: 'What is your ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Email Address',
                    style: TextStyle(
                      color: Color(0xff24B445),
                      fontWeight: FontWeight.w400,
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
      ),
        Padding(padding: EdgeInsets.only(left:20,right: 20, top:30),),
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
              fillColor: Color(0xffF9F9F9),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(80),
                borderSide: BorderSide.none,),

              hintText: "prathvi@unada.io",
              hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5)),

            ),
          ),
        ),

        Padding(padding: EdgeInsets.only(top:29)),
        Center(
          child: Container(
            //margin: EdgeInsets.only(left:21.0,top:0 ),
            //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
            child:RichText(
              text: TextSpan(
                text: 'Note: ',
                style: TextStyle(
                  color: Color(0xff24B445),
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Please check your email for verification and confirm it.',
                    style: TextStyle(
                      color: Color(0xff929292),
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins',

                    ),
                  ),
                ],
              ),
            ),),
        ),

        Center(
          child: Stack(
      children: [
      Transform.translate(offset: Offset(0,-60),
        child:SizedBox(
          height: 300,
          child: Image.asset(
            'image/Rectangle.png',
            fit: BoxFit.contain,
          ),
        ),
      ),

          Transform.translate(offset: Offset(0,140),
      child:  Center(
          child: Container(
                child:Text('2/10 Questions', style: TextStyle(color:Color(0xffB0B2B5),fontSize: 12),),
            ),
      ),),
          Transform.translate(offset: Offset(150, 170),
          child:Center(
          child:Container(
            child:Row(
              children: [
                Padding(padding: EdgeInsets.only(left:9)),
                CircleAvatar(
                  backgroundColor: Color(0xffD9D9D9),
                  radius:4,
                ),
            Padding(padding: EdgeInsets.only(left:7)),
                CircleAvatar(
                  backgroundColor: Color(0xff24B445),
                  radius:5,
                ),
                Padding(padding: EdgeInsets.only(left:7)),
                CircleAvatar(
                  backgroundColor: Color(0xffD9D9D9),
                  radius:4,
                ),
              ],
            ),
          ),
    ),
          ),

        Transform.translate(offset: Offset(0, 200),
        child:  Center(
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff24B445),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)
                ),

              ),
              onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>create_acc(),));
              },
              icon: Container(
                margin: EdgeInsets.only(left:10),
                width: 80,
                child: Icon(
                  Icons.arrow_forward,
                  size: 30,
                  color: Colors.black,
                ),
              ), label: Text(""),
            ),
        ),

          ),






      ],
          ),
        ),

      ],
    ),
  );
  }
}