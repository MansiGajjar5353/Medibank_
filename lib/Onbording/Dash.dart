
import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/FitnessData.dart';

import 'DoctorsZone.dart';
import 'Symptoms.dart';

class Dash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DashState();
  }


}

class DashState extends State<Dash>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:ListView(
        children: [
          Padding(padding: EdgeInsets.only(left:10)),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                        Transform.translate(offset: Offset(0,0),
                          child:Container(
                            height:42.0,
                            width: 42.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('image/Dp.png'),
                                fit: BoxFit.fitHeight,

                              ),
                            ),
                          ),),
                      ],
                    ),

                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
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
                              fontSize:20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'bank',
                                style: TextStyle(
                                  fontSize:20,
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
                              fontSize:17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Grace',
                                style: TextStyle(
                                  fontSize:17,
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
                  margin: EdgeInsets.only(left:26),

                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.black,
                    size: 29,
                  ),

                ),
              ],
            ),
          ),

          Container(
            child: Stack(
              children: [
                Transform.translate(offset: Offset(0,60),
                  child:  Container(
                    height:600,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/DD1.png'),

                      ),),
                  ),),

                Container(
                  height:500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/DD2.png'),

                    ),),
                ),

                Container(
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20,left:40),
                          height: 76,
                          // width: 308,
                          child:Stack(
                            children: [

                              Transform.translate(offset: Offset(-20,0),
                                child:  Container(
                                    height:96,
                                    width:308,
                                    child: Image(image: AssetImage('image/DD4.png'))),),
                              Transform.translate(offset: Offset(30,15),
                                child: Container(
                                  height: 46,
                                  width: 37,
                                  child: Image(image: AssetImage('image/DD5.png')
                                  ),
                                ),
                              ),
                              Transform.translate(offset: Offset(35,22),
                                child: Container(
                                  height: 27,
                                  width: 22,
                                  child: Image(image: AssetImage('image/DeliveryTime.png')
                                  ),
                                ),
                              ),

                              Transform.translate(offset: Offset(75,10),
                                child:Text("Recent Activity", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, fontFamily: 'Poppins', ),),),



                              Transform.translate(offset: Offset(75,34),
                                child:Text("You’ve uploaded a loremipsum.pdf to\nthe records", style: TextStyle(height:0.95,fontSize: 8, fontWeight: FontWeight.w400, fontFamily: 'Poppins', )),
                              ),

                              Transform.translate(offset: Offset(75,52),
                                child:InkWell(
                                  onTap: (){},
                                  child: Text("View Rceirds",style: TextStyle(fontSize: 8, fontWeight: FontWeight.w500, fontFamily: 'Poppins', color: Color(0xff24B445))),
                                ),),
                            ],
                          ),

                        ),

                        Container(
                          child: Row(
                            children: [
                              Column(
                                    children: [
                                      InkWell(
                                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> FitnessData()),);},

                                        child: Container(
                                            margin: EdgeInsets.only(top: 10,left:54),
                                            height: 150,
                                            child: Stack(
                                              children: [
                                                Image(image: AssetImage('image/Fitness2.png')),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(margin: EdgeInsets.only(left: 30),
                                                        child: Center(child: Text("Fitness\n  Data", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),))),
                                                    Container(
                                                        margin: EdgeInsets.only(left: 20),
                                                        height:70,
                                                        width:60,
                                                        child: Image(image: AssetImage("image/Watch1.png")))
                                                  ],
                                                ),
                                              ],
                                            )
                                        ),

                                      ),
                                    ],
                              ),
                              Column(

                              ),
                            ],
                          ),
                        ),

















                        Container(
                            height:75,
                            child:InkWell(
                              onTap: (){print("Hey");},

                              child:Stack(
                                children: [
                                  Container(child: Image(image: AssetImage('image/DD9.png'))),
                                  Container(
                                      margin: EdgeInsets.only(top: 12.5,left: 12.5),
                                      height: 50,
                                      child:Stack(
                                        children: [Image(image: AssetImage('image/DD10.png')),

                                          Container(margin: EdgeInsets.only(top: 15,left:10),
                                              child: Text("20%", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 14, fontWeight: FontWeight.w600),)),],
                                      ) ),

                                  Container(
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Transform.translate(offset: Offset(75,15),
                                          child:Text("Dermatology / Skin", style: TextStyle(color: Color(0xff1F1F1F), fontSize:9, fontFamily: 'Poppins', fontWeight: FontWeight.w600),),
                                        ),
                                        Transform.translate(offset: Offset(75,15),
                                          child: Text("2nd Question", style: TextStyle(color: Color(0xffA2A2A2), fontSize:8, fontFamily: 'Poppins', fontWeight: FontWeight.w600),),
                                        ),
                                        Transform.translate(offset: Offset(70,20),
                                          child:Text("Complete all of the Questions to get", style: TextStyle(color: Color(0xff818181), fontSize:4, fontFamily: 'Poppins', fontWeight: FontWeight.w600),),
                                        ),
                                        Transform.translate(offset: Offset(155,10),
                                          child:Text("100 Rs.", style: TextStyle(color: Color(0xff1CB741), fontSize:9, fontFamily: 'Poppins', fontWeight: FontWeight.w600),),
                                        ),

                                      ],
                                    ),

                                  ),
                                  Transform.translate(offset: Offset(175, 0),
                                    child:Container(
                                        height:70,
                                        child: Image(image: AssetImage("image/CaseBack.png"))),
                                  ),
                                ],
                              ),

                            )

                        ),

                        Padding(padding: EdgeInsets.only(top:30)),
                        Container(
                          height:70,
                          width: 290,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,

                          ),
                          child:Row(
                            children: [
                              Container(
                                child: InkWell(
                                  onTap: (){print("Hello");},

                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left:30),
                                          height:23.0,
                                          width: 23.0,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('image/Home2.png'),
                                              fit: BoxFit.fitHeight,

                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left:30),
                                          child: Text("HOME", style: TextStyle(color: Color(0xff24B445),fontSize: 10,fontWeight: FontWeight.w700,fontFamily: 'Poppins'),),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),



                              Container(
                                child: InkWell(
                                  onTap: (){print("Hello");},

                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left:30),
                                          height:23.0,
                                          width: 23.0,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('image/Records.png'),
                                              fit: BoxFit.fitHeight,

                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left:30),
                                          child: Text("Records", style: TextStyle(color: Color(0xffCCCCCC),fontSize: 10,fontWeight: FontWeight.w700,fontFamily: 'Poppins'),),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),



                              Container(
                                child: InkWell(
                                  onTap: (){print("Hello");},

                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left:30),
                                          height:23.0,
                                          width: 23.0,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('image/Mic1.png'),
                                              fit: BoxFit.fitHeight,

                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left:30),
                                          child: Text("MIC", style: TextStyle(color: Color(0xffCCCCCC),fontSize: 10,fontWeight: FontWeight.w700,fontFamily: 'Poppins'),),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),



                              Container(
                                child: InkWell(
                                  onTap: (){print("Hello");},

                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      //crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left:35),
                                          height:16.0,
                                          width: 18.0,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('image/Abha1.png'),
                                              fit: BoxFit.fitHeight,

                                            ),
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 5)),
                                        Container(
                                          margin: EdgeInsets.only(left:35),
                                          child: Text("ABHA", style: TextStyle(color: Color(0xffCCCCCC),fontSize: 10,fontWeight: FontWeight.w700,fontFamily: 'Poppins'),),
                                        ),

                                      ],
                                    ),
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
                // Transform.translate(offset: Offset(20,96),

                //),



              ],
            ),
          ),






        ],
      ),
    );
  }
}