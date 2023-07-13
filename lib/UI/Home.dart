import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/Plans.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';
import 'package:project_signup_page/Onbording/b_date.dart';
import 'package:project_signup_page/UI/Create_acc.dart';
import 'package:project_signup_page/UI/Signin.dart';
import 'package:project_signup_page/UI/Signup.dart';

import '../Onbording/Select_Username.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Homestate();
  }
}

class _Homestate extends State<Home> {
  Color buttonColor = Colors.black; // Initial color of the button
  bool isButtonPressed = false;
  Color buttonColor2 = Colors.black; // Initial color of the button
  bool isButtonPressed2 = false;

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

      // Perform navigation after the delay
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUp()));
    });
  }

  void handleButtonPress2() {
    setState(() {
      buttonColor2 =
          Color(0xff24B445); // Change the color to your desired value
      isButtonPressed2 = true;
    });

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        buttonColor2 =
            Color(0xff000000); // Change the color back to the original value
        isButtonPressed2 = false;
      });

      // Perform navigation after the delay
      Navigator.push(
         // context, MaterialPageRoute(builder: (context) => Plans(),));
          context, MaterialPageRoute(builder: (context) => Signin()));
      // Navigator.push(context, MaterialPageRoute(builder: (context)=> Weigh(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    var _mediaquery = MediaQuery.of(context);

    //
    // if (Platform.isAndroid || Platform.isWindows ) {
    //   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarBrightness: Brightness.light,
    //     statusBarIconBrightness: Brightness.light,
    //   ));
    // }
    // if (Platform.isIOS) {
    //   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarBrightness: Brightness.light,
    //     statusBarIconBrightness: Brightness.light,
    //   ));
    // }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight:
            Responsive.isSmallScreen(context) ? width / 10 : width / 10,
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.transparent),
        title: Wrap(children: <Widget>[
          Center(
            child: Image(
                image: AssetImage(
                  "image/MedibankLOGO.png",
                ),
                width: Responsive.isSmallScreen(context)
                    ? width / 2.3
                    : width / 4),
          ),
        ]),
      ),
      body: Container(
          width: width,
          height: _mediaquery.size.height * 1,
          child: ListView(
            children: [
              Container(
                //   height: _mediaquery.size.height*0.03,
                width: 200,
                margin: EdgeInsets.only(left: 21.0, top: 10.0),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child: Text(
                  "You're all set?",
                  style: new TextStyle(
                      color: Color(0xFF24B445),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 25
                          : width / 60,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Poppins'),
                ),
              ),
              Container(
                //height: _mediaquery.size.height*0.04,
                width: 200,
                margin: EdgeInsets.only(left: 21.0, top: 10.0),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child: Text(
                  "Let's create",
                  style: new TextStyle(
                      height: 1,
                      color: Colors.black,
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 12
                          : width / 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Poppins'),
                ),
              ),
              Container(
                //height: _mediaquery.size.height*0.07,
                width: width,
                margin: EdgeInsets.only(left: 21.0),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child: Text(
                  "your account",
                  style: new TextStyle(
                      height: 0.99,
                      color: Colors.black,
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 12
                          : width / 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Poppins'),
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.only(top: _mediaquery.size.height * 0.01)),
              Container(
                height: _mediaquery.size.height * 0.42,
                width: width,
                // margin: EdgeInsets.only(left:200),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'image/Ellipse.png',
                    )
                    //  width:Responsive.isSmallScreen(context)? width/3: width/5),
                    ),
              ),
/*Transform.translate
  (offset: Offset(0,-90),
             child: Container(
                margin: EdgeInsets.only(right:220),
                child: Image.asset('image/Ellipse2.png'),

              ),),*/

              Stack(
                children: [
                  //  Padding(padding: EdgeInsets.only(right: 300)),

                  Transform.translate(
                    offset: Offset(0, -150),
                    child: Container(
                      height: _mediaquery.size.height * 0.22,
                      width: width,
                      //margin: EdgeInsets.only(right:220),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('image/Ellipse2.png')),
                    ),
                  ),

                  Container(
                    height: 50.0,
                    width: Responsive.isSmallScreen(context)
                        ? width / 0.5
                        : width / 0.5,
                    margin: EdgeInsets.only(
                        top: _mediaquery.size.height * 0.10,
                        left: 30.0,
                        right: 30.0),
                    //margin: EdgeInsets.only( ),

                    child: ElevatedButton(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: isButtonPressed
                                ? Colors.white
                                : Color(0xff4F555A).withOpacity(0.5),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 25
                                : width / 60,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary:
                            isButtonPressed ? buttonColor : Color(0xffF9F9F9),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                      ),
                      onPressed: handleButtonPress,
                      // ()=> setState(() {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> ColorChangingButton()));
                      // //  Navigator.push(context, MaterialPageRoute(builder: (context)=> ScrollableTabBar()));
                      //
                      // }),
                    ),
                  ),

                  Padding(
                      padding:
                          EdgeInsets.only(top: 20, left: 50.0, right: 50.0)),

                  Container(
                    height: 50.0,
                    width: Responsive.isSmallScreen(context)
                        ? width / 0.5
                        : width / 0.5,
                    margin: EdgeInsets.only(
                        left: 30.0,
                        right: 30.0,
                        top: _mediaquery.size.height * 0.19),
                    child: ElevatedButton(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: isButtonPressed2
                                ? Colors.white
                                : Color(0xff4F555A).withOpacity(0.5),
                            fontFamily: 'Poppins',
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 25
                                : width / 60,
                            fontWeight: FontWeight.w900),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary:
                            isButtonPressed2 ? buttonColor2 : Color(0xffF9F9F9),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                      ),
                      onPressed: handleButtonPress2,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
