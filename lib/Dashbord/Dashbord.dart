import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/AbhaCreate.dart';
import 'package:project_signup_page/Dashbord/AddRecords.dart';
import 'package:project_signup_page/Dashbord/Notification.dart';
import 'package:project_signup_page/Dashbord/Weigh.dart';
import 'package:project_signup_page/Onbording/DoctorsZone.dart';
import 'package:project_signup_page/Onbording/FitnessData.dart';
import 'package:project_signup_page/Onbording/LifestyleDashboard.dart';
import 'package:project_signup_page/Onbording/Profile.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';
import 'package:project_signup_page/Onbording/Symptoms.dart';

class TabData {
  String title;
  String description;

  TabData(this.title, this.description);
}

class BottomNavBarApp extends StatefulWidget {
  @override
  _BottomNavBarAppState createState() => _BottomNavBarAppState();
}

class _BottomNavBarAppState extends State<BottomNavBarApp> {
  int _currentIndex = 0;

  // List of screens to be displayed in the bottom navigation bar
  final List<Widget> _screens = [
    // Replace these with your own screens
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      extendBody: true,
      bottomNavigationBar: Container(
        child: FloatingNavbar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            FloatingNavbarItem(
              icon: Icons.home,
              title: 'Home',
            ),
            FloatingNavbarItem(
              icon: Icons.file_copy,
              title: 'Record',
            ),
            FloatingNavbarItem(
              icon: Icons.mic_none,
              title: 'Voice',
            ),
            FloatingNavbarItem(
              icon: Icons.account_balance_wallet_outlined,
              title: 'ABHA',
            ),
          ],
          selectedItemColor: Colors.green,
          selectedBackgroundColor: Colors.black,
          unselectedItemColor: Colors.grey,
          iconSize: 18,
          fontSize: 8,
          margin: EdgeInsets.only(left: 25, right: 25, bottom: 5),
        ),
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Screen1State();
  }
}

class Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Color(0xffADE3BA),
              ),
              height: _mediaquery.size.height * 0.7,
              width: _mediaquery.size.width * 1,
            ),
          ),
          ListView(
            children: [
              Padding(
                  padding:
                      EdgeInsets.only(top: _mediaquery.size.height * 0.02)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 40
                            : width / 30,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Color(0xffCECECE),
                              spreadRadius: 0)
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 20,
                        child: Column(
                          children: [
                            Container(
                              height: Responsive.isSmallScreen(context)
                                  ? width / 10
                                  : width / 10,
                              width: Responsive.isSmallScreen(context)
                                  ? width / 10
                                  : width / 10,
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
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 60,
                        right: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 60),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: RichText(
                            text: TextSpan(
                              text: 'Medi',
                              style: TextStyle(
                                color: Color(0xff24B445),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 18
                                    : width / 40,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'bank',
                                  style: TextStyle(
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 18
                                        : width / 40,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: RichText(
                            text: TextSpan(
                              text: 'Welcome back , ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 18
                                    : width / 40,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Grace',
                                  style: TextStyle(
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 18
                                        : width / 40,
                                    color: Color(0xff24B445),
                                    fontWeight: FontWeight.w600,
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationList()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        right: Responsive.isSmallScreen(context)
                            ? width / 40
                            : width / 30,
                      ),
                      height: Responsive.isSmallScreen(context)
                          ? width / 15
                          : width / 20,
                      width: Responsive.isSmallScreen(context)
                          ? width / 15
                          : width / 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('image/notification.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child:Container(
              //
              //    // margin: EdgeInsets.only(top: _mediaquery.size.height * 0.130),
              //     width:
              //     Responsive.isSmallScreen(context) ? width / 2.5 : width / 2.5,
              //     height:
              //     Responsive.isSmallScreen(context) ? width / 10 : width / 15,
              //
              //     decoration: BoxDecoration(
              //       color: Color(0xffADE3BA),
              //       borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(
              //           Responsive.isSmallScreen(context)
              //               ? width / 25
              //               : width / 33,
              //         ),
              //         topRight: Radius.circular(
              //           Responsive.isSmallScreen(context)
              //               ? width / 25
              //               : width / 33,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Center(
                child: Container(
                    margin: EdgeInsets.only(
                      top: Responsive.isSmallScreen(context)
                          ? width / 10
                          : width / 18,
                    ),
                    width: _mediaquery.size.width * 0.85,
                    decoration: BoxDecoration(
                      color: Color(0xffF7F7F7),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.only(
                                    top: Responsive.isSmallScreen(context)
                                        ? width / 20
                                        : width / 28,
                                  ),
                                  width: _mediaquery.size.width * 0.75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      Responsive.isSmallScreen(context)
                                          ? width / 20
                                          : width / 30,
                                    ),
                                    color: Color(0xff24B445).withOpacity(0.41),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left:
                                                _mediaquery.size.width * 0.05),
                                        decoration: BoxDecoration(
                                          color: Color(0xff0AC963),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        height: _mediaquery.size.height * 0.055,
                                        width: _mediaquery.size.width * 0.1,
                                        child: Center(
                                          child: Image(
                                            image: AssetImage(
                                                "image/DeliveryTime.png"),
                                            height:
                                                _mediaquery.size.height * 0.035,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          left:
                                              Responsive.isSmallScreen(context)
                                                  ? width / 50
                                                  : width / 58,
                                          top: Responsive.isSmallScreen(context)
                                              ? width / 40
                                              : width / 78,
                                          bottom:
                                              Responsive.isSmallScreen(context)
                                                  ? width / 40
                                                  : width / 48,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Recent Activity",
                                              style: TextStyle(
                                                fontSize:
                                                    Responsive.isSmallScreen(
                                                            context)
                                                        ? width / 24
                                                        : width / 34,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                            Container(
                                              width: Responsive.isSmallScreen(
                                                      context)
                                                  ? width / 1.8
                                                  : width / 1.8,
                                              child: RichText(
                                                text: TextSpan(
                                                    text:
                                                        "You’ve uploaded a report pdf to the records",
                                                    style: TextStyle(
                                                      height: 0.95,
                                                      color: Color(0xff000000),
                                                      fontSize: Responsive
                                                              .isSmallScreen(
                                                                  context)
                                                          ? width / 43
                                                          : width / 51,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: 'Poppins',
                                                    )),
                                              ),
                                            ),
                                            InkWell(
                                                onTap: () {},
                                                child: Text("View Records",
                                                    style: TextStyle(
                                                        fontSize: Responsive
                                                                .isSmallScreen(
                                                                    context)
                                                            ? width / 38
                                                            : width / 46,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Poppins',
                                                        color: Color(
                                                            0xff24B445)))),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.only(
                                    top: Responsive.isSmallScreen(context)
                                        ? width / 20
                                        : width / 40,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            right:
                                                _mediaquery.size.width * 0.020),
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          FitnessData()),
                                                );
                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  bottom:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 35
                                                          : width / 43,
                                                ),
                                                width: Responsive.isSmallScreen(
                                                        context)
                                                    ? width / 2.7
                                                    : width / 3.7,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  gradient: RadialGradient(
                                                    center: Alignment.center,
                                                    radius: 0.5,
                                                    colors: [
                                                      Color.fromRGBO(
                                                          249, 249, 249, 0),
                                                      Color.fromRGBO(
                                                          255, 158, 108, 0.17),
                                                    ],
                                                    stops: [0, 1],
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 20
                                                              : width / 28,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            bottom: _mediaquery
                                                                    .size
                                                                    .height *
                                                                0.02),
                                                        child: Center(
                                                            child: Text(
                                                          "Fitness\n  Data",
                                                          style: TextStyle(
                                                              height: 1.2,
                                                              fontSize: Responsive
                                                                      .isSmallScreen(
                                                                          context)
                                                                  ? width / 24
                                                                  : width / 32,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  'Poppins'),
                                                        ))),
                                                    Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          bottom: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 20
                                                              : width / 28,
                                                          top: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 30
                                                              : width / 38,
                                                        ),
                                                        child: Image(
                                                          image: AssetImage(
                                                              "image/Watch1.png"),
                                                          height: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 4
                                                              : width / 8,
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          LifestyleDashboard(),
                                                    ));
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  gradient: RadialGradient(
                                                    center: Alignment(0.0, 0.0),
                                                    focal: Alignment(0.0, 0.0),
                                                    focalRadius: 0,
                                                    radius: 0.5,
                                                    colors: [
                                                      Color.fromRGBO(
                                                          249, 249, 249, 0),
                                                      Color.fromRGBO(
                                                          240, 245, 245, 0.51),
                                                      Color.fromRGBO(
                                                          132, 203, 196, 0.37),
                                                    ],
                                                    stops: [0, 0.01, 1],
                                                  ),
                                                ),
                                                width: Responsive.isSmallScreen(
                                                        context)
                                                    ? width / 2.7
                                                    : width / 3.7,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                        top: Responsive
                                                                .isSmallScreen(
                                                                    context)
                                                            ? width / 15
                                                            : width / 23,
                                                      ),
                                                      child: Center(
                                                          child: Text(
                                                        "Helath",
                                                        style: TextStyle(
                                                            fontSize: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 24
                                                                : width / 32,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontFamily:
                                                                'Poppins'),
                                                      )),
                                                    ),
                                                    Container(
                                                      child: Center(
                                                          child: Text(
                                                        "Score",
                                                        style: TextStyle(
                                                            height: 0.99,
                                                            fontSize: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 24
                                                                : width / 32,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontFamily:
                                                                'Poppins'),
                                                      )),
                                                    ),
                                                    Center(
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          bottom: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 20
                                                              : width / 28,
                                                          top: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 20
                                                              : width / 28,
                                                        ),
                                                        child: Stack(
                                                          children: [
                                                            Center(
                                                                child: Image(
                                                              image: AssetImage(
                                                                  "image/Polygon.png"),
                                                              height: Responsive
                                                                      .isSmallScreen(
                                                                          context)
                                                                  ? width / 7
                                                                  : width / 15,
                                                            )),
                                                            Center(
                                                                child:
                                                                    Container(
                                                              margin: EdgeInsets.only(
                                                                  top: Responsive
                                                                          .isSmallScreen(
                                                                              context)
                                                                      ? width /
                                                                          40
                                                                      : width /
                                                                          48),
                                                              child: Text(
                                                                "80",
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff2A312F),
                                                                    fontSize: Responsive.isSmallScreen(
                                                                            context)
                                                                        ? width /
                                                                            32
                                                                        : width /
                                                                            43,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                            )),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left:
                                                _mediaquery.size.width * 0.020),
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Symptoms(),
                                                    ));
                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  bottom:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 35
                                                          : width / 43,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  gradient: RadialGradient(
                                                    center: Alignment(0.0, 0.0),
                                                    focal: Alignment(0.0, 0.0),
                                                    focalRadius: 0,
                                                    radius: 0.5,
                                                    colors: [
                                                      Color.fromRGBO(
                                                          249, 249, 249, 0),
                                                      Color.fromRGBO(
                                                          250, 180, 0, 0.1),
                                                    ],
                                                    stops: [0, 1],
                                                  ),
                                                ),
                                                width: Responsive.isSmallScreen(
                                                        context)
                                                    ? width / 2.7
                                                    : width / 3.7,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 20
                                                              : width / 28,
                                                        ),
                                                        child: Center(
                                                            child: Text(
                                                          "       Any\n Symptoms !",
                                                          style: TextStyle(
                                                              height: 1.2,
                                                              fontSize: Responsive
                                                                      .isSmallScreen(
                                                                          context)
                                                                  ? width / 24
                                                                  : width / 32,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  'Poppins'),
                                                        ))),
                                                    Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          bottom: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 30
                                                              : width / 38,
                                                          top: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 30
                                                              : width / 38,
                                                        ),
                                                        child: Image(
                                                          image: AssetImage(
                                                              "image/Sym.png"),
                                                          height: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 6
                                                              : width / 10,
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          DoctorsZone(),
                                                    ));
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  gradient: RadialGradient(
                                                    center: Alignment(0.0, 0.0),
                                                    focal: Alignment(0.0, 0.0),
                                                    focalRadius: 0,
                                                    radius: 0.5,
                                                    colors: [
                                                      Color.fromRGBO(
                                                          249, 249, 249, 0),
                                                      Color.fromRGBO(
                                                          199, 236, 255, 0.35),
                                                    ],
                                                    stops: [0, 1],
                                                  ),
                                                ),
                                                width: Responsive.isSmallScreen(
                                                        context)
                                                    ? width / 2.7
                                                    : width / 3.7,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 10
                                                              : width / 18,
                                                        ),
                                                        child: Center(
                                                            child: Text(
                                                          "Doctor's\n  Zone",
                                                          style: TextStyle(
                                                              height: 1.2,
                                                              fontSize: Responsive
                                                                      .isSmallScreen(
                                                                          context)
                                                                  ? width / 24
                                                                  : width / 32,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  'Poppins'),
                                                        ))),
                                                    Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          bottom: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 20
                                                              : width / 28,
                                                          top: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 30
                                                              : width / 38,
                                                        ),
                                                        child: Image(
                                                          image: AssetImage(
                                                              "image/DoctorZone.png"),
                                                          height: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 4
                                                              : width / 8,
                                                        ))
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
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Weigh(),
                                      ));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: _mediaquery.size.height * 0.015,
                                      bottom: _mediaquery.size.height * 0.015),
                                  height: _mediaquery.size.height * 0.09,
                                  width: _mediaquery.size.width * 0.75,
                                  decoration: BoxDecoration(
                                    color: Color(0xffECECEC),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left:
                                                _mediaquery.size.width * 0.03),
                                        height: _mediaquery.size.height * 0.06,
                                        width: _mediaquery.size.width * 0.12,
                                        decoration: BoxDecoration(
                                          color: Color(0xff1A5167),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "0%",
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontFamily: 'Poppins',
                                                fontSize:
                                                    Responsive.isSmallScreen(
                                                            context)
                                                        ? width / 50
                                                        : width / 58),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left:
                                                _mediaquery.size.width * 0.02),
                                        child: Text(
                                          'Complete the remaining questions for\nbetter experience',
                                          style: TextStyle(
                                              fontSize:
                                                  Responsive.isSmallScreen(
                                                          context)
                                                      ? width / 50
                                                      : width / 58,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600),
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
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Screen2State();
  }
}

