import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_signup_page/Onbording/ForgetNewPassword.dart';
import '../Onbording/Responsive.dart';

class ForgrtPassworOtp extends StatefulWidget{
  //final String data;
  //const otpScreen(this.data,{ super.key})


  @override
  State<StatefulWidget> createState() {
    return _ForgrtPassworOtp();
  }

}

class _ForgrtPassworOtp extends State<ForgrtPassworOtp> {
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
      appBar:  AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        title: Text("", style:  TextStyle(color: Colors.black,  fontSize:Responsive.isSmallScreen(context)? width/20 : width/34, fontFamily: 'Poppins',fontWeight: FontWeight.w400,),),

      ),
      body:Container(
        height: _mediaquery.size.height*1,
        child: ListView(
          children: [
            Container(
              width: Responsive.isSmallScreen(context)? width/1.5 : width/1.5,
              height: Responsive.isSmallScreen(context)? width/1.5 : width/1.5,
              child:Image(image: AssetImage('image/forgetpassword.png')),
            ),
            Center(
              child: Container(
                margin:EdgeInsets.only(top: Responsive.isSmallScreen(context)? width/5 : width/5),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child:RichText(
                  text: TextSpan(
                    text: 'OTP VERIFICATION',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Responsive.isSmallScreen(context)? width/28: width/28,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),


                  ),
                ),
                // child:Text("We need to verify your Number?",style: new TextStyle(height:0.90,color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

              ),
            ),

            Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child:Text("Enter the OTP sent to",
                      style: new TextStyle(color:Color(0xff4E4D4D),
                          fontSize: Responsive.isSmallScreen(context)? width/32:width/60,
                          fontFamily: 'Poppins',fontWeight: FontWeight.w400),
                    ),),

                  Container( child:Text("- +91-8976500001",
                    style: new TextStyle(color:Color(0xff212426),
                        fontSize: Responsive.isSmallScreen(context)? width/32:width/60,
                        fontFamily: 'Poppins',fontWeight: FontWeight.w600),
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
                    margin: EdgeInsets.only(top:Responsive.isSmallScreen(context)? width/20:width/20, ),
                    alignment: Alignment.center,
                      child:Column(


                        children: [
                          Container(
                              alignment: Alignment.center,
                              child: Text("0.30sec",
                                  style: new TextStyle(fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400, color: Color(0xff464646),
                                      fontSize: 14.0 ))),
                          Container(
                            alignment: Alignment.center,
                            child:   Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: (){},

                                  child: Container(
                                      child: Text("Don’t receive code ?",
                                        style: new TextStyle(fontFamily: "Poppins",
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff5A5A5A),
                                            fontSize: 14.0 ),)),
                                ),

                                Container(
                                    child: Text("Re-send",
                                      style: new TextStyle(fontFamily: "Poppins",
                                          fontWeight: FontWeight.w600, color: Color(0xff212426),
                                          fontSize: 14.0 ),)),
                              ],
                            ),
                          )


                        ],
                      )
                  ),
                  Container(
                    margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/10 : width/10,right: Responsive.isSmallScreen(context)? width/10 : width/10,top: Responsive.isSmallScreen(context)? width/7 : width/7,bottom: Responsive.isSmallScreen(context)? width/7 : width/7),
                    width: Responsive.isSmallScreen(context)? width/1.3 : width/1.3,
                    height: Responsive.isSmallScreen(context)? width/9.5 : width/9.5,
                    child: ElevatedButton(
                      child: Text('Continue', style: TextStyle( fontFamily:'Poppins',color: Color(0xffFFFFFF),
                          fontSize:  Responsive.isSmallScreen(context)? width/ 25:width/25, fontWeight: FontWeight.w900),),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF24B445),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>ForgetNewPassword()
                          ),
                        );
                      },
                    ),
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
