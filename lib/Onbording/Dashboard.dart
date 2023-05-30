

import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/FitnessData.dart';
import 'Responsive.dart';
import 'Dash.dart';
import 'DoctorsZone.dart';
import 'Symptoms.dart';

class Dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
 return DashboardState();
  }


}

class DashboardState extends State<Dashboard>{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
   return Scaffold(
    body:Container(
      height: _mediaquery.size.height*1,
      child: ListView(
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

          Container(
     //height: ,
         //  width: _mediaquery.size.width*1,
           // width: Responsive.isSmallScreen(context) ? width/1 : width/1,
            child: Stack(
              children: [




              Container(
                 alignment: Alignment.bottomCenter,
                    height:600,
      decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/DD1.png'),

                    ),),
                  ),


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
                Padding(padding: EdgeInsets.only(top:5)),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Symptoms(),));
                          },

                        child: Container(
                          margin: EdgeInsets.only(top: 10,left:10),
                        height: 120,

                            child: Stack(
                              children: [
                                Image(image: AssetImage('image/DD7.png')),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(margin: EdgeInsets.only(left: 20),
                                        child: Center(child: Text("       Any\n Symptoms !", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),))),
                                    Container(
                                        margin: EdgeInsets.only(left: 20),
                                        height:70,
                                        width:60,
                                        child: Image(image: AssetImage("image/Sym.png")))
                                  ],
                                ),
                              ],
                            )
                        ),

                      ),
                    ],
                  ),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){},

                        child: Container(
                          margin: EdgeInsets.only(top: 10,left:54),
                          height: 120,

                            child: Stack(
                              children: [
                                Image(image: AssetImage('image/DDD7.png')),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(margin: EdgeInsets.only(left: 30),
                                        child: Center(child: Text("Helath", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),)),
                                    ),
                                    Container(margin: EdgeInsets.only(left: 30),
                                      child: Center(child: Text("Score", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),)),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 29),
                                        height:60,
                                        width:60,

                                    child:Stack(
                                  children: [
                                    Image(image: AssetImage("image/Polygon.png")),
                                    Center(child: Text("80 ",style: TextStyle(color:Color(0xff2A312F),fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),)),
                                  ],

      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                        ),

                      ),
                      Transform.translate(offset: Offset(0,-20),
                      child:InkWell(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> DoctorsZone(),));},

                        child: Container(
                          margin: EdgeInsets.only(top: 0,left:10),
                          height: 150,
                          child: Stack(
                          children: [
      Image(image: AssetImage('image/DDD8.png')),
      Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Container(margin: EdgeInsets.only(left: 20),
      child: Center(child: Text("Doctor's\n  Zone", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),))),
      Container(
      margin: EdgeInsets.only(left: 10),
      height:70,
      width:90,
      child: Image(image: AssetImage("image/DoctorZone.png")))
      ],
      ),
      ],
      ),
                       //   child:  Image(image: AssetImage('image/DDD8.png')),
                        ),

                      ),),
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
                          onTap: (){},

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
    ),
   );
  }
}