class Screen2State extends State<Screen2> {
  List<TabData> tabs = [
    TabData('All', 'Description for Tab 1'),
    TabData('Lab report', 'Description for Tab 2'),
    TabData('Prescription', 'Description for Tab 3'),
    TabData('Hospitalization', 'Description for Tab 4'),
    TabData('Report Validation', 'Description for Tab 4'),
    TabData('Treatments', 'Description for Tab 4'),
    TabData('Other', 'Description for Tab 4'),
  ];

  int currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Image(
                    image: AssetImage(
                      "image/MedibankLOGO.png",
                    ),
                    width: Responsive.isSmallScreen(context)
                        ? width / 2.3
                        : width / 4),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Responsive.isSmallScreen(context)
                      ? width / 20
                      : width / 28,
                  top: Responsive.isSmallScreen(context)
                      ? width / 20
                      : width / 28,
                ),
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Medical Records",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 18
                              : width / 28,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xff000000).withOpacity(0.5),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: Responsive.isSmallScreen(context)
                        ? width / 50
                        : width / 58,
                    left: Responsive.isSmallScreen(context)
                        ? width / 50
                        : width / 58),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: tabs.map((tab) {
                        int index = tabs.indexOf(tab);
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                            });
                            _pageController.animateToPage(
                              index,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: Responsive.isSmallScreen(context)
                                    ? width / 50
                                    : width / 58),
                            padding: EdgeInsets.only(
                                right: Responsive.isSmallScreen(context)
                                    ? width / 50
                                    : width / 58),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 1.5,
                                  color: currentIndex == index
                                      ? Colors.green
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            // color: currentIndex == index ? Colors.green : Colors.black,
                            child: Container(
                              child: Text(
                                tab.title,
                                style: TextStyle(
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 30
                                        : width / 38,
                                    color: currentIndex == index
                                        ? Colors.green
                                        : Colors.black),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: tabs.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Positioned(
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                          decoration: BoxDecoration(
                            color: Color(0xffF7F7F7),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: double.infinity,
                          child: ListView.builder(
                            physics: ClampingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(
                                          left:
                                              Responsive.isSmallScreen(context)
                                                  ? width / 50
                                                  : width / 58,
                                          right:
                                              Responsive.isSmallScreen(context)
                                                  ? width / 50
                                                  : width / 58,
                                          top: Responsive.isSmallScreen(context)
                                              ? width / 40
                                              : width / 48),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: Responsive.isSmallScreen(
                                                      context)
                                                  ? width / 50
                                                  : width / 90,
                                              top: Responsive.isSmallScreen(
                                                      context)
                                                  ? width / 30
                                                  : width / 60,
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  //height: Responsive.isSmallScreen(context)? _mediaquery.size.height*0.1 :_mediaquery.size.height*0.10,
                                                  width:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 7
                                                          : width / 9,
                                                  child: Image(
                                                      image: AssetImage(
                                                          'image/Report1.png')),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    top: Responsive
                                                            .isSmallScreen(
                                                                context)
                                                        ? width / 35
                                                        : width / 40,
                                                    bottom: Responsive
                                                            .isSmallScreen(
                                                                context)
                                                        ? width / 60
                                                        : width / 68,
                                                  ),
                                                  height:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 22
                                                          : width / 30,
                                                  width:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 8
                                                          : width / 9,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffDEF4E3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                    "24 Jan",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff24B445),
                                                        fontSize: Responsive
                                                                .isSmallScreen(
                                                                    context)
                                                            ? width / 32
                                                            : width / 42,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: Responsive.isSmallScreen(
                                                        context)
                                                    ? width / 1.5
                                                    : width / 1.3,
                                                margin: EdgeInsets.only(
                                                  top: Responsive.isSmallScreen(
                                                          context)
                                                      ? width / 30
                                                      : width / 38,
                                                  left:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 600
                                                          : width / 40,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        child: Text(
                                                      "Blood Report",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff000000),
                                                          fontSize: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 26
                                                              : width / 34,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                        right: Responsive
                                                                .isSmallScreen(
                                                                    context)
                                                            ? width / 50
                                                            : width / 90,
                                                      ),
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: InkWell(
                                                        onTap: () {},
                                                        child: Container(
                                                          alignment: Alignment
                                                              .topRight,
                                                          height: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 22
                                                              : width / 30,
                                                          width: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 7
                                                              : width / 8,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            border: Border.all(
                                                                color: Color(
                                                                    0xff24B445)),
                                                          ),
                                                          child: Center(
                                                              child: Text(
                                                            "Support",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                color: Color(
                                                                        0xff000000)
                                                                    .withOpacity(
                                                                        0.5),
                                                                fontSize: Responsive
                                                                        .isSmallScreen(
                                                                            context)
                                                                    ? width / 32
                                                                    : width /
                                                                        42,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          )),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                  margin: EdgeInsets.only(
                                                    left: Responsive
                                                            .isSmallScreen(
                                                                context)
                                                        ? width / 600
                                                        : width / 40,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width: Responsive
                                                                .isSmallScreen(
                                                                    context)
                                                            ? width / 5
                                                            : width / 9,
                                                        child: Text(
                                                          "Upload on",
                                                          style: TextStyle(
                                                              color: Color(
                                                                      0xff24B445)
                                                                  .withOpacity(
                                                                      0.5),
                                                              fontSize: Responsive
                                                                      .isSmallScreen(
                                                                          context)
                                                                  ? width / 34
                                                                  : width / 44,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ),
                                                      Text(
                                                        ":",
                                                        style: TextStyle(
                                                            color: Color(
                                                                    0xff24B445)
                                                                .withOpacity(
                                                                    0.5),
                                                            fontSize: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 34
                                                                : width / 44,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      Text(
                                                        "24/01/2023 ,10:54 AM",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff000000),
                                                            fontSize: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 34
                                                                : width / 44,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  )),
                                              Container(
                                                  margin: EdgeInsets.only(
                                                    left: Responsive
                                                            .isSmallScreen(
                                                                context)
                                                        ? width / 600
                                                        : width / 40,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width: Responsive
                                                                .isSmallScreen(
                                                                    context)
                                                            ? width / 5
                                                            : width / 9,
                                                        child: Text(
                                                          "No of Pages",
                                                          style: TextStyle(
                                                              color: Color(
                                                                      0xff24B445)
                                                                  .withOpacity(
                                                                      0.5),
                                                              fontSize: Responsive
                                                                      .isSmallScreen(
                                                                          context)
                                                                  ? width / 34
                                                                  : width / 44,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ),
                                                      Text(
                                                        ":",
                                                        style: TextStyle(
                                                            color: Color(
                                                                    0xff24B445)
                                                                .withOpacity(
                                                                    0.5),
                                                            fontSize: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 34
                                                                : width / 44,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      Text(
                                                        "2",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff000000),
                                                            fontSize: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 34
                                                                : width / 44,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  )),
                                              Container(
                                                  margin: EdgeInsets.only(
                                                    left: Responsive
                                                            .isSmallScreen(
                                                                context)
                                                        ? width / 600
                                                        : width / 40,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width: Responsive
                                                                .isSmallScreen(
                                                                    context)
                                                            ? width / 5
                                                            : width / 9,
                                                        child: Text(
                                                          "Type",
                                                          style: TextStyle(
                                                              color: Color(
                                                                      0xff24B445)
                                                                  .withOpacity(
                                                                      0.5),
                                                              fontSize: Responsive
                                                                      .isSmallScreen(
                                                                          context)
                                                                  ? width / 34
                                                                  : width / 44,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ),
                                                      Text(
                                                        ":",
                                                        style: TextStyle(
                                                            color: Color(
                                                                    0xff24B445)
                                                                .withOpacity(
                                                                    0.5),
                                                            fontSize: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 34
                                                                : width / 44,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      Text(
                                                        "Scanned",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff000000),
                                                            fontSize: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 34
                                                                : width / 44,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  )),
                                              Container(
                                                  margin: EdgeInsets.only(
                                                    left: Responsive
                                                            .isSmallScreen(
                                                                context)
                                                        ? width / 600
                                                        : width / 40,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width: Responsive
                                                                .isSmallScreen(
                                                                    context)
                                                            ? width / 5
                                                            : width / 9,
                                                        child: Text(
                                                          "Verification:",
                                                          style: TextStyle(
                                                              color: Color(
                                                                      0xff24B445)
                                                                  .withOpacity(
                                                                      0.5),
                                                              fontSize: Responsive
                                                                      .isSmallScreen(
                                                                          context)
                                                                  ? width / 34
                                                                  : width / 44,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ),
                                                      Text(
                                                        ":",
                                                        style: TextStyle(
                                                            color: Color(
                                                                    0xff24B445)
                                                                .withOpacity(
                                                                    0.5),
                                                            fontSize: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 34
                                                                : width / 44,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      Text(
                                                        "Verified",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff000000),
                                                            fontSize: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 34
                                                                : width / 44,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  )),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  bottom:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 70
                                                          : width / 100,
                                                  right:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 50
                                                          : width / 100,
                                                  left:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 600
                                                          : width / 40,
                                                ),
                                                width: Responsive.isSmallScreen(
                                                        context)
                                                    ? width / 1.50
                                                    : width / 1.35,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      child: InkWell(
                                                        onTap: () {},
                                                        child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 50
                                                                : width / 90,
                                                          ),
                                                          height: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 22
                                                              : width / 30,
                                                          width: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 7
                                                              : width / 8,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            border: Border.all(
                                                                color: Color(
                                                                    0xff24B445)),
                                                          ),
                                                          child: Center(
                                                              child: Text(
                                                            "Verify",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                color: Color(
                                                                        0xff000000)
                                                                    .withOpacity(
                                                                        0.5),
                                                                fontSize: Responsive
                                                                        .isSmallScreen(
                                                                            context)
                                                                    ? width / 32
                                                                    : width /
                                                                        42,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          )),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: InkWell(
                                                        onTap: () {},
                                                        child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 50
                                                                : width / 90,
                                                            top: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 50
                                                                : width / 90,
                                                          ),
                                                          height: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 22
                                                              : width / 30,
                                                          width: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 7
                                                              : width / 8,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            border: Border.all(
                                                                color: Color(
                                                                    0xff24B445)),
                                                          ),
                                                          child: Center(
                                                              child: Text(
                                                            "View",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                color: Color(
                                                                        0xff000000)
                                                                    .withOpacity(
                                                                        0.5),
                                                                fontSize: Responsive
                                                                        .isSmallScreen(
                                                                            context)
                                                                    ? width / 32
                                                                    : width /
                                                                        42,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          )),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: InkWell(
                                                        onTap: () {},
                                                        child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 50
                                                                : width / 90,
                                                            top: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 50
                                                                : width / 90,
                                                          ),
                                                          height: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 22
                                                              : width / 30,
                                                          width: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 7
                                                              : width / 8,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            border: Border.all(
                                                                color:
                                                                    Colors.red),
                                                          ),
                                                          child: Center(
                                                              child: Text(
                                                            "Hide",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                color: Color(
                                                                        0xff000000)
                                                                    .withOpacity(
                                                                        0.5),
                                                                fontSize: Responsive
                                                                        .isSmallScreen(
                                                                            context)
                                                                    ? width / 32
                                                                    : width /
                                                                        42,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          )),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: InkWell(
                                                        onTap: () {},
                                                        child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 50
                                                                : width / 90,
                                                            top: Responsive
                                                                    .isSmallScreen(
                                                                        context)
                                                                ? width / 50
                                                                : width / 90,
                                                          ),
                                                          height: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 22
                                                              : width / 30,
                                                          width: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 7
                                                              : width / 8,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            border: Border.all(
                                                                color:
                                                                    Colors.red),
                                                          ),
                                                          child: Center(
                                                              child: Text(
                                                            "Delete",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                color: Color(
                                                                        0xff000000)
                                                                    .withOpacity(
                                                                        0.5),
                                                                fontSize: Responsive
                                                                        .isSmallScreen(
                                                                            context)
                                                                    ? width / 32
                                                                    : width /
                                                                        42,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          )),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    } else if (index == 1) {
                      return Container(
                        alignment: Alignment.center,
                        child: Text(
                          'No Records Found',
                          style: TextStyle(fontSize: 15),
                        ),
                      );
                    } else {
                      return Container(
                        alignment: Alignment.center,
                        child: Text(
                          'No Records Found',
                          style: TextStyle(fontSize: 15),
                        ),
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 50),
        child: FloatingActionButton.small(
          backgroundColor: Color(0xff49C165),
          child: Icon(
            Icons.add,
            size: 35,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddRecords(),
                ));
          },
        ),
      ),
    );
  }
}

class Screen3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Screen3State();
  }
}

class Screen3State extends State<Screen3> {
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
                      "Voice Assistant ",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 30,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
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
            margin: EdgeInsets.only(left: 21, right: 21, top: 20),
            child: Center(
                child: Text(
              "Transform your voice into a powerful tool for screen control with the simple tap of the mic, empowering you to operate your devices without lifting a finger.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize:
                    Responsive.isSmallScreen(context) ? width / 35 : width / 60,
              ),
            )),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Image(
                    image: AssetImage('image/A1.png'),
                    height: Responsive.isSmallScreen(context)
                        ? width / 1.9
                        : width / 2.2,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "Tap mic and speack",
                      style: TextStyle(
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 30
                              : width / 60),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "You can use command as follows",
                style: TextStyle(
                  fontSize: Responsive.isSmallScreen(context) ? 12 : 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: _mediaquery.size.height * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image(
                          image: AssetImage("image/Avoice1.png"),
                          width: Responsive.isSmallScreen(context)
                              ? width / 15
                              : width / 20,
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          "Add",
                          style: TextStyle(
                            color: Color(0xff24B445),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 30
                                : width / 60,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                      children: [
                        Image(
                          image: AssetImage(
                            "image/Update1.png",
                          ),
                          width: Responsive.isSmallScreen(context)
                              ? width / 15
                              : width / 20,
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          "Update",
                          style: TextStyle(
                            color: Color(0xff24B445),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 30
                                : width / 60,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: _mediaquery.size.height * 0.05,
                    left: _mediaquery.size.width * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image(
                          image: AssetImage("image/Viewvoice1.png"),
                          width: Responsive.isSmallScreen(context)
                              ? width / 15
                              : width / 20,
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          "View",
                          style: TextStyle(
                            color: Color(0xff24B445),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 30
                                : width / 60,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                      children: [
                        Image(
                          image: AssetImage("image/trash1.png"),
                          width: Responsive.isSmallScreen(context)
                              ? width / 15
                              : width / 20,
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          "Remove",
                          style: TextStyle(
                            color: Color(0xff24B445),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 30
                                : width / 60,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class Screen4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Screen4State();
  }
}

class Screen4State extends State<Screen4> {
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
                        decoration: BoxDecoration(
                          color: Color(0xffF9F9F9),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: _mediaquery.size.height * 0.4,
                        width: _mediaquery.size.width * 0.8,
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    left: 30, right: 30, top: 30),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Login with ABHA  and link with Medibank to access all  medical records",
                                  style: TextStyle(
                                    color: Color(0xff757171),
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 35
                                        : width / 50,
                                  ),
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 25),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AbhaCreate(),
                                      ));
                                },
                                child: Container(
                                  height: 45,
                                  width: _mediaquery.size.width * 0.7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    color: Color(0xff24B445),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Create ABHA",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xffFFFFFF),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  )),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 1,
                                      width: 50,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Already Have ABHA',
                                      style: TextStyle(
                                          fontSize:
                                              Responsive.isSmallScreen(context)
                                                  ? width / 30
                                                  : width / 60,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 1,
                                      width: 50,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 45,
                                  width: _mediaquery.size.width * 0.7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    color: Colors.transparent,
                                    border:
                                        Border.all(color: Color(0xffBEBEBE)),
                                  ),
                                  child: Center(
                                    child: RichText(
                                      text: TextSpan(
                                        text: "Link your ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'ABHA',
                                            style: TextStyle(
                                              color: Color(0xff24B445),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
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
