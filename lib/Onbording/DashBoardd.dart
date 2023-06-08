import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/LifestyleDashboard.dart';
import 'package:project_signup_page/Onbording/voiceAssistant.dart';
import 'Records.dart';
import 'Responsive.dart';
import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/FitnessData.dart';

import 'Dash.dart';
import 'DoctorsZone.dart';
import 'Symptoms.dart';

class DashBoardd extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
 return DashBoarddState();
  }


}

class DashBoarddState extends State<DashBoardd>{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
return Scaffold(
  body: ListView(
    children: [
      Padding(padding: EdgeInsets.only(top: _mediaquery.size.height*0.02)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 0)],
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 25.0,
                child:Column(
                  children: [
                      Container(
                        height:42.0,
                        width: 42.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/Dp.png'),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),

          Container(
            margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(

                  child:RichText(
                    text: TextSpan(
                      text: 'Medi',
                      style: TextStyle(
                        color: Color(0xff24B445),
                        fontSize:Responsive.isSmallScreen(context)? width/18 : width/40,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'bank',
                          style: TextStyle(
                            fontSize:Responsive.isSmallScreen(context)? width/18 : width/40,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child:RichText(
                    text: TextSpan(
                      text: 'Welcome back , ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize:Responsive.isSmallScreen(context)? width/18 : width/40,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Grace',
                          style: TextStyle(
                            fontSize:Responsive.isSmallScreen(context)? width/18 : width/40,
                            color:Color(0xff24B445),
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(


            child: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
              size: 30,
            ),

          ),
        ],
      ),

Stack(
  children: [
       Container(
margin: EdgeInsets.only(top: _mediaquery.size.height*0.130),
      height: _mediaquery.size.height*0.725,
      width: _mediaquery.size.width*1,
      decoration: BoxDecoration(
        color: Color(0xffADE3BA),
        borderRadius: BorderRadius.circular(25),
      ),


    ),

Center(
  child:Container(
    margin: EdgeInsets.only(top: _mediaquery.size.height*0.04),
    height: _mediaquery.size.height*0.720,
    width: _mediaquery.size.width*0.85,
    decoration: BoxDecoration(
      color: Color(0xffF7F7F7),
      borderRadius: BorderRadius.circular(25),
    ),


  ),
),


    Center(
      child: Column(

        children: [
          InkWell(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.only(top: _mediaquery.size.height*0.060),
              height: _mediaquery.size.height*0.09,
              width: _mediaquery.size.width*0.75,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              color: Color(0xff24B445).withOpacity(0.41),
              ),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: _mediaquery.size.width*0.05),
                    decoration: BoxDecoration(
                      color: Color(0xff0AC963),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  height: _mediaquery.size.height*0.055,
                   width: _mediaquery.size.width*0.1,
                    child: Center(
                      child: Image(image: AssetImage("image/DeliveryTime.png"),height: _mediaquery.size.height*0.035,),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: _mediaquery.size.width*0.02),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Recent Activity",
                          style: TextStyle(
                            fontSize: Responsive.isSmallScreen(context) ? width/ 40: width/90 ,
                            fontWeight: FontWeight.w700, fontFamily: 'Poppins', ),),
                        Text("You’ve uploaded a report pdf to the records",
                            style: TextStyle(
                              height:0.95,fontSize: Responsive.isSmallScreen(context) ? width/ 65: width/110,
                              fontWeight: FontWeight.w400, fontFamily: 'Poppins', )),
                        InkWell(
                          onTap: (){},
                            child: Text("View Records",style: TextStyle(
                                fontSize: Responsive.isSmallScreen(context) ? width/ 60: width/100,
                                fontWeight: FontWeight.w500, fontFamily: 'Poppins', color: Color(0xff24B445)))),

                      ],
                    ),
                  )
                ],
              ),

            ),
          ),


        Center(
          child: Container(
            margin: EdgeInsets.only(top: _mediaquery.size.height*0.015),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  margin: EdgeInsets.only(right: _mediaquery.size.width*0.020),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> FitnessData()),);},
                        child: Container(
                          margin: EdgeInsets.only(bottom: _mediaquery.size.width*0.04),

                          height: _mediaquery.size.height*0.25,
                          width:_mediaquery.size.width*0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: RadialGradient(
                              center: Alignment.center,
                              radius: 0.5,
                              colors: [
                                Color.fromRGBO(249, 249, 249, 0),
                                Color.fromRGBO(255, 158, 108, 0.17),
                              ],
                              stops: [0, 1],
                            ),
                          ),

                         child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: _mediaquery.size.height*0.02),
                                  child: Center(child: Text("Fitness\n  Data",
                                    style: TextStyle(height: 1.2,
                                        fontSize: Responsive.isSmallScreen(context)? width/29 : width/50, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),))),
                              Container(

                                  height:_mediaquery.size.height*0.11,
                                  width:_mediaquery.size.width*0.20,
                                  child: Image(image: AssetImage("image/Watch1.png")))
                            ],
                          ),



                        ),
                      ),
                      InkWell(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> LifestyleDashboard(),));},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: RadialGradient(
                              center: Alignment(0.0, 0.0),
                              focal: Alignment(0.0, 0.0),
                              focalRadius: 0,
                              radius: 0.5,
                              colors: [
                                Color.fromRGBO(249, 249, 249, 0),
                                Color.fromRGBO(240, 245, 245, 0.51),
                                Color.fromRGBO(132, 203, 196, 0.37),
                              ],
                              stops: [0, 0.01, 1],
                            ),
                          ),
                          height: _mediaquery.size.height*0.20,
                          width:_mediaquery.size.width*0.35,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Center(child: Text("Helath",
                                  style: TextStyle(fontSize: Responsive.isSmallScreen(context)? width/29 : width/50,
                                      fontWeight: FontWeight.w600, fontFamily: 'Poppins'),)),
                              ),
                              Container(
                                child: Center(child: Text("Score",
                                  style: TextStyle(height:0.99,fontSize: Responsive.isSmallScreen(context)? width/29 : width/50, fontWeight: FontWeight.w600,fontFamily: 'Poppins'),)),
                              ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.only(top: _mediaquery.size.height*0.012),

                                  height:_mediaquery.size.height*0.070,


                                  child:Stack(
                                    children: [
                                      Center(child: Image(image: AssetImage("image/Polygon.png"))),
                                      Center(child: Text("80",
                                        style: TextStyle(color:Color(0xff2A312F),
                                            fontSize: Responsive.isSmallScreen(context)? width/35 : width/90,
                                            fontWeight: FontWeight.w600, fontFamily: 'Poppins'),)),
                                    ],

                                  ),
                                ),
                              ),
                            ],
                          ),



                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: _mediaquery.size.width*0.020),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){   Navigator.push(context, MaterialPageRoute(builder: (context)=> Symptoms(),));},
                        child: Container(
                          margin: EdgeInsets.only(bottom: _mediaquery.size.width*0.04),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: RadialGradient(
                              center: Alignment(0.0, 0.0),
                              focal: Alignment(0.0, 0.0),
                              focalRadius: 0,
                              radius: 0.5,
                              colors: [
                                Color.fromRGBO(249, 249, 249, 0),
                                Color.fromRGBO(250, 180, 0, 0.1),

                              ],
                              stops: [0, 1],
                            ),
                          ),
                          height: _mediaquery.size.height*0.20,
                          width:_mediaquery.size.width*0.35,
                        child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  child: Center(child: Text("       Any\n Symptoms !", style: TextStyle(height: 1.2,fontSize: Responsive.isSmallScreen(context)? width/29 : width/120, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),))),
                              Container(

                                  height: _mediaquery.size.height*0.10,
                                  width:_mediaquery.size.width*0.18,
                                  child: Image(image: AssetImage("image/Sym.png")))
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> DoctorsZone(),));},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: RadialGradient(
                              center: Alignment(0.0, 0.0),
                              focal: Alignment(0.0, 0.0),
                              focalRadius: 0,
                              radius: 0.5,
                              colors: [
                                Color.fromRGBO(249, 249, 249, 0),
                                Color.fromRGBO(199, 236, 255, 0.35
                                ),

                              ],
                              stops: [0, 1],
                            ),
                          ),
                          height: _mediaquery.size.height*0.25,
                          width:_mediaquery.size.width*0.35,

                          child:
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    child: Center(child: Text("Doctor's\n  Zone", style: TextStyle(height: 1.2,fontSize: Responsive.isSmallScreen(context)? width/29 : width/120, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),))),
                                Container(

                                    height:_mediaquery.size.height*0.10,
                                    width:_mediaquery.size.width*0.25,
                                    child: Image(image: AssetImage("image/DoctorZone.png")))
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
        ),



          Container(
            margin: EdgeInsets.only(top: _mediaquery.size.height*0.015),
            height: _mediaquery.size.height*0.09,
            width: _mediaquery.size.width*0.75,

           decoration: BoxDecoration(
             color: Color(0xffECECEC),
             borderRadius: BorderRadius.circular(25),
           ),
child: Row(
  children: [
    Container(
      margin: EdgeInsets.only(left: _mediaquery.size.width*0.03),
      height: _mediaquery.size.height*0.06,
      width: _mediaquery.size.width*0.12,
      decoration: BoxDecoration(
        color: Color(0xff1A5167),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "0%",
          style: TextStyle(color: Color(0xffFFFFFF), fontFamily: 'Poppins', fontSize: Responsive.isSmallScreen(context)? width/50 : width/100),
        ),
      ),
    ),
    Container(
margin: EdgeInsets.only(left: _mediaquery.size.width*0.02),
     child: Text('Complete the remaining questions for\nbetter experience',
       style: TextStyle(fontSize: Responsive.isSmallScreen(context)? width/50 : width/100,
           fontFamily: 'Poppins', fontWeight: FontWeight.w600),),
    ),
  ],
),

          ),


          Container(
            margin: EdgeInsets.only(top: _mediaquery.size.height*0.027),
           // height: Responsive.isMediumScreen(context)?_mediaquery.size.height*0.20 : _mediaquery.size.height*0.08,
            width: _mediaquery.size.width*0.85,

            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.only( top:_mediaquery.size.width*0.02, bottom:_mediaquery.size.width*0.02,),
                child: Column(
                  children: [
                    Image(image: AssetImage("image/Home2.png"),
                      width: Responsive.isSmallScreen(context)? width/18 : width/50,),
                    Text("Home", style: TextStyle(
                        fontFamily: "Poppins",
                     //   height: Responsive.isSmallScreen(context)? 0.82 : 0.82,
                        fontSize:Responsive.isSmallScreen(context)? width/50 : width/100,
                        color: Color(0xff24B445) ),),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Records(),));},
              child: Container(
                margin: EdgeInsets.only(left:_mediaquery.size.width*0.2,
                  right:_mediaquery.size.width*0.2,
                  top:_mediaquery.size.width*0.02,
                  bottom:_mediaquery.size.width*0.02, ),
                child: Image(image: AssetImage('image/Records.png'),
                  width: Responsive.isSmallScreen(context)? width/18 : width/50,),
              ),
            ),
            InkWell(
              onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> voiceAssistant(),));},
              child: Container(
                margin: EdgeInsets.only( top:_mediaquery.size.width*0.02,bottom:_mediaquery.size.width*0.02, ),
                child: Image(image: AssetImage('image/Mic1.png'),   width: Responsive.isSmallScreen(context)? width/18 : width/50,),
              ),
            ),
          ],
          
        ),
          ),
        ],
      ),
    ),

  ],
),
















    ],
  ),
);
  }

}