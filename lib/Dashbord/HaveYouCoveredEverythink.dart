import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/BloodGroup.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/Questionnaires.dart';
import 'package:project_signup_page/Dashbord/Weigh.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';


class HaveYouCoveredEverythink extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HaveYouCoveredEverythinkState();
  }

}

class HaveYouCoveredEverythinkState extends State<HaveYouCoveredEverythink>{
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
     Navigator.push(context,MaterialPageRoute(builder: (context)=>Questionnaires(),));

    });
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.green),
    title: Center(
      child: Container(padding: EdgeInsets.only(right: 30),
          child: Image(image: AssetImage("image/MedibankLOGO.png",),
              width: Responsive.isSmallScreen(context)? width/2.3: width/4)),
    ),
    //                margin: EdgeInsets.only(left:0,top:10.0 ),
  ),
  body: ListView(
      children: [
  Center(
    child: Container(


      margin: EdgeInsets.only(top: _mediaquery.size.height*0.02, left: 20,right: 20),
      child:RichText(
        text: TextSpan(
          text: 'Have you covered ',
          style: TextStyle(
            color: Color(0xff929292),
            fontSize: Responsive.isSmallScreen(context)?width/18 : width/30,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Everything?',
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
  ),
  Center(
    child: Container(
      margin: EdgeInsets.only(top: 10, left: 30,right: 30),
      child: Text(
        "Please enter any otherb  information about your health that you would like the physician to know or address:",
        softWrap: true,
        style: TextStyle(
          color: Color(0xff929292),
          fontSize: Responsive.isSmallScreen(context)?width/30 : width/60,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
        ),
      ),
    ),
  ),
        Container(

          margin: EdgeInsets.only(left: 20, top: 10),
          width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
         // height: 50,
          child: TextField(
            maxLines: 7,
            //    controller: _problemController,
            decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              filled: true,
              fillColor: Color(0xffF9F9F9),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide.none,),

              hintText: "Any Reason",
              hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 13,fontWeight: FontWeight.w400),

            ),
          ),
        ),


        Padding(padding: EdgeInsets.only(top: 190)),
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


        Padding(padding: EdgeInsets.only(top: 20)),

  ]
  ),
);


  }

}