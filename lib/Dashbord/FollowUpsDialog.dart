import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/FollowUps.dart';

import '../Onbording/Responsive.dart';
import 'TestFollowUps.dart';


class FollowUpsDialog extends StatelessWidget {
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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FollowUpsForm()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // set the border radius
                    color: Color(0xffFFFFFF),
                  ),
                  margin: EdgeInsets.only(left: 7, right: 7),
                  padding: EdgeInsets.only(left: 7, right: 7),
                  width: Responsive.isSmallScreen(context) ? width / 3 : width / 3,
                  height: Responsive.isSmallScreen(context) ? width / 3 : width / 3,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:  Responsive.isSmallScreen(context) ? width / 20 : width / 20,),
                        child: Image(
                          image: AssetImage('image/followups.png'),
                          height: Responsive.isSmallScreen(context)
                              ? width / 10
                              : width / 10,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text('Follow Ups',
                          style: TextStyle(
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 38,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins')),

                    ],
                  ),
                ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TestFollowUpsForm()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // set the border radius
                  color: Color(0xffFFFFFF),
                ),
                margin: EdgeInsets.only(left: 7, right: 7),
                padding: EdgeInsets.only(left: 7, right: 7),
                width: Responsive.isSmallScreen(context) ? width / 3 : width / 3,
                height: Responsive.isSmallScreen(context) ? width / 3 : width / 3,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:  Responsive.isSmallScreen(context) ? width / 20 : width / 20,),
                      child: Image(
                        image: AssetImage('image/testfollowups.png'),
                        height: Responsive.isSmallScreen(context)
                            ? width / 8
                            : width / 8,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text('Test Follow Ups',
                        style: TextStyle(
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 30
                                : width / 38,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins')),

                  ],
                ),
              ) ,
            )

          ],
        ),
      ),
    );
  }
}
