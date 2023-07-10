import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/AabhaAdharNumber.dart';
import 'package:project_signup_page/Dashbord/AabhaOtp.dart';
import 'package:project_signup_page/Dashbord/AabhaOtpForAadhar.dart';
import 'package:project_signup_page/Dashbord/AbhaSetup.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class AbhaCreate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AbhaCreateState();
  }
}

class AbhaCreateState extends State<AbhaCreate> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45)),
                  gradient: RadialGradient(
                    center: Alignment(0.0, 0.0),
                    focal: Alignment(0.0, 0.0),
                    focalRadius: 0,
                    radius: 0.5,
                    colors: [
                      Color.fromRGBO(36, 180, 69, 0.37),
                      Color.fromRGBO(36, 180, 69, 0.9),
                    ],
                    stops: [0, 1],
                  ),
                ),
                height: _mediaquery.size.height * 0.5,
                width: _mediaquery.size.width * 1,
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                        margin: EdgeInsets.only(top: 30),
                        width: Responsive.isSmallScreen(context)
                            ? _mediaquery.size.width * 0.43
                            : _mediaquery.size.width * 0.4,
                        child: Image(image: AssetImage("image/ABHAGROUP.png"))),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        "Create ABHA using",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 30
                                : width / 60),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Text(
                        "TheMedibank does not store any data.",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 35
                                : width / 65),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: _mediaquery.size.width * 0.8,
                      child: ButtonGroup2(),
                      // child:Column(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //
                      //     Container(
                      //
                      //       child: InkWell(
                      //         onTap:(){
                      //        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>AbhaCreate(),));
                      //         },
                      //         child:Container(
                      //           height: 80,
                      //           width: _mediaquery.size.width*0.7,
                      //           decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(20),
                      //             color: Color(0xffADE3BA),
                      //           ),
                      //           child: Center(child: Text("Create ABHA", style: TextStyle( fontFamily: 'Poppins',color: Color(0xffFFFFFF), fontSize: 17, fontWeight: FontWeight.w900),)),
                      //
                      //         ),
                      //       ),
                      //     ),
                      //
                      //
                      //
                      //
                      //
                      //     Container(
                      //       margin: EdgeInsets.only(top: 20),
                      //       child: InkWell(
                      //         onTap:(){},
                      //         child:Container(
                      //           height: 80,
                      //           width: _mediaquery.size.width*0.7,
                      //           decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(20),
                      //             color: Color(0xffFFFFFF),
                      //             border: Border.all(color: Color(0xffBEBEBE)),
                      //           ),
                      //           child:Center(
                      //             child:RichText(
                      //               text: TextSpan(
                      //                 text: "Link your ",
                      //                 style: TextStyle(
                      //                   color: Colors.black,
                      //                   fontSize: 17,
                      //                   fontFamily: 'Poppins',
                      //                   fontWeight: FontWeight.w700,
                      //                 ),
                      //                 children: <TextSpan>[
                      //                   TextSpan(
                      //                     text: 'ABHA',
                      //                     style: TextStyle(
                      //                       color: Color(0xff24B445),
                      //                       fontWeight: FontWeight.w700,
                      //                       fontFamily: 'Poppins',
                      //
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //
                      //
                      //
                      //   ],
                      // ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

enum ButtonState2 {
  Button1,
  Button2,
}

class ButtonGroup2 extends StatefulWidget {
  @override
  _ButtonGroupState2 createState() => _ButtonGroupState2();
}

class _ButtonGroupState2 extends State<ButtonGroup2> {
  ButtonState2 selectedButton = ButtonState2.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: InkWell(
              onTap: () {
                onButtonPressed(ButtonState2.Button1);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AabhaOtp(),
                    ));
              },
              child: Stack(
                children: [
                  Container(
                      height: 80,
                      width: _mediaquery.size.width * 0.7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: selectedButton == ButtonState2.Button1
                              ? Color(0xffADE3BA)
                              : Color(0xffFFFFFF),
                          border: Border.all(
                              color: selectedButton == ButtonState2.Button1
                                  ? Colors.transparent
                                  : Color(0xffBEBEBE))),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.all(10),
                              child: Image(
                                image: AssetImage("image/Phone.png"),
                                height: 35,
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  child: Text(
                                "Mobile ",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              )),
                              Container(
                                  width: _mediaquery.size.width * 0.5,
                                  child: Text(
                                    softWrap: true,
                                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
                                    style: TextStyle(
                                        fontSize: 8,
                                        color: Color(0xff7D7D7D),
                                        fontWeight: FontWeight.w400),
                                  )),
                            ],
                          ),
                        ],
                      )),
                  Transform.translate(
                    offset: Offset(220, 2),
                    child: Visibility(
                      visible:
                          selectedButton == ButtonState2.Button1 ? true : false,
                      child: Container(
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
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Image.asset(
                              "image/Checkbox.png",
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: InkWell(
              onTap: () {
                onButtonPressed(ButtonState2.Button2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AabhaAadharNumber(),
                    ));
              },
              child: Stack(
                children: [
                  Container(
                      height: 80,
                      width: _mediaquery.size.width * 0.7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: selectedButton == ButtonState2.Button2
                              ? Color(0xffADE3BA)
                              : Color(0xffFFFFFF),
                          border: Border.all(
                              color: selectedButton == ButtonState2.Button1
                                  ? Colors.transparent
                                  : Color(0xffBEBEBE))),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.all(10),
                              child: Image(
                                image: AssetImage("image/Adhar.png"),
                                height: 35,
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  child: Text(
                                "Aadhar ",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              )),
                              Container(
                                  width: _mediaquery.size.width * 0.5,
                                  child: Text(
                                    softWrap: true,
                                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
                                    style: TextStyle(
                                        fontSize: 8,
                                        color: Color(0xff7D7D7D),
                                        fontWeight: FontWeight.w400),
                                  )),
                            ],
                          ),
                        ],
                      )),
                  Transform.translate(
                    offset: Offset(220, 2),
                    child: Visibility(
                      visible:
                          selectedButton == ButtonState2.Button2 ? true : false,
                      child: Container(
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
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Image.asset(
                              "image/Checkbox.png",
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onButtonPressed(ButtonState2 buttonState) {
    setState(() {
      selectedButton = buttonState;
    });
  }
}
