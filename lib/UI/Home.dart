import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_signup_page/UI/Signin.dart';
import 'package:project_signup_page/UI/Signup.dart';
import 'package:project_signup_page/UI/otpScreen.dart';

import 'Email.dart';


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _Homestate();
  }


}

class _Homestate extends State<Home> {

  @override
  Widget build(BuildContext context) {
   // Color _buttonColor = Color(0xffF9F9F9),
    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ));
    }
    if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ));
    }
    var _mediaquery = MediaQuery.of(context);
   return Scaffold(

       body: Container(

        child: ListView(
            children:[


              Container(
                height:20,
                width:200,
                margin: EdgeInsets.only(left:21.0, top:50.0),
              //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child:Text("You're all set?",style: new TextStyle(color: Color(0xFF24B445), fontSize: 16.0, fontWeight: FontWeight.w900, fontFamily: 'Poppins' ),),

              ),
              Container(
                height:50,
                width:200,
                margin: EdgeInsets.only(left:21.0, top:10.0),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child:Text("Let's create",style: new TextStyle(color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

              ),
              Container(
                height:40,
                width:200,
                margin: EdgeInsets.only(left:21.0),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child:Text("your account",style: new TextStyle(height:0.99,color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

              ),

            Padding(padding: EdgeInsets.only(left:200)),
            Container(
              height:330.0,
              width:200,
              margin: EdgeInsets.only(left:200),
              child: Image.asset('image/Ellipse.png'),

            ),
/*Transform.translate
  (offset: Offset(0,-90),
             child: Container(
                margin: EdgeInsets.only(right:220),
                child: Image.asset('image/Ellipse2.png'),

              ),),*/

       Stack(
           children: [
              Padding(padding: EdgeInsets.only(right: 300)),

             Transform.translate
               (offset: Offset(0,-150),
               child: Container(
                 height: 180,
                 width:200,
                 margin: EdgeInsets.only(right:220),
                 child: Image.asset('image/Ellipse2.png'),

               ),),

       Transform.translate(
           offset: Offset(0,50,),

               child: Container(
                height: 50.0,
                  width:500.0,
                  margin: EdgeInsets.only(top:0,left:30.0,right:30.0),
                  //margin: EdgeInsets.only( ),

                  child: ElevatedButton(

                    child:  Text('Sign Up', style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5), fontFamily:'Poppins',fontWeight: FontWeight.w900),),
                    style: ElevatedButton.styleFrom(

                      primary: Color(0xffF9F9F9),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: Size(50, 40),
                    ),
                    onPressed: ()=> setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                      }),
                  ),

                    ),),


              Padding(padding: EdgeInsets.only(top:10.0, left:50.0, right: 50.0)),

             Transform.translate(
                 offset: Offset(0,112,),
         child: Container(
                height: 50.0,
                width: 500.0,
                margin: EdgeInsets.only(left:30.0,right:30.0),

                child: ElevatedButton(
                  child: const Text('Sign in', style: TextStyle( fontFamily:'Poppins', fontWeight: FontWeight.w900)),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF24B445),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)
                    ),

                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Signin()));
                  },
                )
            ),
             ),

],
       ) ,                  ],

        )
       ),
   );
  }
}

class HalfClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, size.width , size.height);
  }

  @override
  bool shouldReclip(HalfClipper oldClipper) {
    return false;
  }
}
