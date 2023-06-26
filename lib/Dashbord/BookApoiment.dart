import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/AddFamilyMedicalHestoryForm.dart';
import 'package:sizer/sizer.dart';

import '../Onbording/Responsive.dart';

enum Symptom { yes, no }

enum Appoinment { atclinic, online }

class BookApoiment extends StatefulWidget {
  bool isExpanded = false;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BookApoimentState();
  }
}

class _BookApoimentState extends State<BookApoiment> {
  Symptom? symptom;
  Color yesTextColor = Color(0x734F555A);
  Color noTextColor = Color(0x734F555A);
  Appoinment? appoinment;
  Color attclinikTextColor = Color(0x734F555A);
  Color onlineTextColor = Color(0x734F555A);
  final titles = [
    "May 13",
    "June 12",
    "May 13",
    "June 12",
    "May 13",
    "June 12",
  ];
  final time = [
    "5:00-7:00 Pm",
    "5:00-7:00 Pm",
    "5:00-7:00 Pm",
    "5:00-7:00 Pm",
    "5:00-7:00 Pm",
    "5:00-7:00 Pm",
    "5:00-7:00 Pm",
    "5:00-7:00 Pm",
    "5:00-7:00 Pm",
  ];
  final selected = [
    "Select",
    "Select",
    "Select",
    "Select",
    "Select",
    "Select",
    "Select",
    "Select",
    "Select",
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
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.green),
              title: Text(
                "Book Appointment",
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
                  child: Image(
                    image: AssetImage('image/menuimg.png'),
                    height: Responsive.isSmallScreen(context)
                        ? width / 10
                        : width / 10,
                  ),
                )
              ],
            ),
            body: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(
                          left: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 20,
                          top: 20),
                      child: RichText(
                        text: TextSpan(
                          text: 'Confirm your ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 22
                                : width / 28,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Appointment',
                              style: TextStyle(
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 22
                                    : width / 28,
                                color: Color(0xff24B445),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 20,
                          right: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 20,
                          top: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 20,
                          bottom: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 20),
                      padding: EdgeInsets.all(20),
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        // Set the maximum width to infinity
                        maxHeight: double
                            .infinity, // Set the maximum height to infinity
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Dr. Khushboo Rai',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 22
                                              : width / 30,
                                      color: Color(0xff24B445),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Dental',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 22
                                              : width / 30,
                                      color: Color(0xff24B445),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: Responsive.isSmallScreen(context)
                                    ? width / 60
                                    : width / 60),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Have you observed any symptoms:',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 24
                                      : width / 38,
                                  color: Color(0x734F555A),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: Responsive.isSmallScreen(context)
                                    ? width / 60
                                    : width / 60),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Container(
                                  child: Radio<Symptom>(
                                    value: Symptom.yes,
                                    groupValue: symptom,
                                    activeColor: Color(0xff24B445),
                                    focusColor: Color(0x734F555A),
                                    hoverColor: Color(0x734F555A),
                                    onChanged: (value) {
                                      setState(() {
                                        symptom = value;
                                        yesTextColor = Colors
                                            .green; // Set the desired color
                                        noTextColor = Color(
                                            0x734F555A); // Reset the color
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  'Yes',
                                  style: TextStyle(
                                    color: yesTextColor,
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 24
                                        : width / 38,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: Responsive.isSmallScreen(context)
                                          ? width / 10
                                          : width / 10),
                                  child: Radio<Symptom>(
                                    value: Symptom.no,
                                    groupValue: symptom,
                                    activeColor: Color(0xff24B445),
                                    focusColor: Color(0x734F555A),
                                    hoverColor: Color(0x734F555A),
                                    onChanged: (value) {
                                      setState(() {
                                        symptom = value;
                                        yesTextColor = Color(
                                            0x734F555A); // Reset the color
                                        noTextColor = Colors
                                            .green; // Set the desired color
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  'No',
                                  style: TextStyle(
                                    color: noTextColor,
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 24
                                        : width / 38,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: Responsive.isSmallScreen(context)
                                    ? width / 60
                                    : width / 60),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Have you observed any symptoms:',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 24
                                      : width / 38,
                                  color: Color(0x734F555A),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(
                                    top: Responsive.isSmallScreen(context)
                                        ? width / 60
                                        : width / 60,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: Responsive.isSmallScreen(context)
                                            ? width / 1.3
                                            : width / 1.3,
                                        height:
                                            Responsive.isSmallScreen(context)
                                                ? width / 8
                                                : width / 8,
                                        child: TextField(
                                          textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 20),
                                            filled: true,
                                            fillColor: Color(0xffFFFFFF),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(45),
                                              borderSide: BorderSide.none,
                                            ),
                                            hintText: "explain",
                                            hintStyle: TextStyle(
                                              color: Color(0xff4F555A)
                                                  .withOpacity(0.5),
                                              fontSize:
                                                  Responsive.isSmallScreen(
                                                          context)
                                                      ? width / 24
                                                      : width / 38,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          style: TextStyle(
                                            color: Color(0xff4F555A)
                                                .withOpacity(0.5),
                                            fontSize: Responsive.isSmallScreen(
                                                    context)
                                                ? width / 30
                                                : width / 48,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: Responsive.isSmallScreen(context)
                                    ? width / 60
                                    : width / 60),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Appointment For Today:',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 24
                                      : width / 38,
                                  color: Color(0x734F555A),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: Responsive.isSmallScreen(context)
                                    ? width / 60
                                    : width / 60),
                            child: Row(
                              children: [
                                Container(
                                  child: Radio<Appoinment>(
                                    value: Appoinment.atclinic,
                                    groupValue: appoinment,
                                    activeColor: Color(0xff24B445),
                                    focusColor: Color(0x734F555A),
                                    hoverColor: Color(0x734F555A),
                                    onChanged: (value) {
                                      setState(() {
                                        appoinment = value;
                                        attclinikTextColor = Colors
                                            .green; // Set the desired color
                                        onlineTextColor = Color(
                                            0x734F555A); // Reset the color
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  'At Clinic',
                                  style: TextStyle(
                                    color: attclinikTextColor,
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 24
                                        : width / 38,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: Responsive.isSmallScreen(context)
                                          ? width / 10
                                          : width / 10),
                                  child: Radio<Appoinment>(
                                    value: Appoinment.online,
                                    groupValue: appoinment,
                                    activeColor: Color(0xff24B445),
                                    focusColor: Color(0x734F555A),
                                    hoverColor: Color(0x734F555A),
                                    onChanged: (value) {
                                      setState(() {
                                        appoinment = value;
                                        attclinikTextColor = Color(
                                            0x734F555A); // Reset the color
                                        onlineTextColor = Colors
                                            .green; // Set the desired color
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  'Online',
                                  style: TextStyle(
                                    color: onlineTextColor,
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 24
                                        : width / 38,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            child: Container(
                              width: double.infinity,
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),

                                shrinkWrap: true,
                                itemCount: time.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                      child: Container(
                                          child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: Responsive.isSmallScreen(
                                                    context)
                                                ? width / 60
                                                : width / 60),
                                        child: Container(
                                          height: 1.5,
                                          color: Color(0xffE4E8EE),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: Responsive.isSmallScreen(
                                                    context)
                                                ? width / 50
                                                : width / 50,
                                            right: Responsive.isSmallScreen(
                                                    context)
                                                ? width / 50
                                                : width / 50),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: Responsive.isSmallScreen(
                                                          context)
                                                      ? width / 60
                                                      : width / 60),
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                time[index],
                                                style: TextStyle(
                                                  color: Color(0x804F555A),
                                                  fontSize:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 24
                                                          : width / 38,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.topRight,
                                              child: Text(
                                                selected[index],
                                                style: TextStyle(
                                                  color: Color(0x804F555A),
                                                  fontSize:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? width / 24
                                                          : width / 38,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )));
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
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
                                : width / 12,
                            top: Responsive.isSmallScreen(context)
                                ? width / 30
                                : width / 30),
                        width: Responsive.isSmallScreen(context)
                            ? width / 2.0
                            : width / 2.0,
                        height: Responsive.isSmallScreen(context)
                            ? width / 9
                            : width / 15,
                        child: ElevatedButton(
                          child: Text(
                            'Book',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff24B445),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 25
                                    : width / 50,
                                fontWeight: FontWeight.w700),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF000000),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=> AddFamilyMedicalForm()));
                          },
                        ),
                      ),
                    )
                  ],
                )
              ],
            ))
      ],
    );
  }
}
