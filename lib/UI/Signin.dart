import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project_signup_page/Dashbord/ReportsOpen2.dart';
import 'package:project_signup_page/Functions/APILink.dart';
import 'package:project_signup_page/Functions/Utility.dart';
import 'package:project_signup_page/Onbording/City.dart';
import 'package:project_signup_page/Onbording/Gender.dart';
import 'package:project_signup_page/Onbording/Select_Username.dart';
import 'package:project_signup_page/Onbording/b_date.dart';
import 'package:project_signup_page/UI/Create_acc.dart';
import 'package:project_signup_page/UI/Email.dart';
import 'package:project_signup_page/UI/Signup.dart';
import 'package:project_signup_page/UI/otpScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Onbording/Responsive.dart';
import 'FinalPage.dart';

class Signin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SigninState();
  }
}

class _SigninState extends State<Signin> {
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
setState(() {
  loginpage();

});
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => ReportsOpen2(),
      //     )); // Perform navigation after the delay
    });
  }

  bool _obscureText2 = true;
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  String _Error = "";
  String res = "";



  void loginpage() async {

    try {

      final url = Uri.parse('$API' + APIList.UserLogin);
      final jsonBody = jsonEncode({
        "Password": _passwordController.text,
        "UserName": _userController.text,
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
      if (response.statusCode == 200) {
        // Request was successful
        final jsonResponse = jsonDecode(response.body);
        print(jsonResponse);
        print(jsonResponse["responseData"]['userId']);
        int statusCode = jsonResponse['statusCode'];
        print(statusCode);
        String redirectTo = jsonResponse['redirectTo'];
        print(redirectTo);
        print(jsonResponse["responseData"]['contactNo']);
        String ContactNo = jsonResponse["responseData"]['contactNo'];
        String userName = jsonResponse["responseData"]['userName'];
        int Patientid = jsonResponse["responseData"]['patientId'];
        int UserID = jsonResponse["responseData"]['userId'];
        String firstName = jsonResponse["responseData"]['firstName'];
        String lastName = jsonResponse["responseData"]['lastName'];
        String emailId = jsonResponse["responseData"]['emailId'];
        String password = jsonResponse["responseData"]['password'];
        String salt = jsonResponse["responseData"]['salt'];
      //  String isVerifyMobileNo = jsonResponse["responseData"]['isVerifyMobileNo'];
     //   String isVerifyEmail = jsonResponse["responseData"]['isVerifyEmail'];
        String dateOfBirth = jsonResponse["responseData"]['dateOfBirth'];
        String gender = jsonResponse["responseData"]['gender'];
        String city = jsonResponse["responseData"]['city'];
        String fcmToken = jsonResponse["responseData"]['fcmToken'];
        String address = jsonResponse["responseData"]['address'];
        String bloodGroup = jsonResponse["responseData"]['bloodGroup'];
        String zip = jsonResponse["responseData"]['zip'];
     //   String profileImage = jsonResponse["responseData"]['profileImage'];
      //  String isSubscribed = jsonResponse["responseData"]['isSubscribed'];
        int parentUserId = jsonResponse["responseData"]['parentUserId'];

        // String PWD = jsonResponse["responseData"]['Password'];
        res = response.body;
        log(res);
        print("2");

        print(res);
        print("3");
        if (statusCode == 200) {
          Future<void> saveUserData() async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            await prefs.setString('userId', UserID.toString());
            await prefs.setString('contactNo', ContactNo);
            await prefs.setString('patientId', Patientid.toString());
            await prefs.setString('userName', userName);
            await prefs.setString('firstName', firstName);
            await prefs.setString('lastName', lastName);
            await prefs.setString('emailId', emailId);
            await prefs.setString('password', password);
            await prefs.setString('salt', salt);
           // await prefs.setString('isVerifyMobileNo', isVerifyMobileNo.toString());
         //   await prefs.setString('isVerifyEmail', isVerifyEmail.toString());
            await prefs.setString('dateOfBirth', dateOfBirth);
            await prefs.setString('gender', gender);
            await prefs.setString('city', city);
            await prefs.setString('fcmToken', fcmToken);
            await prefs.setString('address', address);
            await prefs.setString('bloodGroup', bloodGroup);
            await prefs.setString('zip', zip);
         //   await prefs.setString('profileImage', profileImage.toString());
          //  await prefs.setString('isSubscribed', isSubscribed);
            await prefs.setString('parentUserId', parentUserId.toString());
            await prefs.setString('redirectTo', redirectTo);


            // await prefs.setString('password', PWD);
          }

          saveUserData().then((_) {
            print("1");
          if(redirectTo==("username")){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Select_Username(), ));
          }else if(redirectTo==('city')){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>City(), ));
          }else if(redirectTo==("gender")){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>create_acc(), ));
          }else if(redirectTo==("birthdate")) {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> create_acc(),));
          }else if(redirectTo==("name")) {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> create_acc(),));
          }else if(redirectTo==("name")) {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> create_acc(),));
          }



          });
        } else {
         print("Errror 1");

          // Handle other status codes here
        }
      } else {
        print("Errror 1");
      }
    } catch (e) {

      print('An error occurred: $e');
      // Handle the error as needed
    }

  }


  // void _loginpage() {
  //   setState(() async {
  //     if (_userController.text.isNotEmpty &&
  //         _passwordController.text.isNotEmpty) {
  //       final url =
  //           Uri.parse('https://staging.themedibank.in/api/v1/UserSignUp/Login');
  //       final jsonBody = jsonEncode({
  //         "createdAt": "Samsung,21,11",
  //         "userName": _userController.text,
  //         "password": _passwordController.text,
  //         "fcmToken": "fjsfhsfd082342084324"
  //       });
  //       final response = await http.post(url, body: jsonBody, headers: {
  //         'Content-Type': 'application/json',
  //       });
  //       res = response.body;
  //       log(res);
  //
  //       if (response.statusCode == 200) {
  //         Navigator.push(
  //             context, MaterialPageRoute(builder: (context) => FinalPage()));
  //       } else {
  //         _Error = "Please try again";
  //       }
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
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
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 21.0, top: 10.0),
              //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
              child: Text(
                "Please sign in to continue",
                style: new TextStyle(
                    color: Color(0xff24B445),
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
                "Glad to see you!",
                style: new TextStyle(
                    color: Colors.black,
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 15
                        : width / 60,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10.0, right: 30.0, left: 30.0)),
            Container(
              width: 360,
              height: _mediaquery.size.height * 0.07,
              margin: EdgeInsets.only(left: 0.0, right: 20.0),
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(35), // set the border radius
                //border: Border.all(),
              ),
              child: TextField(
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
                  hintText: "User name/Contact no",
                  hintStyle: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.50),
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 25
                        : width / 60,
                  ),
                ),
              ),
            ),
            /*
              Padding(padding: EdgeInsets.only(top: 20.0)),
              TextField(
                controller: _userController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Contact no",
                ),
              ),*/
            Padding(
                padding: EdgeInsets.only(top: 10.0, right: 30.0, left: 30.0)),
            Container(
              width: 360,
              height: _mediaquery.size.height * 0.06,
              margin: EdgeInsets.only(left: 0, right: 20.0),
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(35), // set the border radius
                //border: Border.all(),
              ),
              child: TextField(
                obscureText: _obscureText2,
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
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      !_obscureText2 ? Icons.visibility : Icons.visibility_off,
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
            Container(
              margin: EdgeInsets.only(left: 220, top: 0),
              child: TextButton(
                onPressed: () {
                  print("recover preseed");
                },
                child: Text(
                  'Recover Password?',
                  style: new TextStyle(
                      height: 0.99,
                      color: Color(0xffC7C7C7),
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Poppins',
                      fontSize: 10),
                ),
              ),
              //child:Text("Recover Password?", style: new TextStyle(color: Colors.grey, fontWeight: FontWeight.w900, fontFamily: 'Poppins'),),
            ),
            Padding(
                padding: EdgeInsets.only(top: 180.0, left: 50.0, right: 50.0)),
            Container(
              height: 50.0,
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: ElevatedButton(
                child: Text("Sign In",
                    style: TextStyle(
                        color: isButtonPressed
                            ? Colors.white
                            : Color(0xff4F555A).withOpacity(0.5),
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 25
                            : width / 60,
                        fontWeight: FontWeight.w700)),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isButtonPressed ? buttonColor : Color(0xffF9F9F9),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
                onPressed: handleButtonPress,
              ),
            ),
            Transform.translate(
              offset: Offset(0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 50,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text('Or Login with',
                      style: TextStyle(
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 30
                              : width / 60,
                          color: Colors.grey)),
                  SizedBox(width: 10),
                  Container(
                    height: 1,
                    width: 50,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 40.0, left: 50.0, right: 50.0)),
            Container(
              height: 50.0,
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
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 25
                                    : width / 60,
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w900)),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  onPressed: (){}),
            ),
            /*child: ElevatedButton(  child: Text("Google", style:new TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w900)),
                    style: ElevatedButton.styleFrom(
                      elevation:0,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),

                      ),

                    ),
                    onPressed:_loginpage),*/

            new Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    'Not a member?',
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
                              builder: (context) => SignUp(),
                            ));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xff191F32),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 25
                              : width / 60,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Text("$_Error"),
          ],
        ),
      ),
    );
  }
}
