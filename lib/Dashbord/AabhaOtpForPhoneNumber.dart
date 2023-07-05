import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_signup_page/Dashbord/AbhaSetup.dart';
import '../Onbording/Responsive.dart';
import '../UI/Email.dart';

class AabhaOtpForPhone extends StatefulWidget {
  //final String data;
  //const otpScreen(this.data,{ super.key})

  @override
  State<StatefulWidget> createState() {
    return _AabhaOtpForPhoneState();
  }
}

class _AabhaOtpForPhoneState extends State<AabhaOtpForPhone> {
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
        buttonColor =
            Colors.green; // Change the color back to the original value
        isButtonPressed = false;
      });
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AbhaSetup(),
          ));
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
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green), // set the color of the icons
        title: Center(
          child: Container(padding: EdgeInsets.only(right: 30),
              child: Image(image: AssetImage("image/MedibankLOGO.png",), width: Responsive.isSmallScreen(context)? width/2.3: width/4)),
        ),
      ),

      body: Stack(
        children: [
          Container(
            height: _mediaquery.size.height * 1,
            child: ListView(
              children: [
                Center(
                  child: Container(
                    // margin: EdgeInsets.only(left:21.0,top:50.0 ),
                    //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'We need to verify your ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 19
                                  : width / 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Phone Number?',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 19
                                  : width / 30,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ],
                    ),
                    // child:Text("We need to verify your Number?",style: new TextStyle(height:0.90,color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "Enter OTP received on phone number",
                          style: new TextStyle(
                              color: Color(0xff929292),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 32
                                  : width / 60,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      Container(
                        child: Text(
                          "linked with your Aadhaar",
                          style: new TextStyle(
                              color: Color(0xff929292),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 32
                                  : width / 60,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          margin: EdgeInsets.only(
                              top: Responsive.isSmallScreen(context)
                                  ? width / 25
                                  : width / 60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Resend Otp?",
                                      style: new TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffC7C7C7),
                                          fontSize: 14.0),
                                    )),
                              ),
                            ],
                          )),
                      Center(
                        child: Stack(
                          children: [
                            Transform.translate(
                              offset: Offset(0, -60),
                              child: SizedBox(
                                height: _mediaquery.size.height * 0.49,
                                child: Image.asset(
                                  "image/Otpapage.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ])
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                  left: Responsive.isSmallScreen(context)
                      ? width / 10
                      : width / 10,
                  right: Responsive.isSmallScreen(context)
                      ? width / 10
                      : width / 10,
                  bottom: Responsive.isSmallScreen(context)
                      ? width / 7
                      : width / 12),
              width:
                  Responsive.isSmallScreen(context) ? width / 2.5 : width / 2.5,
              height:
                  Responsive.isSmallScreen(context) ? width / 10 : width / 15,
              child: ElevatedButton(
                onPressed: handleButtonPress,
                child: Image.asset('image/AerrowRight.png',
                    color: isButtonPressed ? Colors.black : imageColor,
                    height: _mediaquery.size.height * 0.04),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isButtonPressed ? buttonColor : Color(0xffF9F9F9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
            ),
          )
        ],
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
      height: 50,
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
            hintStyle: TextStyle(
                color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: 12,
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
