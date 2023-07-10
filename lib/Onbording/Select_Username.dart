import 'package:flutter/material.dart';

import 'Plans.dart';
import 'Responsive.dart';

class Select_Username extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Select_UsernameState();
  }
}

class Select_UsernameState extends State<Select_Username> {
  String SelectedUserName = "ABC";

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
        buttonColor =
            Colors.green; // Change the color back to the original value
        isButtonPressed = false;
      });
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Plans(),
          ));
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
        toolbarHeight:
            Responsive.isSmallScreen(context) ? width / 10 : width / 10,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.green,
          size: Responsive.isSmallScreen(context) ? width / 20 : width / 25,
        ),
        title: Center(
          child: Container(
              padding: EdgeInsets.only(right: 30),
              child: Image(
                  image: AssetImage(
                    "image/MedibankLOGO.png",
                  ),
                  width: Responsive.isSmallScreen(context)
                      ? width / 2.3
                      : width / 4)),
        ),
      ),
      body: Container(
        height: _mediaquery.size.height * 1,
        child: ListView(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 0, top: 20.0),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child: RichText(
                  text: TextSpan(
                    text: 'Welcome, ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 18
                          : width / 30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Prathvi Bharatwala',
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Amet minim mollit non deserunt ullamco est sit ",
                      style: new TextStyle(
                        color: Color(0xff929292),
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 32
                            : width / 60,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "aliqua dolor do amet sint.",
                      style: new TextStyle(
                        color: Color(0xff929292),
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 32
                            : width / 60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 60),
            ),
            Container(
              margin: EdgeInsets.only(left: 0),
              child: ButtonGroup(),
            ),
            Padding(padding: EdgeInsets.only(top: 0)),
            Container(
              margin: EdgeInsets.only(left: 32),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0,
                            color: Color(0xffCECECE),
                            spreadRadius: 2)
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 11,
                      child: Container(
                        child: Text(
                          "i",
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 80,
                      margin: EdgeInsets.only(top: 30, left: 10, right: 30),
                      child: Text(
                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                        style: TextStyle(
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 45
                              : width / 60,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,

                          // height: 1.50,
                          color: Color(0xffB3B3B3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 165)),
            Container(
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    top: _mediaquery.size.height * 0.05,
                  )),
                  Center(
                    child: Container(
                      height: _mediaquery.size.height * 0.070,
                      width: Responsive.isSmallScreen(context)
                          ? width / 2.5
                          : width / 3.5,
                      margin:
                          EdgeInsets.only(top: _mediaquery.size.height * 0.02),
                      child: ElevatedButton(
                        onPressed: handleButtonPress,
                        child: Image.asset('image/AerrowRight.png',
                            color: isButtonPressed ? Colors.black : imageColor,
                            height: _mediaquery.size.height * 0.04),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              isButtonPressed ? buttonColor : Color(0xffF9F9F9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                        ),
                      ),
                    ),
                  ),
                  // ElevatedButton.icon(
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Color(0xff24B445),
                  //     shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(32.0)
                  //     ),
                  //
                  //   ),
                  //   onPressed: () {
                  //
                  //     Navigator.push(context, MaterialPageRoute(builder: (contex)=> Plans(),));
                  //   },
                  //
                  //   icon: Container(
                  //     margin: EdgeInsets.only(left:10),
                  //     width: 80,
                  //     child: Icon(
                  //       Icons.arrow_forward,
                  //       size: 30,
                  //       color: Colors.black,
                  //     ),
                  //   ), label: Text(""),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum ButtonState { Button1, Button2, Button3, Button4 }

class ButtonGroup extends StatefulWidget {
  @override
  _ButtonGroupState createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  TextEditingController _controller = TextEditingController();

  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(right: 20.0),
            padding: EdgeInsets.only(left: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35), // set the border radius
              //border: Border.all(),
            ),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                filled: true,
                fillColor: Color(0xffF9F9F9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide.none,
                ),
                hintText: "Username@themedibank.in",
                hintStyle: TextStyle(
                  color: Color(0xff4F555A).withOpacity(0.5),
                  fontSize: Responsive.isSmallScreen(context)
                      ? width / 22
                      : width / 60,
                ),
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 30, left: 10)),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Text(
            "Suggestions",
            style: TextStyle(
              color: Color(0xFFB3B3B3),
              fontFamily: 'Poppins',
              fontSize:
                  Responsive.isSmallScreen(context) ? width / 35 : width / 60,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 30, top: 10)),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  onButtonPressed(ButtonState.Button1);
                  _controller.text = "xZxcvv cbv";
                },
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: selectedButton == ButtonState.Button1
                        ? Color(0xff24B445)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: selectedButton == ButtonState.Button1
                          ? Color(0xff24B445)
                          : Color(0xffDDDEE1),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Center(
                    child: Text(
                      'xZxcvv cbv',
                      style: TextStyle(
                        color: selectedButton == ButtonState.Button1
                            ? Color(0xffFFFFFF)
                            : Color(0xff000000).withOpacity(0.5),
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 35
                            : width / 60,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 6)),
              InkWell(
                onTap: () {
                  onButtonPressed(ButtonState.Button2);
                  _controller.text = "sdasfghj";
                },
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: selectedButton == ButtonState.Button2
                        ? Color(0xff24B445)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: selectedButton == ButtonState.Button2
                          ? Color(0xff24B445)
                          : Color(0xffDDDEE1),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Center(
                    child: Text(
                      'sdasfghj',
                      style: TextStyle(
                        color: selectedButton == ButtonState.Button2
                            ? Color(0xffFFFFFF)
                            : Color(0xff000000).withOpacity(0.5),
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 35
                            : width / 60,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 6)),
              InkWell(
                onTap: () {
                  onButtonPressed(ButtonState.Button3);
                  _controller.text = "dsfgdhgjn";
                },
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: selectedButton == ButtonState.Button3
                        ? Color(0xff24B445)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: selectedButton == ButtonState.Button3
                          ? Color(0xff24B445)
                          : Color(0xffDDDEE1),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Center(
                    child: Text(
                      'dsfgdhgjn',
                      style: TextStyle(
                        color: selectedButton == ButtonState.Button3
                            ? Color(0xffFFFFFF)
                            : Color(0xff000000).withOpacity(0.5),
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 35
                            : width / 60,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 6)),
              InkWell(
                onTap: () {
                  onButtonPressed(ButtonState.Button4);
                  _controller.text = 'fghnbjnmbm';
                },
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: selectedButton == ButtonState.Button4
                        ? Color(0xff24B445)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: selectedButton == ButtonState.Button4
                          ? Color(0xff24B445)
                          : Color(0xffDDDEE1),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Center(
                    child: Text(
                      'fghnbjnmbm',
                      style: TextStyle(
                        color: selectedButton == ButtonState.Button4
                            ? Color(0xffFFFFFF)
                            : Color(0xff000000).withOpacity(0.5),
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 35
                            : width / 60,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //
          //     Container(
          //       child:InkWell
          //         (
          //         onTap:() { onButtonPressed(ButtonState.Button1); },
          //
          //
          //         child:  Container(
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             shape: BoxShape.circle,
          //             boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 3)],
          //           ),
          //           child: Stack(
          //             children: [
          //               CircleAvatar(
          //
          //                 backgroundColor: Colors.white,
          //                 radius: 40.0,
          //                 child:Column(
          //
          //                   children: [
          //                     Transform.translate(offset: Offset(0,10),
          //                       child:Container(
          //                         height:40.0,
          //                         decoration: BoxDecoration(
          //                           image: DecorationImage(
          //                             image: AssetImage('image/Female1.png'),
          //                             fit: BoxFit.scaleDown,
          //                             // child:Text('Female'),
          //                           ), // backgroundImage: AssetImage('image/Other.png',),
          //                         ),
          //                       ),),
          //                     Transform.translate(offset: Offset(0,10),
          //                       child:   Container(
          //                         height:20,
          //                         child:Text(
          //                           "Female",
          //                           style: TextStyle(
          //                             fontWeight: FontWeight.w400,
          //                             color: Colors.black,
          //                             fontFamily: 'Poppins',
          //                             fontSize: 10,
          //                           ),
          //                         ),
          //                       ),),
          //                   ],
          //                 ),
          //
          //               ),
          //               Transform.translate(offset: Offset(60,5),
          //                 child:Visibility(
          //                   visible:  selectedButton== ButtonState.Button1 ? true: false,
          //                   child: Container(
          //                     decoration: BoxDecoration(
          //                       color: Colors.white,
          //                       shape: BoxShape.circle,
          //                       boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 2)],
          //                     ),
          //                     child: CircleAvatar(
          //                       radius:14,
          //                       backgroundColor: Colors.white,
          //                       child: Center(
          //                         child: Image.asset("image/Checkbox.png", height: 20,),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //
          //               ),
          //
          //
          //             ],
          //           ),
          //
          //
          //
          //         ),
          //       ),
          //     ),
          //
          //     Padding(padding: EdgeInsets.only(top: 10)),
          //
          //
          //     Container(
          //       child:InkWell
          //         (
          //         onTap:() { onButtonPressed(ButtonState.Button2); },
          //
          //         child:  Container(
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             shape: BoxShape.circle,
          //             boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 3)],
          //           ),
          //           child: Stack(
          //             children: [
          //               CircleAvatar(
          //
          //                 backgroundColor: Colors.white,
          //                 radius: 40.0,
          //                 child:Column(
          //                   children: [
          //                     Transform.translate(offset: Offset(0,10),
          //                       child:Container(
          //                         height:40.0,
          //                         decoration: BoxDecoration(
          //                           image: DecorationImage(
          //                             image: AssetImage('image/Male1.png'),
          //                             fit: BoxFit.scaleDown,
          //                             // child:Text('Others'),
          //                           ), // backgroundImage: AssetImage('image/Other.png',),
          //                         ),
          //                       ),),
          //                     Transform.translate(offset: Offset(0,10),
          //                       child:   Container(
          //                         height:20,
          //                         child:Text(
          //                           "Male",
          //                           style: TextStyle(
          //                             fontWeight: FontWeight.w400,
          //                             color: Colors.black,
          //                             fontFamily: 'Poppins',
          //                             fontSize: 10,
          //                           ),
          //                         ),
          //                       ),),
          //                   ],
          //                 ),
          //
          //               ),
          //
          //
          //               Transform.translate(offset: Offset(60,5),
          //                 child:Visibility(
          //                   visible: selectedButton== ButtonState.Button2 ? true: false,
          //                   child: Container(
          //                     decoration: BoxDecoration(
          //                       color: Colors.white,
          //                       shape: BoxShape.circle,
          //                       boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 2)],
          //                     ),
          //                     child: CircleAvatar(
          //                       radius:14,
          //                       backgroundColor: Colors.white,
          //                       child: Center(
          //                         child: Image.asset("image/Checkbox.png", height: 20,),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //
          //               )
          //
          //
          //
          //
          //
          //
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //
          //
          //     Padding(padding: EdgeInsets.only(top: 10)),
          //
          //     Container(
          //       child:InkWell
          //         (
          //         onTap:() { onButtonPressed(ButtonState.Button3); },
          //
          //         child:  Container(
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             shape: BoxShape.circle,
          //             boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 3)],
          //           ),
          //           child: Stack(
          //             children: [
          //               CircleAvatar(
          //
          //                 backgroundColor: Colors.white,
          //                 radius: 40.0,
          //                 child:Column(
          //                   children: [
          //                     Transform.translate(offset: Offset(0,10),
          //                       child:Container(
          //                         height:40.0,
          //                         decoration: BoxDecoration(
          //                           image: DecorationImage(
          //                             image: AssetImage('image/other1.png'),
          //                             fit: BoxFit.scaleDown,
          //                             // child:Text('Others'),
          //                           ), // backgroundImage: AssetImage('image/Other.png',),
          //                         ),
          //                       ),),
          //                     Transform.translate(offset: Offset(0,10),
          //                       child:   Container(
          //                         height:20,
          //                         child:Text(
          //                           "Other",
          //                           style: TextStyle(
          //                             fontWeight: FontWeight.w400,
          //                             color: Colors.black,
          //                             fontFamily: 'Poppins',
          //                             fontSize: 10,
          //                           ),
          //                         ),
          //                       ),),
          //                   ],
          //                 ),
          //
          //               ),
          //
          //               Transform.translate(offset: Offset(60,5),
          //                 child:Visibility(
          //                   visible: selectedButton== ButtonState.Button3 ? true: false,
          //                   child: Container(
          //                     decoration: BoxDecoration(
          //                       color: Colors.white,
          //                       shape: BoxShape.circle,
          //                       boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 2)],
          //                     ),
          //                     child: CircleAvatar(
          //                       radius:14,
          //                       backgroundColor: Colors.white,
          //                       child: Center(
          //                         child: Image.asset("image/Checkbox.png", height: 20,),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //
          //               )
          //
          //
          //
          //
          //
          //
          //
          //
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //
          //   ],
          // ),
        ),
      ],
    );
  }

  void onButtonPressed(ButtonState buttonState) {
    setState(() {
      selectedButton = buttonState;
    });
  }
}
