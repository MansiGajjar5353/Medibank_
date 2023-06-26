import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/AddFamilyMedicalHestoryForm.dart';
import 'package:sizer/sizer.dart';

import '../Onbording/Responsive.dart';

class EmergencyHestoryList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EmergencyHestoryList();
  }
}

class _EmergencyHestoryList extends State<EmergencyHestoryList> {
  final titles = [
    "8989898989",
    "8989898989",
    "8989898989",
    "8989898989",
    "8989898989"
  ];
  final title = ["Father", "Mother", "Sister", "Borther", "Uncle"];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;

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
                  "Edit Emergency contact",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 18
                        : width / 18,
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
                ]
            ),
            body: ListView.builder(
                itemCount: title.length,
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
                            : width / 50),
                    padding:
                    EdgeInsets.only(left: 5, right: 5, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF7F7F7),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [

                            Column(
                              children: [

                                Container(
                                  margin: EdgeInsets.only(left: 7),
                                  width: Responsive.isSmallScreen(context)
                                      ? width / 2
                                      : width / 2.2,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text("Member   ",
                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 24
                                                    : width / 32,
                                                color: Color(0x804F555A),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      ),
                                      Container(
                                        child: Text(title[index],
                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 24
                                                    : width / 32,
                                                color: Color(0x804F555A),
                                                fontWeight: FontWeight.w300,
                                                fontFamily: 'Poppins')),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 7, top: 5),
                                  width: Responsive.isSmallScreen(context)
                                      ? width / 2
                                      : width / 2.2,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text("Phone no  ",
                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 24
                                                    : width / 32,
                                                color: Color(0x804F555A),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      ),
                                      Container(
                                        child: Text(titles[index],
                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 24
                                                    : width / 32,
                                                color: Color(0x804F555A),
                                                fontWeight: FontWeight.w300,
                                                fontFamily: 'Poppins')),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  left: Responsive.isSmallScreen(context)
                                      ? width / 15
                                      : width / 20,
                                  right: Responsive.isSmallScreen(context)
                                      ? width / 15
                                      : width / 20,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color(0xff24B445), width: 1),
                                  color: Color(0x8024B445),
                                ),
                                child: Text("Edit",
                                    style: TextStyle(
                                        fontSize:
                                        Responsive.isSmallScreen(context)
                                            ? width / 26
                                            : width / 28,
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins')),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.only(
                                    left: Responsive.isSmallScreen(context)
                                        ? width / 25
                                        : width / 35,
                                    right: Responsive.isSmallScreen(context)
                                        ? width / 25
                                        : width / 35),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color(0xffB42D24), width: 1),
                                  color: Color(0x80B42D24),
                                ),
                                child: Text("Delete",
                                    style: TextStyle(
                                        fontSize:
                                        Responsive.isSmallScreen(context)
                                            ? width / 26
                                            : width / 28,
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins')),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                })),
        Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddFamilyMedicalForm()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(
                    left:
                    Responsive.isSmallScreen(context) ? width / 10 : width / 10,
                    right:
                    Responsive.isSmallScreen(context) ? width / 10 : width / 10,
                    bottom:
                    Responsive.isSmallScreen(context) ? width / 7 : width / 10),
                width:
                Responsive.isSmallScreen(context) ? width / 2.0 : width / 2.0,
                height: Responsive.isSmallScreen(context) ? width / 9 : width /
                    12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Color(0xff24B445),
                ),
                child: Icon(
                  Icons.add,
                  color: Color(0xff000000),
                  size: Responsive.isSmallScreen(context) ? width / 12 : width /
                      15,
                ),
              )),
        ),
      ],
    );
  }
}
