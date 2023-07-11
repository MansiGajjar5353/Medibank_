import 'dart:async';
import 'dart:convert';
import 'package:project_signup_page/Functions/APILink.dart';
import 'package:project_signup_page/Functions/Loader.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lottie/lottie.dart';

import 'dart:developer';
import 'package:flutter/services.dart';

import '../Functions/Utility.dart';
import 'toast_util.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project_signup_page/Onbording/Responsive.dart';
import 'package:project_signup_page/UI/Signin.dart';
import 'package:project_signup_page/UI/otpScreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {
  bool _hasUppercase(String value) {
    return value.contains(RegExp(r'[A-Z]'));
  }

  bool _hasLowercase(String value) {
    return value.contains(RegExp(r'[a-z]'));
  }

  bool _hasSpecialChar(String value) {
    return value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  }

  bool _hasNumber(String value) {
    return value.contains(RegExp(r'[0-9]'));
  }

  bool IsLoader = false;
  Color buttonColor = Colors.black; // Initial color of the button
  bool isButtonPressed = false;
  bool _obscureText = true;
  int index = 1;
  bool _obscureText2 = true;
  String _Error = "Error text will be shown here (temporary)";
  String res = "";
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _checkpasswordController =
      new TextEditingController();

  void _otppage() async {
    IsLoader= true;

    try {

      final url = Uri.parse('$API' + APIList.UserSignUp);
      final jsonBody = jsonEncode({
        "Password": _passwordController.text,
        "ContactNo": _userController.text,
        "CreatedAt": "Samsung,21,11",
        "FcmToken": "fjsfhsfd082342084324",
      });
      print("0");
      print(jsonBody.toString());
      print("1");

      final response = await http.post(url, body: jsonBody, headers: {
        'Content-Type': 'application/json',
      });
      IsLoader= false;

      if (response.statusCode == 200) {
        // Request was successful
        final jsonResponse = jsonDecode(response.body);
        print(jsonResponse);

        int statusCode = jsonResponse['statusCode'];
        print(statusCode);
        print(jsonResponse["responseData"]['contactNo']);
        String ContactNo = jsonResponse["responseData"]['contactNo'];
        print(ContactNo);

        int UserID = jsonResponse["responseData"]['userId'];
        print(jsonResponse["responseData"]['userId']);

        // String PWD = jsonResponse["responseData"]['Password'];
        res = response.body;
        log(res);
        print("2");

        print(res);
        print("3");

        if (statusCode == 200) {
          IsLoader = false;
          Future<void> saveUserData() async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            await prefs.setString('userId', UserID.toString());
            await prefs.setString('contactNo', ContactNo);
            // await prefs.setString('password', PWD);
          }

          saveUserData().then((_) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => otpScreen()),
            );

            // });
          });
        } else {
          setState(() {
            IsLoader = false;

          });

          // Handle other status codes here
        }
      } else {
        setState(() {
          IsLoader = false;

        });
      }
    } catch (e) {
      setState(() {
        IsLoader = false;

      });
      print('An error occurred: $e');
      // Handle the error as needed
    }

  }

  void _Validation() {
    setState(() {
      if (_userController.text.isEmpty) {
        Utility.ShowToast("Please Enter Contact Number");
      } else if (_userController.text.length != 10) {
        Utility.ShowToast("Enter Proper number");
      } else if (_passwordController.text.isEmpty) {
        Utility.ShowToast("Enter Password");
      } else if (_passwordController.text.length < 8) {
        Utility.ShowToast("Enter minimum 8 charactor");
      } else if (!_hasUppercase(_passwordController.text)) {
        Utility.ShowToast("Enter atleast one Uppaercase");
      } else if (!_hasLowercase(_passwordController.text)) {
        Utility.ShowToast("Enter atleast one Lowercase");
      } else if (!_hasSpecialChar(_passwordController.text)) {
        Utility.ShowToast("Enter atleast one special charactor");
      } else if (!_hasNumber(_passwordController.text)) {
        Utility.ShowToast("Enter atleast one number");
      } else if (_checkpasswordController.text.isEmpty) {
        Utility.ShowToast("Please Re-Write the password");
      } else if (_passwordController.text != _checkpasswordController.text) {
        Utility.ShowToast("Make sure Password and Re-write password is same");
      } else {
        _otppage();
      }
    });
  }

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
      _Validation();
      //  _otppage();
      // log("Mansi ");
      // Perform navigation after the delay
      // Navigator.push(context,MaterialPageRoute(builder: (context)=>otpScreen(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
        leading: Align(
          alignment: Alignment.bottomLeft,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const BackButtonIcon(),
          ),
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
      body: Stack(
        children: [
          Container(
            // height: _mediaquery.size.height*1,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 21.0, top: 20.0),
                  //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                  child: Text(
                    "Please sign up to continue",
                    style: new TextStyle(
                        color: Color(0xFF24B445),
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 28
                            : width / 60,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 21.0, top: 10.0),
                  //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                  child: Text(
                    "Welcome to Medibank!",
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 18
                            : width / 60,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  ),
                ),

                Padding(
                    padding:
                        EdgeInsets.only(top: 15.0, right: 30.0, left: 30.0)),
                Center(
                  child: Container(
                    width: width,
                    height: _mediaquery.size.height * 0.07,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    //    padding: EdgeInsets.only(left:20.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(35), // set the border radius
                      //border: Border.all(),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      controller: _userController,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Contact no",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 25
                                : width / 60,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),

                Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, right: 30.0, left: 30.0)),
                Container(
                  width: 360,
                  height: _mediaquery.size.height * 0.07,
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  // padding: EdgeInsets.only(left:20.0),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(35), // set the border radius
                    // border: Border.all(),
                  ),
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Color(0xff4F555A).withOpacity(0.5),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 25
                              : width / 60,
                          fontWeight: FontWeight.w400),
                      suffixIcon: IconButton(
                        icon: Icon(
                          !_obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xff4F555A).withOpacity(0.5),
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                    obscureText: _obscureText,
                  ),
                ),

                Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, right: 30.0, left: 30.0)),
                Container(
                  width: 360,
                  height: _mediaquery.size.height * 0.07,
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  //padding: EdgeInsets.only(left:20.0),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(35), // set the border radius
                    // border: Border.all(),
                  ),
                  child: TextField(
                    obscureText: _obscureText2,
                    controller: _checkpasswordController,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Re-write password",
                      hintStyle: TextStyle(
                          color: Color(0xff4F555A).withOpacity(0.5),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 25
                              : width / 60,
                          fontWeight: FontWeight.w400),
                      suffixIcon: IconButton(
                        icon: Icon(
                          !_obscureText2
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xff4F555A).withOpacity(0.5),
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText2 = !_obscureText2;
                          });
                        },
                      ),
                    ),
                  ),
                ),

                Padding(
                    padding: EdgeInsets.only(top: 0, left: 50.0, right: 50.0)),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Transform.translate(
                              offset: Offset(
                                0,
                                10,
                              ),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Container(
                                  margin: EdgeInsets.only(left: 30.0),
                                  width: 5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                title: Text(
                                  'One uppercase character',
                                  style: new TextStyle(
                                      fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 40
                                              : width / 90,
                                      color: Colors.grey.shade400),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(
                                0,
                                -25,
                              ),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Container(
                                  width: 5,
                                  margin: EdgeInsets.only(left: 30.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                title: Text(
                                  'One lower case character',
                                  style: new TextStyle(
                                      fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 40
                                              : width / 90,
                                      color: Colors.grey.shade400),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(
                                0,
                                -60,
                              ),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Container(
                                  width: 5.0,
                                  margin: EdgeInsets.only(left: 30.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                title: Text(
                                  'One special character',
                                  style: new TextStyle(
                                      fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 40
                                              : width / 90,
                                      color: Colors.grey.shade400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Transform.translate(
                              offset: Offset(
                                -20,
                                -20,
                              ),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Container(
                                  margin: EdgeInsets.only(left: 30.0),
                                  width: 5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                title: Text(
                                  'One Number',
                                  style: new TextStyle(
                                      fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 40
                                              : width / 90,
                                      color: Colors.grey.shade400),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(
                                -20,
                                -55,
                              ),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Container(
                                  width: 5,
                                  margin: EdgeInsets.only(left: 30.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                title: Text(
                                  '8 character minimum',
                                  style: new TextStyle(
                                      fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 40
                                              : width / 90,
                                      color: Colors.grey.shade400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                    padding:
                        EdgeInsets.only(top: 0.0, left: 50.0, right: 50.0)),
                Transform.translate(
                  offset: Offset(0, 0),
                  child: Container(
                    height: _mediaquery.size.height * 0.06,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: ElevatedButton(
                      child: Text("Sign up",
                          style: new TextStyle(
                              color: isButtonPressed
                                  ? Colors.white
                                  : Color(0xff4F555A).withOpacity(0.5),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 25
                                  : width / 60,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700)),
                      style: ElevatedButton.styleFrom(
                        primary:
                            isButtonPressed ? buttonColor : Color(0xffF9F9F9),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                      ),
                      onPressed: handleButtonPress,
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: 50,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Or Login with',
                          style: TextStyle(
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 60,
                              color: Colors.grey),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 1,
                          width: 50,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0)),
                Transform.translate(
                  offset: Offset(0, 0),
                  child: Container(
                    height: _mediaquery.size.height * 0.06,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.5,
                      ),
                    ),
                    child: ElevatedButton(
                      child: Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //Padding(padding: EdgeInsets.only(left:100),),
                              Image.asset(
                                'image/google.png',
                                height: 20,
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Text("Google",
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 25
                                              : width / 60,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w900)),
                            ],
                          ),
                        ),
                      ),

                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                      onPressed: () {},
                      //    _otppage
                    ),
                  ),
                ),

                // new Text("$_Error"),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      'Already a member?',
                      style: TextStyle(
                        color: Color(0xffACADAC),
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 25
                            : width / 60,
                      ),
                    )),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signin(),
                              ));
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              color: Color(0xff191F32),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 25
                                  : width / 60),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Visibility(
            visible: IsLoader,
            child: Center(
              child: Lottie.asset(
                'progress_loader.json',
                height: 200.0,
                repeat: true,
                reverse: true,
                animate: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class Utility {
//   static void ShowToast(String Msg) {
//     Fluttertoast.showToast(
//         msg: Msg,
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//         fontSize: 16.0);
//   }
// }
