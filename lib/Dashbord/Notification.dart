import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/AddFamilyMedicalHestoryForm.dart';
import 'package:sizer/sizer.dart';

import '../Onbording/Responsive.dart';

class NotificationList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NotificationListState();
  }
}

class _NotificationListState extends State<NotificationList> {
  final titles = [
    "Jignesh has requested to access your medical history",
    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
    "Jignesh has requested to access your medical history",
    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
  ];
  final date = [
    "Today at 9:42 AM",
    "Today at 9:42 AM",
    "Today at 9:42 AM",
    "Today at 9:42 AM",
    "Today at 9:42 AM"
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Stack(
      children: [
        Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.green),
                title: Text(
                  "Notification",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 18
                        : width / 28,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                actions: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage('image/menu.png'),
                      height: Responsive.isSmallScreen(context)
                          ? width / 10
                          : width / 10,
                    ),
                  )
                ]),
            body: ListView.builder(
                itemCount: titles.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 40,
                      right: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 40,
                      top: Responsive.isSmallScreen(context)
                          ? width / 30
                          : width / 50,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                bottom: Responsive.isSmallScreen(context)
                                    ? width / 10
                                    : width / 10,
                              ),
                              child: Image(
                                image: AssetImage('image/avatarContainer.png'),
                                height: Responsive.isSmallScreen(context)
                                    ? width / 8
                                    : width / 14,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    width: Responsive.isSmallScreen(context)
                                        ? width / 1.4
                                        : width / 1.4,
                                    child: Text(titles[index],
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: Responsive.isSmallScreen(
                                                    context)
                                                ? width / 30
                                                : width / 38,
                                            color: Color(0x80000000),
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'Poppins')),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: Responsive.isSmallScreen(context)
                                              ? width / 40
                                              : width / 50),
                                      width: Responsive.isSmallScreen(context)
                                          ? width / 1.4
                                          : width / 1.4,
                                      child: Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.bottomLeft,
                                            child: Image(
                                              image: AssetImage(
                                                  'image/notificatinyes.png'),
                                              height: Responsive.isSmallScreen(
                                                      context)
                                                  ? width / 15
                                                  : width / 20,
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(
                                              left: Responsive.isSmallScreen(
                                                      context)
                                                  ? width / 40
                                                  : width / 48,
                                            ),
                                            child: Image(
                                              image: AssetImage(
                                                  'image/notificationno.png'),
                                              height: Responsive.isSmallScreen(
                                                      context)
                                                  ? width / 15
                                                  : width / 20,
                                            ),
                                          )
                                        ],
                                      )),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: Responsive.isSmallScreen(context)
                                            ? width / 40
                                            : width / 50),
                                    alignment: Alignment.topLeft,
                                    width: Responsive.isSmallScreen(context)
                                        ? width / 1.4
                                        : width / 1.4,
                                    child: Text(date[index],
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: Responsive.isSmallScreen(
                                                    context)
                                                ? width / 40
                                                : width / 48,
                                            color: Color(0xffA5ACB8),
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins')),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: Responsive.isSmallScreen(context)
                                  ? width / 50
                                  : width / 80,
                              right: Responsive.isSmallScreen(context)
                                  ? width / 50
                                  : width / 80,
                              top: 14),
                          child: Container(
                            height: 1.5,
                            color: Color(0xffE4E8EE),
                          ),
                        ),
                      ],
                    ),
                  );
                })),
      ],
    );
  }
}
