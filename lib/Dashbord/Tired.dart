import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/Sleep.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';
import 'dart:math';

import 'package:scroll_snap_list/scroll_snap_list.dart';

class Tired extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TiredState();
  }

}

class TiredState extends State<Tired> {
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
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Sleep(),));
      // Perform navigation after the delay

    });
  }


  double spinnerValue = 0.0;
  final TiredValue =[
    'No',
    'Yes',
    'Sometimes',
  ];
  int currentIndex = 0;
  int _focusedIndex = 0;
  Widget _buildItemList(BuildContext context, int index){
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    if(index ==  TiredValue.length)
      return Center(
        child: CircularProgressIndicator(),
      );
    return SizedBox(
      width:120,
      height: 180,

      child:Container(
          width:120,
          child:Column(
            children: [
              Container(
               // margin: EdgeInsets.only(top:80),
                color:Colors.transparent,
                width:100,
               // height:100,
                child:Column(
                  children: [

                    Container(
                       // height: 100,
                        child:Text("${TiredValue[index]}",

                          style: TextStyle(
                            color: (
                                index==_focusedIndex
                                    ? Colors.green
                                    :Color(0xff4F555A).withOpacity(0.5) ),
                            fontFamily: "Poppins",

                           fontSize: Responsive.isSmallScreen(context)? width/26 : width/90,
                          ),


                        ),

                      ),
                      // child:('${imageUrls[index]}', ),


                  ],
                ),

              ),
            ],
          )
      ),
    );
  }
  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
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
      ),

      body: ListView(
        children: [
      Container(
      // height: _mediaquery.size.height*0.13,
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

                  child: Text("Constitutional /",style: new TextStyle( color: Colors.black,  fontSize: Responsive.isSmallScreen(context)? width/18 : width/30,
                      fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                ),

                Container(
                  margin:EdgeInsets.only(left:25),
                  //margin: EdgeInsets.only(left:30,),
                  child:Text("Systematic",style: new TextStyle(height:0.90,color: Colors.green, fontSize: Responsive.isSmallScreen(context)? width/18 : width/30, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
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
                  child: Image.asset('image/systematization.png',height: _mediaquery.size.height*0.060
                  ),
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
                          text: '1/4',
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
    margin: EdgeInsets.only(left:0,top:40.0 ),
    //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
    child:RichText(
    text: TextSpan(
    text: "Medical ",
    style: TextStyle(
    color: Colors.black,
    fontSize: Responsive.isSmallScreen(context)? width/16: width/30,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    ),
    children: <TextSpan>[
    TextSpan(
    text: 'Information',
    style: TextStyle(
    color: Color(0xff24B445),
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',

    ),
    ),
    ],
    ),
    ),
    // child:Text("We need to verify your Number?",style: new TextStyle(height:0.90,color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

    ),
    ),

    Container(
    margin: EdgeInsets.only(left: 20, top: 20, bottom: 10, right: 20),
    child: Center(
      child: Text("Are you frequently tired?",
      style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
      fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
      fontFamily: "Poppins",
      ),),
    ),
    ),

    // GestureDetector(
    // onPanUpdate: (details) {
    // setState(() {
    // double dx = details.delta.dx;
    // double dy = details.delta.dy;
    // double radians = atan2(dy, dx);
    // spinnerValue = (radians + pi) / (2 * pi); // Normalize the value between 0 and 1
    // });
    // },
    // child: Container(
    // width: MediaQuery.of(context).size.width / 2, // Half of the screen width
    // height: MediaQuery.of(context).size.height / 2, // Half of the screen height
    // child: CircularProgressIndicator(value: spinnerValue),
    // ),
    // ),
          Center(
            child: Image(image: AssetImage("image/Polygon2.png"),height: 15,),
          ),

          Padding(padding: EdgeInsets.only(top: 30)),
          Stack(
            children: [
              Container(
                child: Image(image: AssetImage("image/wheel.png")),
              ),
              Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 50)),
                    SizedBox(
                      //width: 280,
                      height: 220,
                      child:Container(
                       // height: 100,
                        // height:_mediaquery.size.height*20,
                        //width: Responsive.isSmallScreen(context)? width/10 : width/90,
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child:
                              ScrollSnapList(
                                itemBuilder: _buildItemList,
                                itemSize: 120,
                                dynamicItemSize: true,

                                onReachEnd: (){
                                  print("done");
                                },
                                itemCount: TiredValue.length,
                                onItemFocus: _onItemFocus,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                  ]
              ),
            ],
          ),

          Padding(padding: EdgeInsets.only(top:10)),
          Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(

                child:Text('2/10 Questions',
                  style: TextStyle(color:Color(0xffB0B2B5),
                      fontSize: Responsive.isSmallScreen(context)? width/25:width/60),),
              ),
              Padding(padding: EdgeInsets.only(top:15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(left:9)),
                  CircleAvatar(
                    backgroundColor: Color(0xffD9D9D9),
                    radius:4,
                  ),
                  Padding(padding: EdgeInsets.only(left:7)),
                  CircleAvatar(
                    backgroundColor: Color(0xff24B445),
                    radius:5,
                  ),
                  Padding(padding: EdgeInsets.only(left:7)),
                  CircleAvatar(
                    backgroundColor: Color(0xffD9D9D9),
                    radius:4,
                  ),
                ],
              ),



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
  ]
    ),

    );
  }



}







