import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/AddFamilyMedicalHestoryForm.dart';
import 'package:sizer/sizer.dart';

import '../Onbording/Responsive.dart';

class SmartReportList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SmartReportListSatate();
  }
}

class _SmartReportListSatate extends State<SmartReportList> {
  final titles = [
    "8989898989",
    "8989898989",
    "8989898989",
    "8989898989",
    "8989898989"
  ];
  final title = ["D-Dimer", "Creatine", "Uric Acid", "HbA1C", "D-Dimer"];
  final status = ["Normal", "High", "Normal", "Normal", "Normal"];
  final subtitl = [
    "0.7 - 1.3 mg/dl",
    "3.5 - 7.2 mg/dl",
    "> 8",
    "< 500.0 ng FEU/mL",
    "< 500.0 ng FEU/mL"
  ];
  final price = ["600", "600", "600", "600", "600"];

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
                "Blood Report",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Responsive.isSmallScreen(context)
                      ? width / 18
                      : width / 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            body: ListView(
              children: [
                Container(
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.0
                      : width / 1.0,
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
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 40,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 30,
                      top: 20,
                      bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0x1724B445),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.9
                            : width / 2.0,
                        child: Text(
                            'Your original document is the most reliable source of imformation',
                            style: TextStyle(
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 34
                                    : width / 46,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins')),
                      ),
                      Container(

                        alignment: Alignment.topRight,
                        child: ElevatedButton(
                          child: Text(
                            'View Original',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 36
                                    : width / 40,
                                fontWeight: FontWeight.w700),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF24B445),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                          ),
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=> AddFamilyMedicalForm()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Container(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
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
                            padding: EdgeInsets.only(
                                left: Responsive.isSmallScreen(context)
                                    ? width / 40
                                    : width / 40,
                                right: Responsive.isSmallScreen(context)
                                    ? width / 40
                                    : width / 30,
                                top: 20,
                                bottom: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF7F7F7),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(title[index],
                                            style: TextStyle(
                                                fontSize:
                                                    Responsive.isSmallScreen(
                                                            context)
                                                        ? width / 22
                                                        : width / 32,
                                                color: Color(0xff000000),
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Poppins')),
                                      ),
                                      Container(
                                        alignment: Alignment.topRight,
                                        child: Text(status[index],
                                            style: TextStyle(
                                                fontSize:
                                                    Responsive.isSmallScreen(
                                                            context)
                                                        ? width / 30
                                                        : width / 32,
                                                color: Color(0xff24B445),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(subtitl[index],
                                            style: TextStyle(
                                                fontSize:
                                                    Responsive.isSmallScreen(
                                                            context)
                                                        ? width / 30
                                                        : width / 38,
                                                color: Color(0xff929292),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      ),
                                      Container(
                                        alignment: Alignment.topRight,
                                        child: Text(price[index],
                                            style: TextStyle(
                                                fontSize:
                                                    Responsive.isSmallScreen(
                                                            context)
                                                        ? width / 30
                                                        : width / 38,
                                                color: Color(0xff929292),
                                                fontWeight: FontWeight.w300,
                                                fontFamily: 'Poppins')),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                    width: double.infinity,
                  ),
                ),
              ],
            )),
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
                    left: Responsive.isSmallScreen(context)
                        ? width / 10
                        : width / 10,
                    right: Responsive.isSmallScreen(context)
                        ? width / 10
                        : width / 10,
                    bottom: Responsive.isSmallScreen(context)
                        ? width / 7
                        : width / 10),
                width: Responsive.isSmallScreen(context)
                    ? width / 2.0
                    : width / 2.0,
                height:
                    Responsive.isSmallScreen(context) ? width / 9 : width / 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Color(0xff24B445),
                ),
                child: Icon(
                  Icons.add,
                  color: Color(0xff000000),
                  size: Responsive.isSmallScreen(context)
                      ? width / 12
                      : width / 15,
                ),
              )),
        ),
      ],
    );
  }
}
