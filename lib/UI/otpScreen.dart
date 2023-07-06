import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Onbording/Responsive.dart';
import 'Email.dart';
class otpScreen extends StatefulWidget{
  //final String data;
  //const otpScreen(this.data,{ super.key})


  @override
  State<StatefulWidget> createState() {
  return _otpScreenState();
  }

}

class _otpScreenState extends State<otpScreen> {
  Color imageColor = Color(0xff4F555A).withOpacity(0.5);
  Color buttonColor = Colors.black; // Initial color of the button
  bool isButtonPressed = false;


  void handleButtonPress() {
    setState(() {
      buttonColor = Colors.green; // Change the color to your desired value
      isButtonPressed = true;
    });

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        buttonColor = Colors.green; // Change the color back to the original value
        isButtonPressed = false;
      });
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Email_Screen(),));
      // Perform navigation after the delay

    });
  }





  //final String data;
  //otpScreen({required this.data});
  //String _WelcomeString = "";
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();
  String? _otp;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    var _mediaquery = MediaQuery.of(context);
   return Scaffold(
     appBar: AppBar(
       toolbarHeight: Responsive.isSmallScreen(context)? width/10: width/10,
       backgroundColor: Color(0xffffffff),
     elevation: 0,
     
     iconTheme: IconThemeData(color: Colors.green),
       title: Center(
         child: Container(padding: EdgeInsets.only(right: 30),
             child: Image(image: AssetImage("image/MedibankLOGO.png",), width: Responsive.isSmallScreen(context)? width/2.3: width/4)),
       ),
     ),

       body:Container(
         height: _mediaquery.size.height*1,
    child: ListView(
      children: [
        Container(
          margin: EdgeInsets.only( top:20.0),

          //  height: _mediaquery.size.height*0.13,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      margin:EdgeInsets.only(left:25),

                        child: Text("Personal ",style: new TextStyle( color: Colors.black,  fontSize: Responsive.isSmallScreen(context)? width/15 : width/30,
                            fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                      ),

                         Container(
                           margin:EdgeInsets.only(left:25),
                        //margin: EdgeInsets.only(left:30,),
                        child:Text("Information ",style: new TextStyle(height:0.90,color: Colors.green, fontSize: Responsive.isSmallScreen(context)? width/15 : width/30, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                      ),

                        Container(
                          margin:EdgeInsets.only(left:25),
                        child: Text("Note: minim mollit non deserunt ullamco ",style:new TextStyle( color: Color(0xff929292), fontSize: Responsive.isSmallScreen(context)? width/46 : width/60, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                      ),

                       Container(
                         margin:EdgeInsets.only(left:25),
                        child: Text("est sit aliqua dolor do amet sint. ",style:new TextStyle( color: Color(0xff929292), fontSize: Responsive.isSmallScreen(context)? width/46 : width/60, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                      ),
                  ],
                ), ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child:Column(
                  children: [

                     Container(
                        child: Image.asset('image/perso.png',height: _mediaquery.size.height*0.089),
                      ),



              Container(
                margin: EdgeInsets.only(top: _mediaquery.size.height*0.01),
                        child:RichText(
                          text: TextSpan(
                            text: 'category ',
                            style: TextStyle(
                              color: Color(0xff929292),
                              fontSize: Responsive.isSmallScreen(context)?width/35 : width/60,
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
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),


      Padding(padding: EdgeInsets.only(top:50.0)),
      Center(
        child: Container(
         // margin: EdgeInsets.only(left:21.0,top:50.0 ),
          //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
          child:RichText(
            text: TextSpan(
              text: 'We need to verify your ',
              style: TextStyle(
                color: Colors.black,
                fontSize: Responsive.isSmallScreen(context)? width/19: width/30,
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
      ),

        Container(
          child:Column(
            children: [
              Container(
                child:Text("Amet minim mollit non deserunt ullamco est sit ",
                  style: new TextStyle(color:Color(0xff929292),
                    fontSize: Responsive.isSmallScreen(context)? width/32:width/60,
                  fontFamily: 'Poppins'),
                ),),

              Container( child:Text("aliqua dolor do amet sint.",
                style: new TextStyle(color:Color(0xff929292),
                    fontSize: Responsive.isSmallScreen(context)? width/32:width/60,
                    fontFamily: 'Poppins'),
              ),
              ),
            ],
          ),
        ),
Padding(padding: EdgeInsets.only(top:20)),
      Column(
             mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
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
           mainAxisAlignment: MainAxisAlignment.spaceBetween,

           children: [
             InkWell(
               onTap: (){},
               child: Container(margin:EdgeInsets.only(left: 20),
                   child: Text("Resend Otp?",
                 style: new TextStyle(fontFamily: "Poppins",
                     fontWeight: FontWeight.w400, color: Color(0xffC7C7C7),
                     fontSize: 14.0 ),)),
             ),

             Container(margin:EdgeInsets.only(right: 20),
                 child: Text("0.30sec",
                 style: new TextStyle(fontFamily: "Poppins",
                     fontWeight: FontWeight.w400, color: Color(0xffC7C7C7),
                     fontSize: 14.0 ))),
           ],
         )
       ),

                 Center(
                   child: Stack(
                     children: [
                       Transform.translate(offset: Offset(0,-60),
                         child:SizedBox(
                           height: _mediaquery.size.height*0.49,
                           child: Image.asset(
                             "image/Otpapage.png",
                             fit: BoxFit.contain,
                           ),
                         ),

                         /*child: Container(
                           height: 368,
                           width:300,
                           child:Image.asset('image/Otpapage.png'),
                         ),*/),


                         Center(
                           child: Container(
                             margin: EdgeInsets.only(top: _mediaquery.size.height*0.25),
                             child:Text('2/10 Questions',
                               style: TextStyle(color:Color(0xffB0B2B5),
                                   fontSize: Responsive.isSmallScreen(context)? width/25:width/60),),
                           ),
                         ),


                        Center(
                           child:Container(
                             margin: EdgeInsets.only(top: _mediaquery.size.height*0.29),
                             child:Row(
                               mainAxisAlignment: MainAxisAlignment.center,
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



                       Center(
                         child: Container(
                           height: _mediaquery.size.height*0.070,
                           width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
                           margin: EdgeInsets.only(top: _mediaquery.size.height*0.32),
                           child: ElevatedButton(onPressed:handleButtonPress,
                             child: Image.asset('image/AerrowRight.png',
                                 color: isButtonPressed? Colors.black:imageColor,
                                 height: _mediaquery.size.height*0.04) ,
                             style: ElevatedButton.styleFrom(
                                           backgroundColor:isButtonPressed ? buttonColor :  Color(0xffF9F9F9),
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(32.0)
                                          ),
                           ),
                         ),
                         ),
                       ),

                      //     Center(
                      //       child: Container(
                      //         margin: EdgeInsets.only(top: _mediaquery.size.height*0.32),
                      //        child: ElevatedButton.icon(
                      //          style: ElevatedButton.styleFrom(
                      //            backgroundColor: Color(0xff24B445),
                      //            shape: RoundedRectangleBorder(
                      //                borderRadius: BorderRadius.circular(32.0)
                      //            ),
                      //
                      //          ),
                      //          onPressed: ()  {Navigator.push(context,MaterialPageRoute(builder: (context)=>Email_Screen(),));
                      //
                      // /*         setState(() async {
                      //              _otp = _fieldOne.text +
                      //                  _fieldTwo.text +
                      //                  _fieldThree.text +
                      //                  _fieldFour.text+
                      //                  _fieldFive.text+
                      //                  _fieldSix.text;
                      //
                      //              final url = Uri.parse('https://staging.themedibank.in/api/v1/UserSignUp/VerifyMobileOtp');
                      //
                      //              final jsonBody = jsonEncode({
                      //                "createdAt": "fjsfhsfd082342084324",
                      //                "userId": 0,
                      //                "otpNumber": _otp,
                      //              });
                      //
                      //              final response = await http.post(url, body: jsonBody, headers: {
                      //                'Content-Type': 'application/json',
                      //              });
                      //              log(response.body);
                      //              if (response.statusCode == 200) {
                      //                //_WelcomeString = "Sign Up Succes";
                      //                Navigator.push(context,MaterialPageRoute(builder: (context)=>Email_Screen(),));
                      //              } else {
                      //                _WelcomeString = "Please enter valid OTP";
                      //              }
                      //
                      //
                      //            });*/
                      //          },
                      //          icon: Container(
                      //            margin: EdgeInsets.only(left:10),
                      //            width: Responsive.isSmallScreen(context)?width/3.2 : width/50,
                      //             height: _mediaquery.size.height*0.071,
                      //            child: Image(image: AssetImage('image/AerrowRight.png'),
                      //                fit: BoxFit.scaleDown),
                      //          ), label: Text(""),
                      //        ),
                      //    ),
                      //     ),








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
              /* Text(
                  "$_WelcomeString",
                 ),*/
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
    return Container(
      height:50,
      width: 45,
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
            hintText: "2",
            counterText: '',
            hintStyle: TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize:12,
                fontWeight: FontWeight.w400)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
