import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/ABHACode.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';


class AbhaSetup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AbhaSetupState();
  }

}

class AbhaSetupState extends State<AbhaSetup>{

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
     Navigator.push(context,MaterialPageRoute(builder: (context)=>ABHACode(),));
      // Perform navigation after the delay

    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
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

  body: ListView(
    children: [
      Container(
        margin: EdgeInsets.only(top: 20),
        child: Center(
          child:RichText(
  text: TextSpan(
    text: "Setup your ",
    style: TextStyle(
        color: Colors.black,
        fontSize: Responsive.isSmallScreen(context)? width/17: width/30,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
    ),
    children: <TextSpan>[
        TextSpan(
          text: 'Health locker ',
          style: TextStyle(
            color: Color(0xff24B445),
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',

          ),
        ),
    ],
  ),
),
        ),
      ),
      Center(child:
      Container(margin:EdgeInsets.only(left: 20, right:20 ),
          child: Text(textAlign: TextAlign.center,
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
      style: TextStyle(
        color: Color(0xff929292),
        fontSize: Responsive.isSmallScreen(context)? width/32: width/60,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
      ),
      )),),
      Container(
          margin: EdgeInsets.only(top: 25, left: 20, right: 20),child: Column(
        children: [
          Row(
            children: [
              Image(image: AssetImage("image/squre.png"), width:30,),
              Padding(padding: EdgeInsets.only(left: 10)),
              Container(
                  width: Responsive.isSmallScreen(context)? width/1.35 : width/1.8,
                  child: Text(softWrap: true,"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
                  style: TextStyle(
                    color: Color(0xff929292),
                    fontSize: Responsive.isSmallScreen(context)? width/35: width/60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                   ),
                  )),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            children: [
              Image(image: AssetImage("image/squre.png"), width:30,),
              Padding(padding: EdgeInsets.only(left: 10)),
              Container(
                  width: Responsive.isSmallScreen(context)? width/1.35 : width/1.8,
                  child: Text(softWrap: true,"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
                    style: TextStyle(
                      color: Color(0xff929292),
                      fontSize: Responsive.isSmallScreen(context)? width/35: width/60,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            children: [
              Image(image: AssetImage("image/squre.png"), width:30,),
              Padding(padding: EdgeInsets.only(left: 10)),
              Container(
                  width: Responsive.isSmallScreen(context)? width/1.35 : width/1.8,
                  child: Text(softWrap: true,"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
                    style: TextStyle(
                      color: Color(0xff929292),
                      fontSize: Responsive.isSmallScreen(context)? width/35: width/60,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ],
          ),
        ],
      )),

      Padding(padding: EdgeInsets.only(top: 250)),
      Center(
        child: Container(
          height: _mediaquery.size.height*0.070,
          width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
          margin: EdgeInsets.only(top: _mediaquery.size.height*0.02),
          child: ElevatedButton(
            onPressed:handleButtonPress,
            child: Image.asset('image/AerrowRight.png',
                color: isButtonPressed? Colors.black:imageColor,
                height: _mediaquery.size.height*0.04) ,
            style: ElevatedButton.styleFrom(
              backgroundColor:isButtonPressed ? buttonColor : Color(0xffF9F9F9),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)
              ),
            ),
          ),
        ),
      ),
    ],
  ),

);
  }
}