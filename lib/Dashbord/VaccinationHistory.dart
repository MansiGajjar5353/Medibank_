import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Onbording/AddFamilyMedicalHestoryForm.dart';
import 'package:project_signup_page/Onbording/VaccinationForm.dart';
import 'package:sizer/sizer.dart';

import '../Onbording/Responsive.dart';

class VaccinationHistory extends StatefulWidget {
  bool isExpanded = false;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _VaccinationHistoryState();
  }
}

class _VaccinationHistoryState extends State<VaccinationHistory> {
  final Name = [
    "BCG",
    "BCG",
    "BCG",
    "BCG",
    "BCG",
    "BCG",
    "BCG",
    "BCG",
    "BCG",
  ];
  final titles = [
    "Questions about",
    "Questions about",
    "Questions about",
    "Questions about"
        "Questions about",
    "Questions about"
        "Questions about",
    "Questions about"
        "Questions about"

  ];
  final title = [
    "Getting Started",
    "The Medibank",
    "The Medibank",
    "The Medibank",
    "The Medibank"
        "The Medibank",
    "The Medibank"
        "The Medibank",
    "The Medibank"

  ];
  final question = [
    "27/03/99",
    "25/06/99",
    "29/07/99",
    "20/05/99",
    "27/08/99",
    "19/06/99",
    "19/06/99",
    "19/06/99",
    "19/06/99",

  ];

  @override
  Widget build(BuildContext context) {
    String? gender;
    double width = MediaQuery.of(context).size.width;
    final mqHeight = MediaQuery.of(context).size.height;
    var _mediaquery = MediaQuery.of(context);

    // TODO: implement build
    return Stack(
      children: [
        Scaffold(
            appBar: AppBar(
              toolbarHeight: Responsive.isSmallScreen(context)? width/5: width/8.2,
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.green, size: Responsive.isSmallScreen(context)? width/20: width/25,),
              leading: Align(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const BackButtonIcon(
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(padding: EdgeInsets.only(right: 30),
                      child: Center(
                        child: Image(image: AssetImage("image/MedibankLOGO.png",),
                            width: Responsive.isSmallScreen(context)? width/2.3: width/4),
                      )),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text("Dashboard ",
                            style: TextStyle(color: Color(0xff000000),
                                fontSize: Responsive.isSmallScreen(context)? width/20: width/30,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins'),),
                        ),
                        InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));},
                          child: Image(image: AssetImage("image/DashboardImage.png"),
                            height:  Responsive.isSmallScreen(context)? width/15: width/30,
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
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 20,top: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 20),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage('image/notgiven.png'),
                                    height: Responsive.isSmallScreen(context)
                                        ? width / 25
                                        : width / 25,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: Responsive.isSmallScreen(context)
                                            ? width / 50
                                            : width / 50),
                                    child: Text(
                                      "Not given",
                                      style: TextStyle(
                                        color: Color(0xff804F555A),
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 24
                                                : width / 24,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(
                                top: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 20),
                              alignment: Alignment.centerRight,
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage('image/due.png'),
                                    height: Responsive.isSmallScreen(context)
                                        ? width / 25
                                        : width / 25,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: Responsive.isSmallScreen(context)
                                            ? width / 50
                                            : width / 50),
                                    child: Text(
                                      "Due & not given",
                                      style: TextStyle(
                                        color: Color(0xff804F555A),
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 24
                                                : width / 24,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 20,top: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 30),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage('image/given.png'),
                                    height: Responsive.isSmallScreen(context)
                                        ? width / 25
                                        : width / 25,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: Responsive.isSmallScreen(context)
                                            ? width / 50
                                            : width / 50),
                                    child: Text(
                                      "Given",
                                      style: TextStyle(
                                        color: Color(0xff804F555A),
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 24
                                                : width / 24,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(
                                  top: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 30),
                              alignment: Alignment.centerRight,
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage('image/boosterdose.png'),
                                    height: Responsive.isSmallScreen(context)
                                        ? width / 25
                                        : width / 25,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: Responsive.isSmallScreen(context)
                                            ? width / 50
                                            : width / 50),
                                    child: Text(
                                      "Booster dose",
                                      style: TextStyle(
                                        color: Color(0xff804F555A),
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 24
                                                : width / 24,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        )
                      ],
                    ),
                  ],
                ),
                Positioned(
                  child: Container(
                    width: double.infinity,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: Name.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            height: Responsive.isSmallScreen(context)
                                ? width / 4
                                : width / 4,
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF9F9F9),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: EdgeInsets.only(
                                    left: Responsive.isSmallScreen(context)
                                        ? width / 40
                                        : width / 40,
                                    right: Responsive.isSmallScreen(context)
                                        ? width / 40
                                        : width / 40,
                                    top: Responsive.isSmallScreen(context)
                                        ? width / 50
                                        : width / 50),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: Responsive.isSmallScreen(context)
                                              ? width / 30
                                              : width / 30,
                                          right: Responsive.isSmallScreen(context)
                                              ? width / 30
                                              : width / 30,
                                          top: Responsive.isSmallScreen(context)
                                              ? width / 30
                                              : width / 30),
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              Name[index],
                                              style: TextStyle(
                                                color: Color(0xff4F555A),
                                                fontSize:
                                                    Responsive.isSmallScreen(
                                                            context)
                                                        ? width / 24
                                                        : width / 32,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              Name[index],
                                              style: TextStyle(
                                                color: Color(0xff804F555A),
                                                fontSize:
                                                    Responsive.isSmallScreen(
                                                            context)
                                                        ? width / 30
                                                        : width / 38,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Expanded(
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: titles.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Container(
                                              margin: EdgeInsets.only(
                                                  left:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 25
                                                          : width / 25,
                                                  top: Responsive.isSmallScreen(
                                                          context)
                                                      ? width / 30
                                                      : width / 30,
                                                  bottom:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 30
                                                          : width / 30,
                                                  right:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 25
                                                          : width / 25),
                                              width: Responsive.isSmallScreen(
                                                      context)
                                                  ? width / 6
                                                  : width / 6,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffF7F7F7),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Colors.red)),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            VaccinationForm()),
                                                  ); // Your logic here when the container is tapped
                                                },
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                        top: Responsive
                                                                .isSmallScreen(
                                                                    context)
                                                            ? width / 90
                                                            : width / 90,
                                                      ),
                                                      child: Text(
                                                        question[index],
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xff000000),
                                                          fontSize: Responsive
                                                                  .isSmallScreen(
                                                                      context)
                                                              ? width / 38
                                                              : width / 38,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      margin: EdgeInsets.only(
                                                        top: Responsive
                                                                .isSmallScreen(
                                                                    context)
                                                            ? width / 50
                                                            : width / 50,
                                                      ),
                                                      child: Image(
                                                        image: AssetImage(
                                                            'image/vaccimg.png'),
                                                        height: Responsive
                                                                .isSmallScreen(
                                                                    context)
                                                            ? width / 30
                                                            : width / 30,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                )));
                      },
                    ),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
