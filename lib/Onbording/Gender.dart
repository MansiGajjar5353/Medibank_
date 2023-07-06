import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/City.dart';
import 'package:project_signup_page/Onbording/Select_Username.dart';
import '../Dashbord/practice.dart';
import 'Responsive.dart';
class Gender extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GenderState();
  }
}

class GenderState extends State<Gender>{
  bool showSecondContainer = false;
  void toggleVisibility() {
    setState(() {
      showSecondContainer = !showSecondContainer;
    });
  }
  bool showSecondContainer2 = false;
  void toggleVisibility2() {
    setState(() {
      showSecondContainer2 = !showSecondContainer2;
    });
  }

  bool showSecondContainer3 = false;
  void toggleVisibility3() {
    setState(() {
      showSecondContainer3 = !showSecondContainer3;
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
      Navigator.push(context,MaterialPageRoute(builder: (context)=>City(),));
      // Perform navigation after the delay

    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build

    return Scaffold(
      appBar:AppBar(
        toolbarHeight: Responsive.isSmallScreen(context)? width/10: width/10,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        title: Center(
          child: Container(padding: EdgeInsets.only(right: 30),
              child: Image(image: AssetImage("image/MedibankLOGO.png",),
                  width: Responsive.isSmallScreen(context)? width/2.3: width/4)),
        ),
        //  margin: EdgeInsets.only( top:20.0),
      ),
      body:
      Container(
       // height: _mediaquery.size.height*1,
        child: ListView(

            children: [
              Container(
                margin: EdgeInsets.only( top:20.0),
                //        height: _mediaquery.size.height*0.13,
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

                            child: Text("Personal ",style: new TextStyle( color: Colors.black,  fontSize: Responsive.isSmallScreen(context)? width/15 : width/30,
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
    text: "What's your ",
    style: TextStyle(
    color: Colors.black,
      fontSize: Responsive.isSmallScreen(context)? width/16: width/30,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    ),
    children: <TextSpan>[
    TextSpan(
    text: 'Gender',
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

    Container(
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Container(
    child:Text("Amet minim mollit non deserunt ullamco est sit ",
      style: new TextStyle(color:Color(0xff929292),
        fontSize: Responsive.isSmallScreen(context)? width/32:width/60,),
    ),),

    Container( child:Text("aliqua dolor do amet sint.",
      style: new TextStyle(color:Color(0xff929292),
        fontSize: Responsive.isSmallScreen(context)? width/32:width/60,),
    ),
    ),
    ],
    ),
    ),


  Container(
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ButtonGroup(),
//
//         Padding(padding: EdgeInsets.only(top: 20)),
//           Container(
//             child:InkWell
//               (
//               onTap:  toggleVisibility,
//
//
//               child:  Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   shape: BoxShape.circle,
//                   boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 3)],
//                 ),
//                 child: Stack(
//                   children: [
//                     CircleAvatar(
//
//                       backgroundColor: Colors.white,
//                       radius: 40.0,
//                       child:Column(
//
//                         children: [
//                           Transform.translate(offset: Offset(0,10),
//                             child:Container(
//                               height:40.0,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   image: AssetImage('image/Female1.png'),
//                                   fit: BoxFit.scaleDown,
//                                   // child:Text('Female'),
//                                 ), // backgroundImage: AssetImage('image/Other.png',),
//                               ),
//                             ),),
//                           Transform.translate(offset: Offset(0,10),
//                             child:   Container(
//                               height:20,
//                               child:Text(
//                                 "Female",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w400,
//                                   color: Colors.black,
//                                   fontFamily: 'Poppins',
//                                   fontSize: 10,
//                                 ),
//                               ),
//                             ),),
//                         ],
//                       ),
//
//                     ),
//                     Transform.translate(offset: Offset(60,5),
//                       child:Visibility(
//                         visible: showSecondContainer,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                             boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 2)],
//                           ),
//                           child: CircleAvatar(
//                             radius:14,
//                             backgroundColor: Colors.white,
//                             child: Center(
//                               child: Image.asset("image/Checkbox.png", height: 20,),
//                             ),
//                           ),
//                         ),
//                       ),
//
//                     ),
//
//
//                   ],
//                 ),
//
//
//
//               ),
//             ),
//           ),
//
// Padding(padding: EdgeInsets.only(top: 10)),
//           Container(
//             child:InkWell
//               (
//               onTap: toggleVisibility2,
//
//               child:  Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   shape: BoxShape.circle,
//                   boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 3)],
//                 ),
//                 child: Stack(
//                   children: [
//                     CircleAvatar(
//
//                       backgroundColor: Colors.white,
//                       radius: 40.0,
//                       child:Column(
//                         children: [
//                           Transform.translate(offset: Offset(0,10),
//                           child:Container(
//                             height:40.0,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 image: AssetImage('image/Male1.png'),
//                                 fit: BoxFit.scaleDown,
//                                 // child:Text('Others'),
//                               ), // backgroundImage: AssetImage('image/Other.png',),
//                             ),
//                           ),),
//                                 Transform.translate(offset: Offset(0,10),
//                        child:   Container(
//                             height:20,
//                             child:Text(
//                               "Male",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w400,
//                                 color: Colors.black,
//                                 fontFamily: 'Poppins',
//                                 fontSize: 10,
//                               ),
//                             ),
//                           ),),
//                         ],
//                       ),
//
//                       ),
//
//
//                     Transform.translate(offset: Offset(60,5),
//                       child:Visibility(
//                         visible: showSecondContainer2,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                             boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 2)],
//                           ),
//                           child: CircleAvatar(
//                             radius:14,
//                             backgroundColor: Colors.white,
//                             child: Center(
//                               child: Image.asset("image/Checkbox.png", height: 20,),
//                             ),
//                           ),
//                         ),
//                       ),
//
//                     )
//
//
//
//
//
//
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Padding(padding: EdgeInsets.only(top: 10)),
//
//           Container(
//             child:InkWell
//               (
//               onTap: toggleVisibility3,
//
//               child:  Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   shape: BoxShape.circle,
//                   boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 3)],
//                 ),
//                 child: Stack(
//                   children: [
//                     CircleAvatar(
//
//                       backgroundColor: Colors.white,
//                       radius: 40.0,
//                       child:Column(
//                         children: [
//                           Transform.translate(offset: Offset(0,10),
//                             child:Container(
//                               height:40.0,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   image: AssetImage('image/other1.png'),
//                                   fit: BoxFit.scaleDown,
//                                   // child:Text('Others'),
//                                 ), // backgroundImage: AssetImage('image/Other.png',),
//                               ),
//                             ),),
//                           Transform.translate(offset: Offset(0,10),
//                             child:   Container(
//                               height:20,
//                               child:Text(
//                                 "Other",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w400,
//                                   color: Colors.black,
//                                   fontFamily: 'Poppins',
//                                   fontSize: 10,
//                                 ),
//                               ),
//                             ),),
//                         ],
//                       ),
//
//                     ),
//
//                     Transform.translate(offset: Offset(60,5),
//                       child:Visibility(
//                         visible: showSecondContainer3,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                             boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 2)],
//                           ),
//                           child: CircleAvatar(
//                             radius:14,
//                             backgroundColor: Colors.white,
//                             child: Center(
//                               child: Image.asset("image/Checkbox.png", height: 20,),
//                             ),
//                           ),
//                         ),
//                       ),
//
//                     )
//
//
//
//
//
//
//
//
//                   ],
//                 ),
//               ),
//             ),
//           ),

          Padding(padding: EdgeInsets.only(top:0)),
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







            //  Padding(padding: EdgeInsets.only(top:15)),
            //   ElevatedButton.icon(
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Color(0xff24B445),
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(32.0)
            //       ),
            //
            //     ),
            //     onPressed: () {
            //
            //       Navigator.push(context, MaterialPageRoute(builder: (contex)=> City(),));
            //     },
            //
            //     icon: Container(
            //       margin: EdgeInsets.only(left:10),
            //       width: 80,
            //       child: Icon(
            //         Icons.arrow_forward,
            //         size: 30,
            //         color: Colors.black,
            //       ),
            //     ), label: Text(""),
            //   ),

            ],
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


enum ButtonState { Button1, Button2, Button3 }

class ButtonGroup extends StatefulWidget {
  @override
  _ButtonGroupState createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    var _mediaquery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Container(
            child:InkWell
              (
              onTap:() { onButtonPressed(ButtonState.Button1); },


              child:  Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 3)],
                ),
                child: Stack(
                  children: [
                    CircleAvatar(

                      backgroundColor: Colors.white,
                      radius: Responsive.isSmallScreen(context)? width/10: width/20,
                      child:Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                             Container(

                               height:Responsive.isSmallScreen(context)? width/10: width/20,
                               decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('image/Female1.png'),
                                    fit: BoxFit.scaleDown,
                                    // child:Text('Female'),
                                  ), // backgroundImage: AssetImage('image/Other.png',),
                                ),
                              ),
                               Container(

                                child:Text(
                                  "Female",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: Responsive.isSmallScreen(context)? width/35: width/60,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),

                    ),
                   Visibility(
                        visible:  selectedButton== ButtonState.Button1 ? true: false,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 2)],
                          ),
                          child: CircleAvatar(
                            radius:14,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Image.asset("image/Checkbox.png",width: Responsive.isSmallScreen(context)? width/10: width/20,),
                            ),
                          ),
                        ),
                      ),




                  ],
                ),



              ),
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 10)),

          Container(
            child:InkWell
              (
              onTap:() { onButtonPressed(ButtonState.Button2); },


              child:  Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 3)],
                ),
                child: Stack(
                  children: [
                    CircleAvatar(

                      backgroundColor: Colors.white,
                      radius: Responsive.isSmallScreen(context)? width/10: width/20,
                      child:Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Container(

                              height:Responsive.isSmallScreen(context)? width/10: width/20,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('image/Male1.png'),
                                  fit: BoxFit.scaleDown,
                                  // child:Text('Female'),
                                ), // backgroundImage: AssetImage('image/Other.png',),
                              ),
                            ),
                            Container(

                              child:Text(
                                "Male",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: Responsive.isSmallScreen(context)? width/35: width/60,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                    Visibility(
                      visible:  selectedButton== ButtonState.Button2 ? true: false,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 2)],
                        ),
                        child: CircleAvatar(
                          radius:14,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Image.asset("image/Checkbox.png", width: Responsive.isSmallScreen(context)? width/10: width/20,),
                          ),
                        ),
                      ),
                    ),




                  ],
                ),



              ),
            ),
          ),
          // Container(
          //   child:InkWell
          //     (
          //     onTap:() { onButtonPressed(ButtonState.Button2); },
          //
          //     child:  Container(
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         shape: BoxShape.circle,
          //         boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 3)],
          //       ),
          //       child: Stack(
          //         children: [
          //           CircleAvatar(
          //
          //             backgroundColor: Colors.white,
          //             radius: Responsive.isSmallScreen(context)? width/10: width/20,
          //             child:Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Transform.translate(offset: Offset(0,10),
          //                   child:Container(
          //                     height:40.0,
          //                     decoration: BoxDecoration(
          //                       image: DecorationImage(
          //                         image: AssetImage('image/Male1.png'),
          //                         fit: BoxFit.scaleDown,
          //                         // child:Text('Others'),
          //                       ), // backgroundImage: AssetImage('image/Other.png',),
          //                     ),
          //                   ),),
          //                 Transform.translate(offset: Offset(0,10),
          //                   child:   Container(
          //                     height:20,
          //                     child:Text(
          //                       "Male",
          //                       style: TextStyle(
          //                         fontWeight: FontWeight.w400,
          //                         color: Colors.black,
          //                         fontFamily: 'Poppins',
          //                         fontSize:  Responsive.isSmallScreen(context)? width/35: width/60,
          //                       ),
          //                     ),
          //                   ),),
          //               ],
          //             ),
          //
          //           ),
          //
          //
          //           Transform.translate(offset: Offset(60,5),
          //             child:Visibility(
          //              visible: selectedButton== ButtonState.Button2 ? true: false,
          //               child: Container(
          //                 decoration: BoxDecoration(
          //                   color: Colors.white,
          //                   shape: BoxShape.circle,
          //                   boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 2)],
          //                 ),
          //                 child: CircleAvatar(
          //                   radius:14,
          //                   backgroundColor: Colors.white,
          //                   child: Center(
          //                     child: Image.asset("image/Checkbox.png", height: 20,),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //
          //           )
          //
          //
          //
          //
          //
          //
          //         ],
          //       ),
          //     ),
          //   ),
          // ),


          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            child:InkWell
              (
              onTap:() { onButtonPressed(ButtonState.Button3); },


              child:  Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 3)],
                ),
                child: Stack(
                  children: [
                    CircleAvatar(

                      backgroundColor: Colors.white,
                      radius: Responsive.isSmallScreen(context)? width/10: width/20,
                      child:Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Container(

                              height:Responsive.isSmallScreen(context)? width/10: width/20,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('image/other1.png'),
                                  fit: BoxFit.scaleDown,
                                  // child:Text('Female'),
                                ), // backgroundImage: AssetImage('image/Other.png',),
                              ),
                            ),
                            Container(

                              child:Text(
                                "Other",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: Responsive.isSmallScreen(context)? width/35: width/60,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                    Visibility(
                      visible:  selectedButton== ButtonState.Button3 ? true: false,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 2)],
                        ),
                        child: CircleAvatar(
                          radius:14,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Image.asset("image/Checkbox.png", width: Responsive.isSmallScreen(context)? width/10: width/20,),
                          ),
                        ),
                      ),
                    ),




                  ],
                ),



              ),
            ),
          ),
          // Container(
          //   child:InkWell
          //     (
          //     onTap:() { onButtonPressed(ButtonState.Button3); },
          //
          //     child:  Container(
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         shape: BoxShape.circle,
          //         boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 3)],
          //       ),
          //       child: Stack(
          //         children: [
          //           CircleAvatar(
          //
          //             backgroundColor: Colors.white,
          //             radius: Responsive.isSmallScreen(context)? width/10: width/20,
          //             child:Column(
          //               children: [
          //                 Transform.translate(offset: Offset(0,10),
          //                   child:Container(
          //                     height:40.0,
          //                     decoration: BoxDecoration(
          //                       image: DecorationImage(
          //                         image: AssetImage('image/other1.png'),
          //                         fit: BoxFit.scaleDown,
          //                         // child:Text('Others'),
          //                       ), // backgroundImage: AssetImage('image/Other.png',),
          //                     ),
          //                   ),),
          //                 Transform.translate(offset: Offset(0,10),
          //                   child:   Container(
          //                     height:20,
          //                     child:Text(
          //                       "Other",
          //                       style: TextStyle(
          //                         fontWeight: FontWeight.w400,
          //                         color: Colors.black,
          //                         fontFamily: 'Poppins',
          //                         fontSize: 10,
          //                       ),
          //                     ),
          //                   ),),
          //               ],
          //             ),
          //
          //           ),
          //
          //           Transform.translate(offset: Offset(60,5),
          //             child:Visibility(
          //               visible: selectedButton== ButtonState.Button3 ? true: false,
          //               child: Container(
          //                 decoration: BoxDecoration(
          //                   color: Colors.white,
          //                   shape: BoxShape.circle,
          //                   boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 2)],
          //                 ),
          //                 child: CircleAvatar(
          //                   radius:14,
          //                   backgroundColor: Colors.white,
          //                   child: Center(
          //                     child: Image.asset("image/Checkbox.png", height: 20,),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //
          //           )
          //
          //
          //
          //
          //
          //
          //
          //
          //         ],
          //       ),
          //     ),
          //   ),
          // ),

        ],
      ),
    );
  }

  void onButtonPressed(ButtonState buttonState) {
    setState(() {
      selectedButton = buttonState;
    });
  }
}