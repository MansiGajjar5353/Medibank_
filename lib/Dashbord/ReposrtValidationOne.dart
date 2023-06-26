import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/AddFamilyMedicalHestoryForm.dart';
import 'package:sizer/sizer.dart';

import '../Onbording/Responsive.dart';


class ReportValidationOneList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ReportValidationOneState();
  }
}

class _ReportValidationOneState extends State<ReportValidationOneList> {
  final reportdate = ["24 Jan", "26 Jan", "29 Jan","18 Feb","20Feb"];
  final reportName = ["Blood Report", "Blood Report", "Blood Report","Blood Report","Blood Report"];
  final date = ["24/05/2022", "25/05/2022", "26/05/2022","27/05/2022","28/05/2022"];
  final noofpage = ["1", "2", "3", "4", "5"];
  final type = ["Scanned", "Scanned", "Scanned", "Scanned", "Scanned"];
  final verification = [
    "VERIFIED",
    "VERIFIED",
    "VERIFIED",
    "VERIFIED",
    "VERIFIED",
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
                "Report Validation",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Responsive.isSmallScreen(context)
                      ? width / 20
                      : width / 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              actions: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child:  Image(
                    image: AssetImage('image/menu.png'),
                    height:Responsive.isSmallScreen(context)? width/10 : width/10,
                  ),
                )
               
              ],
            ),
            body: ListView.builder(
                itemCount: reportdate.length,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Image(
                                  image: AssetImage('image/familyreport.png'),
                                  height: Responsive.isSmallScreen(context)
                                      ? width / 9
                                      : width / 17,
                                  width: Responsive.isSmallScreen(context)
                                      ? width / 9
                                      : width / 17,
                                ),
                                Container(
                               margin:EdgeInsets.only(top: Responsive.isSmallScreen(context)? width/50 : width/50),
                                padding: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/25 : width/27,right: Responsive.isSmallScreen(context)? width/25 : width/27,top: Responsive.isSmallScreen(context)? width/70 : width/80,bottom: Responsive.isSmallScreen(context)? width/70: width/80 ),

                                  decoration: BoxDecoration(
                                    color: Color(0xffDEF4E3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    reportdate[index],
                                    style: TextStyle(
                                        fontSize:
                                        Responsive.isSmallScreen(context)
                                            ? width / 34
                                            : width / 42,
                                        color: Color(0xff24B445),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 30,
                              ),
                              child:
                              Column(
                                children: [
                                  Container(
                                    width: Responsive.isSmallScreen(context)
                                        ? width / 2.5
                                        : width / 2.2,

                                    child: Text(
                                      reportName[index],
                                      style: TextStyle(
                                          fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 32
                                              : width / 40,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  Container(
                                    width: Responsive.isSmallScreen(context)
                                        ? width / 2.5
                                        : width / 2.7,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Text("Upload on    : ",
                                              style: TextStyle(
                                                  fontSize:
                                                  Responsive.isSmallScreen(
                                                      context)
                                                      ? width / 34
                                                      : width / 42,
                                                  color: Color(0xff24B445),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins')),
                                        ),
                                        Container(
                                          child: Text(date[index],
                                              style: TextStyle(
                                                  fontSize:
                                                  Responsive.isSmallScreen(
                                                      context)
                                                      ? width / 34
                                                      : width / 42,
                                                  color: Color(0xff000000),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins')),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: Responsive.isSmallScreen(context)
                                        ? width / 2.5
                                        : width / 2.2,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Text("No of pages : ",
                                              style: TextStyle(
                                                  fontSize:
                                                  Responsive.isSmallScreen(
                                                      context)
                                                      ? width / 34
                                                      : width / 42,
                                                  color: Color(0xff24B445),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins')),
                                        ),
                                        Container(
                                          child: Text(noofpage[index],
                                              style: TextStyle(
                                                  fontSize:
                                                  Responsive.isSmallScreen(
                                                      context)
                                                      ? width / 34
                                                      : width / 42,
                                                  color: Color(0xff000000),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins')),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(

                                    width: Responsive.isSmallScreen(context)
                                        ? width / 2.5
                                        : width / 2.7,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Text("Type              : ",
                                              style: TextStyle(
                                                  fontSize:
                                                  Responsive.isSmallScreen(
                                                      context)
                                                      ? width / 34
                                                      : width / 42,
                                                  color: Color(0xff24B445),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins')),
                                        ),
                                        Container(
                                          child: Text(type[index],
                                              style: TextStyle(
                                                  fontSize:
                                                  Responsive.isSmallScreen(
                                                      context)
                                                      ? width / 34
                                                      : width / 42,
                                                  color: Color(0xff000000),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins')),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: Responsive.isSmallScreen(context)
                                        ? width / 2.5
                                        : width / 2.7,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Text("Verification  :",
                                              style: TextStyle(
                                                  fontSize:
                                                  Responsive.isSmallScreen(
                                                      context)
                                                      ? width / 34
                                                      : width / 42,
                                                  color: Color(0xff24B445),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins')),
                                        ),
                                        Container(
                                          child: Text(verification[index],
                                              style: TextStyle(
                                                  fontSize:
                                                  Responsive.isSmallScreen(
                                                      context)
                                                      ? width / 34
                                                      : width / 42,
                                                  color: Color(0xff000000),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins')),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),

                            )

                          ],
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  left: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 20,
                                  right: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 20,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color(0xff24B445), width: 1),
                                  color: Color(0x8024B445),
                                ),
                                child: Text("View",
                                    style: TextStyle(
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width /30
                                                : width / 32,
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
                                                ? width / 30
                                                : width / 32,
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
