import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/FollowUps.dart';

import '../Onbording/Responsive.dart';
import 'TestFollowUps.dart';

class ReportsDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final image = [
      "image/skinnew.png",
      "image/lungsnew.png",
      "image/kidneynew.png",
      "image/endocrinenew.png",
      "image/neurologynew.png",
      "image/musclenew.png",
      "image/bossnew.png",
      "image/womannew.png"
    ];
    final name = [
      "Dermatology / Skin",
      "Lungs Problem",
      "Genital / Urinal",
      "Endocrine",
      "Neurological",
      "Muscle Problem",
      "For Men",
      "For Women"
    ];
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
           alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // set the border radius
              color: Color(0xffFFFFFF),
            ),
            width: Responsive.isSmallScreen(context)
                ? width / 1.7
                : width / 1.5,
            height: Responsive.isSmallScreen(context)
                ? width / 1.5
                : width / 1.5,
            child:ListView(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 40,
                        top: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 40,
                      ),
                      child: Text(
                        "Examination Test Name",
                        style: TextStyle(
                          color: Color(0xff4F555A).withOpacity(0.4),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 30
                              : width / 42,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 25
                            : width / 40,
                        right: Responsive.isSmallScreen(context)
                            ? width / 25
                            : width / 40,
                        top: Responsive.isSmallScreen(context)
                            ? width / 80
                            : width / 100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)
                                ? width / 2.1
                                : width /1.7,
                            height: Responsive.isSmallScreen(context)
                                ? width / 13
                                : width / 13,
                            child: TextField(
//
                              decoration: InputDecoration(
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                                filled: true,
                                fillColor: Color(0xffF9F9F9),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "e.g Uric acid",
                                hintStyle: TextStyle(
                                  color: Color(0xff4F555A).withOpacity(0.4),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 30
                                      : width / 42,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              style: TextStyle(
                                color: Color(0xff000000).withOpacity(0.4),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 30
                                    : width / 42,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 40,
                        top: Responsive.isSmallScreen(context)
                            ? width / 50
                            : width / 100,
                      ),
                      child: Text(
                        "Value",
                        style: TextStyle(
                          color: Color(0xff4F555A).withOpacity(0.4),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 30
                              : width / 42,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 25
                            : width / 40,
                        right: Responsive.isSmallScreen(context)
                            ? width / 25
                            : width / 40,
                        top: Responsive.isSmallScreen(context)
                            ? width / 80
                            : width / 100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)
                                ? width / 2.1
                                : width / 1.7,
                            height: Responsive.isSmallScreen(context)
                                ? width / 13
                                : width / 13,
                            child: TextField(
//
                              decoration: InputDecoration(
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                                filled: true,
                                fillColor: Color(0xffF9F9F9),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "0000",
                                hintStyle: TextStyle(
                                  color: Color(0xff4F555A).withOpacity(0.4),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 30
                                      : width / 42,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              style: TextStyle(
                                color: Color(0xff000000).withOpacity(0.4),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 30
                                    : width / 42,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 40,
                        top: Responsive.isSmallScreen(context)
                            ? width / 50
                            : width / 100,
                      ),
                      child: Text(
                        "Unit",
                        style: TextStyle(
                          color: Color(0xff4F555A).withOpacity(0.4),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 30
                              : width / 42,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 25
                            : width / 40,
                        right: Responsive.isSmallScreen(context)
                            ? width / 25
                            : width / 100,
                        top: Responsive.isSmallScreen(context)
                            ? width / 80
                            : width / 100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)
                                ? width / 2.1
                                : width / 1.7,
                            height: Responsive.isSmallScreen(context)
                                ? width / 13
                                : width / 13,
                            child: TextField(
//
                              decoration: InputDecoration(
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                                filled: true,
                                fillColor: Color(0xffF9F9F9),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "e.g mg/dl",
                                hintStyle: TextStyle(
                                  color: Color(0xff4F555A).withOpacity(0.4),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 30
                                      : width / 42,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              style: TextStyle(
                                color: Color(0xff000000).withOpacity(0.4),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 30
                                    : width / 42,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 40,
                        right: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 40,
                        top: Responsive.isSmallScreen(context)
                            ? width / 50
                            : width / 100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.only(
                                  left: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 40,
                                  top: Responsive.isSmallScreen(context)
                                      ? width / 60
                                      : width / 80,
                                  bottom: Responsive.isSmallScreen(context)
                                      ? width / 60
                                      : width / 80,
                                  right: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 40),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: Color(0xff24B445), width: 1),
                                color: Color(0xff8ED69E),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Add",
                                        style: TextStyle(
                                            fontSize: Responsive.isSmallScreen(
                                                context)
                                                ? width / 30
                                                : width / 32,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins')),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left:  Responsive.isSmallScreen(
                                        context)
                                        ? width / 70
                                        : width / 90,),
                                    alignment:Alignment.topRight,
                                    child: Image(
                                      image: AssetImage("image/add.png"),
                                      height: Responsive.isSmallScreen(context)
                                          ? width / 30
                                          : width / 50,
                                    ),
                                  )
                                ],
                              )
                          ),
                          Container(
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.only(
                                  left: Responsive.isSmallScreen(context)
                                      ? width / 40
                                      : width / 60,
                                  top: Responsive.isSmallScreen(context)
                                      ? width / 60
                                      : width / 80,
                                  bottom: Responsive.isSmallScreen(context)
                                      ? width / 60
                                      : width / 80,
                                  right: Responsive.isSmallScreen(context)
                                      ? width / 40
                                      : width / 60),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: Color(0xffB42D24), width: 1),
                                color: Color(0x80B42D24),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Cancel",
                                        style: TextStyle(
                                            fontSize: Responsive.isSmallScreen(
                                                context)
                                                ? width / 30
                                                : width / 32,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins')),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left:  Responsive.isSmallScreen(
                                        context)
                                        ? width / 70
                                        : width / 90,),
                                    alignment:Alignment.topRight,
                                    child: Image(
                                      image: AssetImage("image/cancel.png"),
                                      height: Responsive.isSmallScreen(context)
                                          ? width / 30
                                          : width / 50,
                                    ),
                                  )
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ),
    );
  }
}
