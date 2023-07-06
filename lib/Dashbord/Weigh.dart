import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_signup_page/Dashbord/Height.dart';

import 'package:project_signup_page/Dashbord/practice.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

import 'Dashbord.dart';



class Weigh extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WeighState();
  }

}

class WeighState extends State<Weigh>{

  Color imageColor = Color(0xff4F555A).withOpacity(0.5);
  Color buttonColor = Colors.black; // Initial color of the button
  bool isButtonPressed = false;
  // bool Showtextfield = false;

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
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Height(),));
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
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        title: Center(
          child: Container(padding: EdgeInsets.only(right: 30),
              child: Image(image: AssetImage("image/MedibankLOGO.png",),
                  width: Responsive.isSmallScreen(context)? width/2.3: width/4)),
        ),
      ),




      body: Container(
        height: _mediaquery.size.height*1,
        child: ListView(
            children: [

              Container(
                //  height: _mediaquery.size.height*0.13,
                margin: EdgeInsets.only(left:0,top:10.0 ),

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

                            child: Text("Personal ",style: new TextStyle( color: Colors.black,
                                fontSize: Responsive.isSmallScreen(context)? width/15 : width/30,
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





              Center(
                child: Container(
                  margin: EdgeInsets.only(left:0,top:50.0 ),
                  //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                  child:RichText(
                    text: TextSpan(
                      text: 'How much do you ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: Responsive.isSmallScreen(context)? width/16: width/30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'weigh ',
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

              WeightPicker(),


              Center(
                child: Container(
                  height: _mediaquery.size.height*0.070,
                  width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
                  margin: EdgeInsets.only(top: _mediaquery.size.height*0.1),
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


            ]
        ),
      ),
    );

  }
}




class WeightPicker extends StatefulWidget {
  @override
  _WeightPickerState createState() => _WeightPickerState();
}

class _WeightPickerState extends State<WeightPicker> {
  int currentWeight = 70;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${currentWeight.toStringAsFixed(0)} kg",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500,
          color: Color(0xff000000)),
        ),
        Container(
          height: 150.0,
          child: RulerPicker(
            beginValue: 20,
            endValue: 200,
            initValue: currentWeight,
            onValueChange: (value) {
              setState(() {
                currentWeight = value;
              });
            },
            scaleLineStyleList: [
              ScaleLineStyle(
                  color: Color(0xff24B445), width: 1.5, height: 40, scale: 0),
              ScaleLineStyle(
                  color: Color(0xff24B445), width: 1, height: 35, scale: 5),
              ScaleLineStyle(
                  color: Color(0xff24B445), width: 1, height: 25, scale: -1)
            ],
            width: MediaQuery.of(context).size.width,
            height: 80,
            rulerMarginTop: 8,
            rulerScaleTextStyle: TextStyle(color: Color(0xff000000)),
            // onSelectedItemChanged: (selectedItem) {
            //   print('Selected weight: $selectedItem');
            // },
          ),
        ),
      ],
    );
  }
}




