import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/FaimlyAccess.dart';
import 'package:project_signup_page/Dashbord/VaccinationHistory.dart';
import 'package:project_signup_page/Onbording/AddFamilymemberForm.dart';
import 'package:project_signup_page/Onbording/EditProfile.dart';
import 'package:project_signup_page/Onbording/FamilyMedicalHestoryList.dart';
import 'package:project_signup_page/Onbording/Faq.dart';
import 'package:project_signup_page/Onbording/FitnessData.dart';
import 'package:project_signup_page/Onbording/InsuranceHestory.dart';
import 'package:project_signup_page/Onbording/Setting.dart';
import 'package:project_signup_page/Onbording/VaccinationForm.dart';
import 'Responsive.dart';
import 'Dash.dart';
import 'DoctorsZone.dart';
import 'Symptoms.dart';

class Location extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LocationState();
  }
}

class LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.green,
            size: Responsive.isSmallScreen(context) ? width / 12 : width / 25),
        title: Text(
          "Location",
          style: TextStyle(
            color: Colors.black,
            fontSize:
                Responsive.isSmallScreen(context) ? width / 20 : width / 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              padding: EdgeInsets.only(
                  right: Responsive.isSmallScreen(context)
                      ? width / 20
                      : width / 26),
              icon: Image.asset(
                'image/correct.png',
                height:
                    Responsive.isSmallScreen(context) ? width / 12 : width / 25,
                width:
                    Responsive.isSmallScreen(context) ? width / 12 : width / 25,
              ),
              onPressed: () {
                // Add your notifications icon onPressed functionality here
              },
            ),
          )
        ],
      ),
      body: Container(
        height: _mediaquery.size.height * 1,
        child: ListView(
          children: [
            Padding(
                padding: EdgeInsets.only(top: _mediaquery.size.height * 0.02)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    right: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    top: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                  ),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(
                      Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                    ),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Name',
                                style: TextStyle(
                                  color: Color(0xff949494),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 26
                                      : width / 40,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Name',
                                  hintStyle: TextStyle(
                                    color: Color(0xff212426),
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 24
                                        : width / 28,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                  ),

                                ),
                                style: TextStyle(
                                  color: Color(0xff212426),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 24
                                      : width / 28,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),

                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    right: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    top: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                  ),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(
                      Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                    ),
                    child: Column(
                      children: [
                        Container(

                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Gender',
                                  style: TextStyle(
                                    color: Color(0xff949494),
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 26
                                        : width / 40,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left:Responsive.isSmallScreen(context)
                                    ? width / 9
                                    : width / 30,),
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Female',
                                        style: TextStyle(
                                          color: Color(0xff212426),
                                          fontSize: Responsive.isSmallScreen(context)
                                              ? width / 26
                                              : width / 40,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_drop_down_outlined,
                                        color: Color(0xff4F555A),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    right: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    top: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                  ),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(
                      Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                    ),
                    child: Column(
                      children: [
                        Container(
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Zip',
                                  style: TextStyle(
                                    color: Color(0xff949494),
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 26
                                        : width / 40,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left:Responsive.isSmallScreen(context)
                                    ? width / 9
                                    : width / 30,),
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '382480',
                                        style: TextStyle(
                                          color: Color(0xff212426),
                                          fontSize: Responsive.isSmallScreen(context)
                                              ? width / 26
                                              : width / 40,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_drop_down_outlined,
                                        color: Color(0xff4F555A),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
