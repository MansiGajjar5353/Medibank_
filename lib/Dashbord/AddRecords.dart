import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/FollowUps.dart';
import 'package:project_signup_page/Dashbord/FollowUpsDialog.dart';
import 'package:project_signup_page/Dashbord/FollowUpsHistory.dart';
import 'package:project_signup_page/Dashbord/TestFollowUps.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

import 'Hospitaization.dart';
import 'Prescription.dart';
import 'Treatments.dart';

class AddRecords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddRecordsState();
  }
}

class AddRecordsState extends State<AddRecords> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:
            Responsive.isSmallScreen(context) ? width / 5 : width / 8.2,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.green,
          size: Responsive.isSmallScreen(context) ? width / 20 : width / 25,
        ),
        leading: Align(
          alignment: Alignment.bottomLeft,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const BackButtonIcon(),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.only(right: 30),
                child: Center(
                  child: Image(
                      image: AssetImage(
                        "image/MedibankLOGO.png",
                      ),
                      width: Responsive.isSmallScreen(context)
                          ? width / 2.3
                          : width / 4),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Add Records ",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 30,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavBarApp(),
                          ));
                    },
                    child: Image(
                      image: AssetImage("image/DashboardImage.png"),
                      height: Responsive.isSmallScreen(context)
                          ? width / 15
                          : width / 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  InkWell(
                    child: Container(
                      height: Responsive.isSmallScreen(context)
                          ? _mediaquery.size.height * 0.18
                          : _mediaquery.size.height * 0.25,
                      width: Responsive.isSmallScreen(context)
                          ? width / 2.5
                          : width / 5,
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height:
                                    Responsive.isSmallScreen(context) ? 50 : 60,
                                width:
                                    Responsive.isSmallScreen(context) ? 50 : 60,
                                child: Image(
                                  image: AssetImage("image/AccessCode1.png"),
                                  height: Responsive.isSmallScreen(context)
                                      ? 20
                                      : 30,
                                  width: Responsive.isSmallScreen(context)
                                      ? 30
                                      : 40,
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                            ),
                            Text(
                              "Lab Report",
                              style: TextStyle(
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 30
                                    : width / 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                              color: Color(0xffFFFFFF),
                              height: 190,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 20)),
                                  Container(
                                    child: Text("Choose an Option"),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 20)),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        child: Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Color(0xffF9F9F9),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          //color: Color(0xffF9F9F9),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                Container(
                                                    height: 50,
                                                    width: 50,
                                                    child: Image(
                                                        image: AssetImage(
                                                            'image/Camera.png'))),
                                                Text("Cam"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        onTap: () {},
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 20)),
                                      InkWell(
                                        child: Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Color(0xffF9F9F9),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          //color: Color(0xffF9F9F9),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                Container(
                                                    height: 50,
                                                    width: 50,
                                                    child: Image(
                                                        image: AssetImage(
                                                            'image/Upload.png'))),
                                                Text("Upload"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        onTap: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ));
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  InkWell(
                    child: Container(
                      height: Responsive.isSmallScreen(context)
                          ? _mediaquery.size.height * 0.18
                          : _mediaquery.size.height * 0.25,
                      width: Responsive.isSmallScreen(context)
                          ? width / 2.5
                          : width / 5,
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height:
                                    Responsive.isSmallScreen(context) ? 50 : 60,
                                width:
                                    Responsive.isSmallScreen(context) ? 50 : 60,
                                child: Image(
                                  image: AssetImage("image/Hospitazation.png"),
                                  height: Responsive.isSmallScreen(context)
                                      ? 20
                                      : 30,
                                  width: Responsive.isSmallScreen(context)
                                      ? 30
                                      : 40,
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                            ),
                            Text(
                              "Hospitaization",
                              style: TextStyle(
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 30
                                    : width / 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Hospilization(),
                          ));
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  InkWell(
                    child: Container(
                      height: Responsive.isSmallScreen(context)
                          ? _mediaquery.size.height * 0.18
                          : _mediaquery.size.height * 0.25,
                      width: Responsive.isSmallScreen(context)
                          ? width / 2.5
                          : width / 5,
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height:
                                    Responsive.isSmallScreen(context) ? 50 : 60,
                                width:
                                    Responsive.isSmallScreen(context) ? 50 : 60,
                                child: Image(
                                  image: AssetImage("image/Doctor1.png"),
                                  height: Responsive.isSmallScreen(context)
                                      ? 20
                                      : 30,
                                  width: Responsive.isSmallScreen(context)
                                      ? 30
                                      : 40,
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                            ),
                            Text(
                              "Analytics",
                              style: TextStyle(
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 30
                                    : width / 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                children: [
                  InkWell(
                    child: Container(
                      height: Responsive.isSmallScreen(context)
                          ? _mediaquery.size.height * 0.18
                          : _mediaquery.size.height * 0.25,
                      width: Responsive.isSmallScreen(context)
                          ? width / 2.5
                          : width / 5,
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height:
                                    Responsive.isSmallScreen(context) ? 50 : 60,
                                width:
                                    Responsive.isSmallScreen(context) ? 50 : 60,
                                child: Image(
                                  image: AssetImage("image/AccessCode1.png"),
                                  height: Responsive.isSmallScreen(context)
                                      ? 20
                                      : 30,
                                  width: Responsive.isSmallScreen(context)
                                      ? 30
                                      : 40,
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                            ),
                            Text(
                              "Prescription",
                              style: TextStyle(
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 30
                                    : width / 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Prescription(),
                          ));
                    },
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  InkWell(
                    child: Container(
                      height: Responsive.isSmallScreen(context)
                          ? _mediaquery.size.height * 0.18
                          : _mediaquery.size.height * 0.25,
                      width: Responsive.isSmallScreen(context)
                          ? width / 2.5
                          : width / 5,
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height:
                                    Responsive.isSmallScreen(context) ? 50 : 60,
                                width:
                                    Responsive.isSmallScreen(context) ? 50 : 60,
                                child: Image(
                                  image: AssetImage("image/Treatments.png"),
                                  height: Responsive.isSmallScreen(context)
                                      ? 20
                                      : 30,
                                  width: Responsive.isSmallScreen(context)
                                      ? 30
                                      : 40,
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                            ),
                            Text(
                              "Treatments",
                              style: TextStyle(
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 30
                                    : width / 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Treatments(),
                          ));
                    },
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  InkWell(
                    child: Container(
                      height: Responsive.isSmallScreen(context)
                          ? _mediaquery.size.height * 0.18
                          : _mediaquery.size.height * 0.25,
                      width: Responsive.isSmallScreen(context)
                          ? width / 2.5
                          : width / 5,
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height:
                                    Responsive.isSmallScreen(context) ? 50 : 60,
                                width:
                                    Responsive.isSmallScreen(context) ? 50 : 60,
                                child: Image(
                                  image: AssetImage("image/Doctor1.png"),
                                  height: Responsive.isSmallScreen(context)
                                      ? 20
                                      : 30,
                                  width: Responsive.isSmallScreen(context)
                                      ? 30
                                      : 40,
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                            ),
                            Text(
                              "Follow ups",
                              style: TextStyle(
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 30
                                    : width / 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FollowUpsHistory(),
                          ));
                    },
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
