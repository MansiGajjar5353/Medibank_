import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/FamilyMedicalHistory.dart';
import 'package:project_signup_page/Dashbord/Questionnaires.dart';
import 'package:project_signup_page/Dashbord/practice.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

import 'Dashbord.dart';
class Exercise extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExerciseState();
  }

}

class ExerciseState extends State<Exercise>{
  double _sliderValue = 0;
  int radioValue = 1;
  bool showTextfield = false;
  void handleRadioValueChanged(int? value){
    setState(() {
      radioValue = value! ;

      switch (radioValue){
        case 0:
          showTextfield = true;
          break;

        case 1:
          showTextfield = false;
          break;

      }

    });
  }



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

Navigator.push(context, MaterialPageRoute(builder: (context)=> FamilyMedicalHistory(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       toolbarHeight: Responsive.isSmallScreen(context)? width/10: width/10,
       backgroundColor: Color(0xffffffff),
       elevation: 0,
       iconTheme: IconThemeData(color: Colors.green, size: Responsive.isSmallScreen(context)? width/20: width/25,),
       leading: Align(
         alignment: Alignment.bottomLeft,
         child: IconButton(
           onPressed: () {
             Navigator.of(context).pop();
           },
           icon: const BackButtonIcon(
           ),
         ),
       ),        title:



     Align(
       alignment: Alignment.center,
       child: Image(image: AssetImage("image/MedibankLOGO.png",),
           width: Responsive.isSmallScreen(context)? width/2.3: width/4),
     ),
       actions: [
         Padding(padding: EdgeInsets.only(bottom: 10),),

         Align(alignment: Alignment.bottomRight,

           child: Container(
             margin: EdgeInsets.only(bottom: Responsive.isSmallScreen(context)? width/80: width/100, right: 10),
             child: InkWell(
               onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Questionnaires(),));},
               child: Image(image: AssetImage("image/DashboardImage.png"),
                 height:  Responsive.isSmallScreen(context)? width/15: width/30,
               ),
             ),
           ),
         ),
       ],

     ),

     body: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,top: 10),
                  child:Text("Exercise", style: TextStyle(
                    color: Colors.black,
                    fontSize: Responsive.isSmallScreen(context)?width/16 : width/30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),

                  ),),

              ],
            ),
            Container(

              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 2)],
                    ),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.transparent,
                      child: Image.asset('image/Exercise.png',height: 50,),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 5, right: 20),
                    child: RichText(textAlign: TextAlign.start,
                      text: TextSpan(
                        text: 'Category 1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: Responsive.isSmallScreen(context)?width/30 : width/60,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '/1',
                            style: TextStyle(
                              color: Color(0xff24B445),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',),
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

        Padding(padding: EdgeInsets.only(top: 20)),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("Exercise",
              style: TextStyle(
              color: Colors.black,
              fontSize: Responsive.isSmallScreen(context)?width/18 : width/35,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ), ),),
            
            Padding(padding: EdgeInsets.only(top: 20)),
            
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
                child: Text("Do youn excercise regularly?",
                style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),fontFamily: "Poppins", fontSize: Responsive.isSmallScreen(context)? width/25 : width/40),)
            ),
          ],
        ),









        Container(margin: EdgeInsets.only( right: 20, top: 20),
            child: CustomSlider()),

















      Container(
        margin: EdgeInsets.only(left: 20,right: 20,top: 30),
        child: Text("Do you have any health issues that prevent you from participating in physical activity?",
          style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400,
          fontSize: Responsive.isSmallScreen(context)? width/30 : width/50),
        ),
      ),



        Container(
          margin: EdgeInsets.only(left: 10),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children:<Widget> [
              new Radio<int>(
                  activeColor: Colors.green,
                  value:0 , groupValue: radioValue,onChanged: handleRadioValueChanged),

              new Text(
                "Yes",
                style: new TextStyle(),


              ),

              new Radio<int>(
                  activeColor: Colors.green,
                  value: 1, groupValue: radioValue, onChanged: handleRadioValueChanged),

              new Text(
                "No",
                style: new TextStyle(),
              ),

            ],
          ),
        ),




Padding(padding: EdgeInsets.only(top: 20)),
        Center(
          child: Visibility(
            visible: showTextfield,
            child: Container(
              margin: EdgeInsets.only(right: 20.0),
              padding: EdgeInsets.only(left:20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35), // set the border radius
                //border: Border.all(),
              ),
              child: TextField(
               // controller: _userController,
                decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  filled: true,
                  fillColor: Color(0xffF9F9F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,),
                  hintText: "Please Explain",
                  hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),
                      fontSize: Responsive.isSmallScreen(context)? width/25 : width/60),

                ),
              ),
            ),
          ),
        ),

        Padding(padding: EdgeInsets.only(top: 30)),
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

        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Skip to ",
                style: TextStyle(
                  color: Color(0xffACADAC),
                  fontSize: Responsive.isSmallScreen(context)?width/30 : width/45,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));},
                child: Text("Dashboard",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: Responsive.isSmallScreen(context)?width/30 : width/45,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),








      ],

     ),
   );
  }


}











class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        // Customize the appearance of the slider
        activeTrackColor: Color(0xff9181F2),
        inactiveTrackColor: Color(0xffF7F7F7),
        thumbColor: Color(0xff9181F2),

        overlayColor: Colors.blue.withOpacity(0.3),
        valueIndicatorColor: Colors.blue,
        trackHeight: 10.0,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20.0),

        overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
        valueIndicatorShape: PaddleSliderValueIndicatorShape(),
        valueIndicatorTextStyle: TextStyle(
          color: Colors.blue,
        ),
      ),
      child: Slider(
        value: _sliderValue,
        min: 0,
        max: 100,
        divisions: 3,
        onChanged: (newValue) {
          setState(() {
            _sliderValue = newValue;
          });
        },
      ),
    );
  }
}