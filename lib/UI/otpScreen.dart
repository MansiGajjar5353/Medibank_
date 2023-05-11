import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Email_page.dart';
class otpScreen extends StatefulWidget{
  //final String data;
  //const otpScreen(this.data,{ super.key})


  @override
  State<StatefulWidget> createState() {
  return _otpScreenState();
  }

}

class _otpScreenState extends State<otpScreen> {
  //final String data;
  //otpScreen({required this.data});
  String _WelcomeString = "";
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();
  String? _otp;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Color(0xffffffff),
     elevation: 0,
     iconTheme: IconThemeData(color: Colors.green),),

       body:Container(
    child: ListView(
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


      Padding(padding: EdgeInsets.only(top:40.0)),
      Container(
        margin: EdgeInsets.only(left:21.0,top:50.0 ),
        //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
        child:RichText(
          text: TextSpan(
            text: 'We need to verify your ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
                fontFamily: 'Poppins',
               fontWeight: FontWeight.w400,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Number',
                style: TextStyle(
                  color: Colors.green,
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
Padding(padding: EdgeInsets.only(top:20)),
      Column(
             mainAxisAlignment: MainAxisAlignment.center,
               children:[

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     OtpInput(_fieldOne, true), // auto focus
                     OtpInput(_fieldTwo, false),
                     OtpInput(_fieldThree, false),
                     OtpInput(_fieldFour, false),
                     OtpInput(_fieldFive, false),
                     OtpInput(_fieldSix, false),
                   ],
                 ),
                 const SizedBox(
                   height: 5,
                 ),
       Container(
         child:Row(
           children: [
             Padding(padding: EdgeInsets.only(left:20)),
             Text("Resend Otp?",style: new TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w400, color: Color(0xffC7C7C7), fontSize: 14.0 ),),
             Padding(padding: EdgeInsets.only(left:150)),
             Text("0.30sec",style: new TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w400, color: Color(0xffC7C7C7),fontSize: 14.0 )),
           ],
         )
       ),

                 Center(
                   child: Stack(
                     children: [
                       Transform.translate(offset: Offset(-20,-60),
                         child: Container(
                           height: 368,
                           width:300,
                           child:Image.asset('image/Otpapage.png'),
                         ),),

                       Transform.translate(offset: Offset(0,130),
                         child:  Center(
                           child: Container(
                             child:Text('2/10 Questions', style: TextStyle(color:Color(0xffB0B2B5),fontSize: 12),),
                           ),
                         ),),
                       Transform.translate(offset: Offset(150, 160),
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

                       Transform.translate(offset: Offset(0, 190),
                         child:  Center(
                           child: ElevatedButton.icon(
                             style: ElevatedButton.styleFrom(
                               primary: Color(0xff24B445),
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(32.0)
                               ),

                             ),
                             onPressed: ()  {
                               setState(() async {
                                 _otp = _fieldOne.text +
                                     _fieldTwo.text +
                                     _fieldThree.text +
                                     _fieldFour.text+
                                     _fieldFive.text+
                                     _fieldSix.text;

                                 final url = Uri.parse('https://staging.themedibank.in/api/v1/UserSignUp/VerifyMobileOtp');

                                 final jsonBody = jsonEncode({
                                   "createdAt": "fjsfhsfd082342084324",
                                   "userId": 0,
                                   "otpNumber": _otp,
                                 });

                                 final response = await http.post(url, body: jsonBody, headers: {
                                   'Content-Type': 'application/json',
                                 });
                                 log(response.body);
                                 if (response.statusCode == 200) {
                                   //_WelcomeString = "Sign Up Succes";
                                   Navigator.push(context,MaterialPageRoute(builder: (context)=>Email_Screen(),));
                                 } else {
                                   _WelcomeString = "Please enter valid OTP";
                                 }


                               });
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












             /*    Padding(padding: EdgeInsets.only(top: 250.0)),
       ElevatedButton.icon(
           style: ElevatedButton.styleFrom(
             primary: Colors.greenAccent.shade700,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(32.0)
             ),

           ),
           onPressed: () {
             setState(() async {
               _otp = _fieldOne.text +
                   _fieldTwo.text +
                   _fieldThree.text +
                   _fieldFour.text+
                    _fieldFive.text+
                    _fieldSix.text;

               final url = Uri.parse('https://staging.themedibank.in/api/v1/UserSignUp/VerifyMobileOtp');

               final jsonBody = jsonEncode({
                 "createdAt": "fjsfhsfd082342084324",
                 "userId": 0,
                 "otpNumber": _otp,
               });

               final response = await http.post(url, body: jsonBody, headers: {
                 'Content-Type': 'application/json',
               });
                log(response.body);
               if (response.statusCode == 200) {
                    //_WelcomeString = "Sign Up Succes";
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Email_Screen(),));
               } else {
                 _WelcomeString = "Please enter valid OTP";
               }


             });
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
                 ),*/
                 // Display the entered OTP code
               Text(
                  "$_WelcomeString",
                 ),
               ]

           )
    ],
    ),
       ),
   );
  }


}

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            filled: true,
            fillColor: Color(0xffF9F9F9),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: BorderSide.none,
            ),
            counterText: '',
            hintStyle: TextStyle(color: Color(0xff4F555A).withOpacity(0.5), fontSize: 18.0, fontWeight: FontWeight.w400)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
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