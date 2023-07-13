import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:project_signup_page/Functions/APILink.dart';
import 'package:project_signup_page/Functions/Loader.dart';
import 'package:project_signup_page/Functions/Utility.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';
import 'package:project_signup_page/UI/Create_acc.dart';
import 'package:project_signup_page/UI/EmailOTP.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Email_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Email_ScreenState();
  }
}

class Email_ScreenState extends State<Email_Screen> {

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
      _validation();
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => create_acc(),
      //     ));
      // Perform navigation after the delay
    });
  }

String res ='';
  String _Error ='';

  void _CreateAcc() async {
    try {

      SharedPreferences prefs = await SharedPreferences.getInstance();
      String userId = "";
      userId = prefs.getString('userId') ?? '';

      final url =
      Uri.parse('$API' + APIList.SaveEmailAddress);
      final jsonBody = jsonEncode({
        "EmailId" : _emailcontroller.text,
        "userID" : userId,
        "CreatedAt": "Samsung,21,11",
        "FcmToken": "fjsfhsfd082342084324",
      });
      print("0");
      print(jsonBody.toString());
      print("1");

      final response = await http.post(url, body: jsonBody, headers: {
        'Content-Type': 'application/json',
      });
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        // Request was successful
        final jsonResponse = jsonDecode(response.body);
        print(jsonResponse);

        int statusCode = jsonResponse['statusCode'];
        print(statusCode);
        // print(jsonResponse["responseData"]['contactNo']);
        // String ContactNo = jsonResponse["responseData"]['contactNo'];
        // print(ContactNo);
        print("2");
        print("3");
        //
        // int UserID = jsonResponse["responseData"]['userId'];
        // print(jsonResponse["responseData"]['userId']);

        print("3");
        // String PWD = jsonResponse["responseData"]['Password'];
        res = response.body;
        log(res);
        print("2");

        print(res);
        print("3");


        if (statusCode == 200) {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EmailOTP()));

        } else {
          // Handle other status codes here
          _Error = "Please try again";
        }
      } else {
        // Handle request failure here
        _Error = "Request failed with status: ${response.statusCode}";
      }
    } catch (e) {
      // Exception handling
      print('An error occurred: $e');
      // Handle the error as needed
    }
  }




  void _validation(){
    final pattern = r'^[\w\d\+\-_]+(\.[\w\d\+\-_]+)*@[a-zA-Z\d-]+(\.[a-zA-Z\d-]+)*\.[a-zA-Z]{2,}$';
    final regExp = RegExp(pattern);
    setState(() {
      if (
       _emailcontroller.text.isEmpty
      ) {
        Utility.ShowToast("Please Enter your Email ID");
      }else if(
      !regExp.hasMatch(_emailcontroller.text)
      ){
        Utility.ShowToast("Please Enter valid Email Id");
      }
      else{
        _CreateAcc();
      }

    });

}
  final TextEditingController _emailcontroller = new TextEditingController();
  // bool _isEmailValid = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;

    var _mediaquery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:
            Responsive.isSmallScreen(context) ? width / 10 : width / 10,
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.green,
          size: Responsive.isSmallScreen(context) ? width / 20 : width / 25,
        ),
        title: Center(
          child: Container(
              padding: EdgeInsets.only(right: 30),
              child: Image(
                  image: AssetImage(
                    "image/MedibankLOGO.png",
                  ),
                  width: Responsive.isSmallScreen(context)
                      ? width / 2.3
                      : width / 4)),
        ),
      ),
      body: Container(
        //height: _mediaquery.size.height*1,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0),

              // height: _mediaquery.size.height*0.13,
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
                          margin: EdgeInsets.only(left: 25),
                          child: Text(
                            "Personal ",
                            style: new TextStyle(
                                color: Colors.black,
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 15
                                    : width / 30,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          //margin: EdgeInsets.only(left:30,),
                          child: Text(
                            "Information ",
                            style: new TextStyle(
                                height: 0.90,
                                color: Colors.green,
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 15
                                    : width / 30,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Text(
                            "Note: minim mollit non deserunt ullamco ",
                            style: new TextStyle(
                                color: Color(0xff929292),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 46
                                    : width / 60,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Text(
                            "est sit aliqua dolor do amet sint. ",
                            style: new TextStyle(
                                color: Color(0xff929292),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 46
                                    : width / 60,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('image/perso.png',
                              height: _mediaquery.size.height * 0.089),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: _mediaquery.size.height * 0.01),
                          child: RichText(
                            text: TextSpan(
                              text: 'category ',
                              style: TextStyle(
                                color: Color(0xff929292),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 35
                                    : width / 60,
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
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 0, top: 50.0),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child: RichText(
                  text: TextSpan(
                    text: 'What is your ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 19
                          : width / 30,
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
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "Amet minim mollit non deserunt ullamco est sit ",
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
                      "aliqua dolor do amet sint.",
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
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(right: 20.0),
                padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(80), // set the border radius
                  //border: Border.all(),
                ),
                child: TextField(
         controller: _emailcontroller,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    filled: true,
                    fillColor: Color(0xffF9F9F9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "prathvi@unada.io",
                    hintStyle: TextStyle(
                        color: Color(0xff4F555A).withOpacity(0.5),
                        fontFamily: 'Poppins',
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 23
                            : width / 60),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: _mediaquery.size.height * 0.02)),
            Center(
              child: Container(
                //margin: EdgeInsets.only(left:21.0,top:0 ),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child: RichText(
                  text: TextSpan(
                    text: 'Note: ',
                    style: TextStyle(
                      color: Color(0xff24B445),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 35
                          : width / 60,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Please check your email for verification and confirm it.',
                        style: TextStyle(
                          color: Color(0xff929292),
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Transform.translate(
                    offset: Offset(0, -60),
                    child: SizedBox(
                      height: _mediaquery.size.height * 0.49,
                      child: Image.asset(
                        'image/Rectangle.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  Center(
                    child: Container(
                      margin:
                          EdgeInsets.only(top: _mediaquery.size.height * 0.22),
                      child: Text(
                        '2/10 Questions',
                        style: TextStyle(
                            color: Color(0xffB0B2B5),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 25
                                : width / 60),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin:
                          EdgeInsets.only(top: _mediaquery.size.height * 0.26),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 9)),
                          CircleAvatar(
                            backgroundColor: Color(0xffD9D9D9),
                            radius: 4,
                          ),
                          Padding(padding: EdgeInsets.only(left: 7)),
                          CircleAvatar(
                            backgroundColor: Color(0xff24B445),
                            radius: 5,
                          ),
                          Padding(padding: EdgeInsets.only(left: 7)),
                          CircleAvatar(
                            backgroundColor: Color(0xffD9D9D9),
                            radius: 4,
                          ),
                        ],
                      ),
                    ),
                  ),

                  Center(
                    child: Container(
                      height: _mediaquery.size.height * 0.070,
                      width: Responsive.isSmallScreen(context)
                          ? width / 2.5
                          : width / 3.5,
                      margin:
                          EdgeInsets.only(top: _mediaquery.size.height * 0.29),
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
                  ),

                  //   Center(
                  //   child: Container(
                  //     margin: EdgeInsets.only(top: _mediaquery.size.height*0.29),
                  //     child: ElevatedButton.icon(
                  //         style: ElevatedButton.styleFrom(
                  //           backgroundColor: Color(0xff24B445),
                  //           shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(32.0)
                  //           ),
                  //
                  //         ),
                  //         onPressed: () {
                  //         Navigator.push(context,MaterialPageRoute(builder: (context)=>create_acc(),));
                  //         },
                  //         icon: Container(
                  //           margin: EdgeInsets.only(left:10),
                  //           width: 80,
                  //           child: Icon(
                  //             Icons.arrow_forward,
                  //             size: 30,
                  //             color: Colors.black,
                  //           ),
                  //         ), label: Text(""),
                  //       ),
                  //   ),
                  // ),
                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
