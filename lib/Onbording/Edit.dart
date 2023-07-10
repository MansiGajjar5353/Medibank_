import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

import 'EditSymptoms.dart';

class Edit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EditState();
  }
}

class EditState extends State<Edit> {
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
            margin: EdgeInsets.only(left: 20),
            child: RichText(
              text: TextSpan(
                text: 'Anxiety',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '(3)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff24B445),
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            margin: EdgeInsets.only(left: 20, right: 30),
            height: 490,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xffF9F9F9),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 260,
                  child: Image(image: AssetImage('image/Graph.png')),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 260,
                  child: Image(image: AssetImage('image/Line.png')),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Value ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "5321653",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color(0xff4F555A).withOpacity(0.5)),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Row(
                                children: [
                                  Text(
                                    "Date ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "09/12/2022",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color(0xff4F555A).withOpacity(0.5)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(left: 80)),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => EditSymptoms(),
                                      ));
                                },
                                child:
                                    Image(image: AssetImage("image/Edit.png")),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              InkWell(
                                onTap: () {
                                  print("dlt");
                                },
                                child: Image(
                                    image: AssetImage("image/delete.png")),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description ",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                            Container(
                                child: Text(
                              "Amet minim mollit non deserunt ullamco est sit \naliqua dolor do amet sint. Velit officia\nconsequat duis enim velit mollit. Exercitation\nveniam consequat sunt nostrud amet",
                              style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4F555A).withOpacity(0.5)),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Value ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "5321653",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color(0xff4F555A).withOpacity(0.5)),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Row(
                                children: [
                                  Text(
                                    "Date ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "12/12/2022",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color(0xff4F555A).withOpacity(0.5)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(left: 80)),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  print("hey");
                                },
                                child:
                                    Image(image: AssetImage("image/Edit.png")),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              InkWell(
                                onTap: () {
                                  print("dlt");
                                },
                                child: Image(
                                    image: AssetImage("image/delete.png")),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description ",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                            Container(
                                child: Text(
                              "Amet minim mollit non deserunt ullamco est sit \naliqua dolor do amet sint. Velit officia\nconsequat duis enim velit mollit. Exercitation\nveniam consequat sunt nostrud amet",
                              style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4F555A).withOpacity(0.5)),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Value ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "5321653",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color(0xff4F555A).withOpacity(0.5)),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Row(
                                children: [
                                  Text(
                                    "Date ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "28/12/2022",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color(0xff4F555A).withOpacity(0.5)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(left: 80)),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  print("hey");
                                },
                                child:
                                    Image(image: AssetImage("image/Edit.png")),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              InkWell(
                                onTap: () {
                                  print("dlt");
                                },
                                child: Image(
                                    image: AssetImage("image/delete.png")),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description ",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                            Container(
                                child: Text(
                              "Amet minim mollit non deserunt ullamco est sit \naliqua dolor do amet sint. Velit officia\nconsequat duis enim velit mollit. Exercitation\nveniam consequat sunt nostrud amet",
                              style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4F555A).withOpacity(0.5)),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
