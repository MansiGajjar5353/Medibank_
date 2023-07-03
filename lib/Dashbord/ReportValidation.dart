import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/AddFamilyMedicalHestoryForm.dart';
import 'package:sizer/sizer.dart';

import '../Onbording/Responsive.dart';

class ReportValidationList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ReportValidationListSatate();
  }
}

class _ReportValidationListSatate extends State<ReportValidationList> {


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
                      ? width / 1.2
                      : width / 1.3,
                  margin: EdgeInsets.only(

                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 40,
                    top: Responsive.isSmallScreen(context)
                        ? width / 30
                        : width / 60,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.4
                            : width / 1.3,
                        height: Responsive.isSmallScreen(context)
                            ? width / 8
                            : width / 8,
                        child: TextField(
//
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 20),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Report Validate(12)",
                            hintStyle: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4 ),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: TextStyle(
                            color: Color(0xff000000).withOpacity(0.4),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width /6
                            : width /6,
                        height: Responsive.isSmallScreen(context)
                            ? width / 6
                            : width / 6,
                        margin: EdgeInsets.only(
                          right: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 20,
                          bottom: Responsive.isSmallScreen(context)
                              ? width / 50
                              : width / 15,
                        ),
                        alignment: Alignment.centerRight,
                        child: CircleAvatar(
                          radius: Responsive.isSmallScreen(context)
                              ? width / 17
                              : width / 20,
                          backgroundColor: Color(0xffF9F9F9),
                          child:
                            Image(image: AssetImage('image/vactinationeyes.png'),height: Responsive.isSmallScreen(context)
                                ? width / 15
                                : width / 20,),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.2
                      : width / 1.3,
                  margin: EdgeInsets.only(

                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 40,
                    top: Responsive.isSmallScreen(context)
                        ? width / 50
                        : width / 60,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.4
                            : width / 1.3,
                        height: Responsive.isSmallScreen(context)
                            ? width / 8
                            : width / 8,
                        child: TextField(
//
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 20),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Report Validate(12)",
                            hintStyle: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4 ),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: TextStyle(
                            color: Color(0xff000000).withOpacity(0.4),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width /6
                            : width /6,
                        height: Responsive.isSmallScreen(context)
                            ? width / 6
                            : width / 6,
                        margin: EdgeInsets.only(
                          right: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 20,
                          bottom: Responsive.isSmallScreen(context)
                              ? width / 50
                              : width / 15,
                        ),
                        alignment: Alignment.centerRight,
                        child: CircleAvatar(
                          radius: Responsive.isSmallScreen(context)
                              ? width / 17
                              : width / 20,
                          backgroundColor: Color(0xffF9F9F9),
                          child:
                          Image(image: AssetImage('image/vactinationeyes.png'),height: Responsive.isSmallScreen(context)
                              ? width / 15
                              : width / 20,),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.2
                      : width / 1.3,
                  margin: EdgeInsets.only(

                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 40,
                    top: Responsive.isSmallScreen(context)
                        ? width / 50
                        : width / 60,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.4
                            : width / 1.3,
                        height: Responsive.isSmallScreen(context)
                            ? width / 8
                            : width / 8,
                        child: TextField(
//
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 20),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Report Validate(12)",
                            hintStyle: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4 ),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: TextStyle(
                            color: Color(0xff000000).withOpacity(0.4),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width /6
                            : width /6,
                        height: Responsive.isSmallScreen(context)
                            ? width / 6
                            : width / 6,
                        margin: EdgeInsets.only(
                          right: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 20,
                          bottom: Responsive.isSmallScreen(context)
                              ? width / 50
                              : width / 15,
                        ),
                        alignment: Alignment.centerRight,
                        child: CircleAvatar(
                          radius: Responsive.isSmallScreen(context)
                              ? width / 17
                              : width / 20,
                          backgroundColor: Color(0xffF9F9F9),
                          child:
                          Image(image: AssetImage('image/vactinationeyes.png'),height: Responsive.isSmallScreen(context)
                              ? width / 15
                              : width / 20,),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.2
                      : width / 1.3,
                  margin: EdgeInsets.only(

                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 40,
                    top: Responsive.isSmallScreen(context)
                        ? width / 50
                        : width / 60,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.4
                            : width / 1.3,
                        height: Responsive.isSmallScreen(context)
                            ? width / 8
                            : width / 8,
                        child: TextField(
//
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 20),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Report Validate(12)",
                            hintStyle: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4 ),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: TextStyle(
                            color: Color(0xff000000).withOpacity(0.4),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width /6
                            : width /6,
                        height: Responsive.isSmallScreen(context)
                            ? width / 6
                            : width / 6,
                        margin: EdgeInsets.only(
                          right: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 20,
                          bottom: Responsive.isSmallScreen(context)
                              ? width / 50
                              : width / 15,
                        ),
                        alignment: Alignment.centerRight,
                        child: CircleAvatar(
                          radius: Responsive.isSmallScreen(context)
                              ? width / 17
                              : width / 20,
                          backgroundColor: Color(0xffF9F9F9),
                          child:
                          Image(image: AssetImage('image/vactinationeyes.png'),height: Responsive.isSmallScreen(context)
                              ? width / 15
                              : width / 20,),
                        ),
                      ),
                    ],
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
