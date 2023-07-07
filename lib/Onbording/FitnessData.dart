import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Onbording/BloodPressure.dart';
import 'package:project_signup_page/Onbording/Oxygen.dart';
import 'Responsive.dart';
import 'Calories.dart';
import 'StepCount.dart';

class FitnessData extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FitnessDataState();
  }

}

class FitnessDataState extends State<FitnessData>{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: Responsive.isSmallScreen(context)? width/5: width/8.2,
          backgroundColor: Colors.white,
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
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(padding: EdgeInsets.only(right: 30),
                  child: Center(
                    child: Image(image: AssetImage("image/MedibankLOGO.png",),
                        width: Responsive.isSmallScreen(context)? width/2.3: width/4),
                  )),

              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Fitness Data ",
                        style: TextStyle(color: Color(0xff000000),
                            fontSize: Responsive.isSmallScreen(context)? width/20: width/30,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'),),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      body:ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: _mediaquery.size.width*0.08),
            child: Text("Let’s check your health !",
              style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                  fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins'),)
          ),

          Container(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child:Container(
                    margin: EdgeInsets.only(top:10),
                    //height:_mediaquery.size.height*0.2,
                    width:_mediaquery.size.width*0.89,
                  decoration: BoxDecoration(
                    color: Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(25),
                  ),
                    child:Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width:Responsive.isSmallScreen(context) ? width/1.7 : width/2,
                             // height: _mediaquery.size.height*0.2,
                              margin: EdgeInsets.only(top:_mediaquery.size.height*0.01,bottom:_mediaquery.size.height*0.02,),


                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top:_mediaquery.size.height*0.01,left:_mediaquery.size.width*0.06,),
                                    child:  Text("Blood Pressure (bpm)",
                                  style: TextStyle(color: Color(0xff24B445),
                                      fontSize: Responsive.isSmallScreen(context)? width/25 : width/60,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins'),),),
                                  Container(
                                    margin: EdgeInsets.only(left:_mediaquery.size.width*0.06),
                                    child:  Text("Last 4 hours",
                                    style: TextStyle(color: Color(0xffA8A8A8),
                                        fontSize: Responsive.isSmallScreen(context) ? width/35 : width/80,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins'),),),

                                  Container(
                                    margin: EdgeInsets.only(top: _mediaquery.size.height *0.02,left:_mediaquery.size.width*0.06),child:  Text("141/90",
                                    style: TextStyle(color: Colors.black,
                                        fontSize: Responsive.isSmallScreen(context) ? width/30 : width/70, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),),

                                  Container(
                                    margin: EdgeInsets.only(left:_mediaquery.size.width*0.06),
                                    child:  Text("7 min ago",
                                    style: TextStyle(color: Color(0xffA8A8A8),
                                        fontSize: Responsive.isSmallScreen(context) ? width/35 : width/80,
                                        fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),),






                                ],),
                            ),
                          ],
                        ),
                        Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                             margin: EdgeInsets.only(left:_mediaquery.size.width*0.002),
                              height: _mediaquery.size.height*0.2,
                              width: _mediaquery.size.width*0.2,
                              decoration:BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('image/Pulse1.png'),
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                          ],

                        ),
                      ],
                    ),
                  ),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BloodPressure(),));},
                ),


              ],




            ),
          ),


          Container(
            child:Column(

              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child:Container(
                    margin: EdgeInsets.only(top:15),
                   // height:_mediaquery.size.height*0.2,
                    width:_mediaquery.size.width*0.89,
                    decoration: BoxDecoration(
                      color: Color(0xffF7F7F7),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child:Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width:Responsive.isSmallScreen(context) ? width/1.7 : width/2,
                             // height: _mediaquery.size.height*0.2,
                              margin: EdgeInsets.only(top:_mediaquery.size.height*0.01,bottom:_mediaquery.size.height*0.02,),

                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    //margin: EdgeInsets.only(top:12,left:22),
                                    margin: EdgeInsets.only(top:_mediaquery.size.height*0.01,left:_mediaquery.size.width*0.06,),
                                    child:  Text("Blood Oxygen (spo2)",
                                      style: TextStyle(color: Color(0xff24B445),
                                          fontSize: Responsive.isSmallScreen(context) ? width/25 : width/60, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),),),
                                  Container(
                                    margin: EdgeInsets.only(left:_mediaquery.size.width*0.06),
                                    child:  Text("Last 4 hours",
                                      style: TextStyle(color: Color(0xffA8A8A8), fontSize: Responsive.isSmallScreen(context) ? width/35 : width/60, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),),

                                  Container(
                                    margin: EdgeInsets.only(top:15,left:_mediaquery.size.width*0.06),child:  Text("90/60",
                                    style: TextStyle(color: Colors.black,
                                        fontSize: Responsive.isSmallScreen(context) ? width/30 : width/60,
                                        fontWeight: FontWeight.w400,

                                        fontFamily: 'Poppins'),),),

                                  Container(
                                    margin: EdgeInsets.only(left:_mediaquery.size.width*0.06),
                                    child:  Text("7 min ago",
                                      style: TextStyle(color: Color(0xffA8A8A8),
                                          fontSize: Responsive.isSmallScreen(context) ? width/35 : width/60, fontWeight: FontWeight.w400,

                                          fontFamily: 'Poppins'),),),






                                ],),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:_mediaquery.size.width*0.002),
                              height: _mediaquery.size.height*0.2,
                              width: _mediaquery.size.width*0.2,
                              decoration:BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('image/Patient1.png'),
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                          ],

                        ),
                      ],
                    ),
                  ),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Oxygen(),));},
                ),


              ],




            ),
          ),



          Container(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child:Container(
                    margin: EdgeInsets.only(top:15),
                 //   height:_mediaquery.size.height*0.2,
                    width:_mediaquery.size.width*0.89,
                    decoration: BoxDecoration(
                      color: Color(0xffF7F7F7),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child:Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width:Responsive.isSmallScreen(context) ? width/1.7 : width/2,
                             // height: _mediaquery.size.height*0.2,
                              margin: EdgeInsets.only(top:_mediaquery.size.height*0.01,bottom:_mediaquery.size.height*0.02,),

                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top:_mediaquery.size.height*0.01,left:_mediaquery.size.width*0.06,),
                                    child:  Text("Steps Count ",
                                      style: TextStyle(color: Color(0xff24B445),
                                          fontSize: Responsive.isSmallScreen(context) ? width/25 : width/60,
                                          fontWeight: FontWeight.w500, fontFamily: 'Poppins'),),),
                                  Container(
                                    margin: EdgeInsets.only(left:_mediaquery.size.width*0.06),
                                    child:  Text("Last 7 days",
                                      style: TextStyle(color: Color(0xffA8A8A8),
                                          fontSize: Responsive.isSmallScreen(context) ? width/35 : width/60,
                                          fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),),

                                  Container(
                                    margin: EdgeInsets.only(top:15,left:_mediaquery.size.width*0.06),
                                    child:  RichText(
                                      text: TextSpan(
                                        text: '3,133 ',
                                        style: TextStyle(color: Colors.black,
                                            fontSize: Responsive.isSmallScreen(context) ? width/30 : width/60,
                                            fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'steps',
                                            style: TextStyle(
                                    fontSize: Responsive.isSmallScreen(context) ? width/35 : width/60,
                                              color: Color(0xffA8A8A8),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',),
                                          ),
                                        ],
                                      ),
                                    ),
                                   // child:  Text("3,133 steps",
                                   // style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left:_mediaquery.size.width*0.06),
                                    child:  Text("Today",
                                      style: TextStyle(color: Color(0xffA8A8A8),
                                          fontSize: Responsive.isSmallScreen(context) ? width/35 : width/60,
                                          fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),),






                                ],),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:_mediaquery.size.width*0.002),
                              height: _mediaquery.size.height*0.2,
                              width: _mediaquery.size.width*0.2,
                              decoration:BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('image/Step1.png'),
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                          ],

                        ),
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StepCount(),));
                  },
                ),


              ],




            ),
          ),




          Container(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child:Container(
                    margin: EdgeInsets.only(top:15),
                  //  height:_mediaquery.size.height*0.2,
                    width:_mediaquery.size.width*0.89,

                    decoration: BoxDecoration(
                      color: Color(0xffF7F7F7),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child:Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width:Responsive.isSmallScreen(context) ? width/1.7 : width/2,
                              //height: _mediaquery.size.height*0.2,
                              margin: EdgeInsets.only(top:_mediaquery.size.height*0.01,bottom:_mediaquery.size.height*0.02,),
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(

                                    margin: EdgeInsets.only(top:_mediaquery.size.height*0.01,left:_mediaquery.size.width*0.06,),
                                    child:  Text("Calories",
                                      style: TextStyle(color: Color(0xff24B445),
                                          fontSize: Responsive.isSmallScreen(context) ? width/25 : width/60,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins'),),),
                                  Container(
                                    margin: EdgeInsets.only(left:_mediaquery.size.width*0.06),
                                    child:  Text("Last 7 days",
                                      style: TextStyle(color: Color(0xffA8A8A8),
                                          fontSize: Responsive.isSmallScreen(context) ? width/35 : width/60,
                                          fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),),

                                  Container(
                                    margin: EdgeInsets.only(top:15,left:_mediaquery.size.width*0.06),
                                    child:  RichText(
                                    text: TextSpan(
                                      text: '480 ',
                                      style: TextStyle(color: Colors.black,
                                          fontSize: Responsive.isSmallScreen(context) ? width/30 : width/60,
                                          fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'cal',
                                          style: TextStyle(
                                            fontSize: Responsive.isSmallScreen(context) ? width/35 : width/60,
                                            color: Color(0xffA8A8A8),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins',),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(left:_mediaquery.size.width*0.06),
                                    child:  Text("Today",
                                      style: TextStyle(color: Color(0xffA8A8A8),
                                          fontSize: Responsive.isSmallScreen(context) ? width/35 : width/60, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),),






                                ],),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:_mediaquery.size.width*0.002),
                              height: _mediaquery.size.height*0.2,
                              width: _mediaquery.size.width*0.2,
                              decoration:BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('image/Calories1.png'),
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                          ],

                        ),
                      ],
                    ),
                  ),
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Calories(),),);

                  },
                ),


              ],




            ),
          ),



        ],
      )

    );
  }

}