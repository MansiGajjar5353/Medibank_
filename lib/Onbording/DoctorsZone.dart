import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Onbording/AccessCode.dart';

import '../Dashbord/DocSummary.dart';
import 'HealthSummary.dart';
import 'Responsive.dart';

class DoctorsZone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DoctorsZoneState();
  }
}

class DoctorsZoneState extends State<DoctorsZone> {
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
                      "Dashboard ",
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
                              "Access Code",
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
                            builder: (context) => AccessCode(),
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
                              " Doctor's\nSummary",
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
                            builder: (context) => DocSummary(),
                          ));
                    },
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
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
                            height: Responsive.isSmallScreen(context) ? 50 : 60,
                            width: Responsive.isSmallScreen(context) ? 50 : 60,
                            child: Image(
                              image: AssetImage("image/health1.png"),
                              height:
                                  Responsive.isSmallScreen(context) ? 20 : 30,
                              width:
                                  Responsive.isSmallScreen(context) ? 30 : 40,
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                        ),
                        Text(
                          "  Health\nSummary",
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
                        builder: (context) => HealthSummary(),
                      ));
                },
              ),
            ],
          )),
        ],
      ),
    );
  }
}
