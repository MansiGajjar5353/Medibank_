import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/AddFamilymemberForm.dart';
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

class EditProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EditProfileState();
  }
}

class EditProfileState extends State<EditProfile> {
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
          "Edit Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize:
                Responsive.isSmallScreen(context) ? width / 20 : width /24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [

          Align(

            alignment: Alignment.centerRight,
            child: IconButton(
              padding: EdgeInsets.only(right: Responsive.isSmallScreen(context)?width/20:width/26),
              icon: Image.asset('image/correct.png',height:Responsive.isSmallScreen(context) ? width / 12 : width / 25,width: Responsive.isSmallScreen(context) ? width / 12 : width / 25 ,),
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
                Container(
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
                        ? width / 10
                        : width / 10,
                    child: Column(
                      children: [
                        Container(
                          height: Responsive.isSmallScreen(context)
                              ? width / 5
                              : width / 5,
                          width: Responsive.isSmallScreen(context)
                              ? width / 5
                              : width / 5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('image/placeholder.png'),
                              //  fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: Responsive.isSmallScreen(context)
                        ? width / 30
                        : width / 35,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Edit Picture ',
                    style: TextStyle(
                      color: Color(0xff24B445),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width /  24 : width / 28,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('image/user_one.png'),
                            height: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
                            width: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
                          ),
                          Text(
                            '  Basic Info',
                            style: TextStyle(
                              color: Color(0xff24B445),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width /  24 : width / 28,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('image/basic_edit.png'),
                        height: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 26,
                        width: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 26,
                      ),
                    ],
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Prathvi Bharatwala',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width /  24 : width / 28,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
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
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: Responsive.isSmallScreen(context)?width/20:width/26),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Prathvi Bharatwala',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 24 : width / 28,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
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
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Column(
                               children: [
                                 Container(
                                   margin: EdgeInsets.only(top: Responsive.isSmallScreen(context)?width/20:width/26),
                                   alignment: Alignment.centerLeft,
                                   child: Text(
                                     'Female',
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: Responsive.isSmallScreen(context)
                                           ? width /24 : width / 28,
                                       fontFamily: 'Poppins',
                                       fontWeight: FontWeight.w500,
                                     ),
                                   ),
                                 ),
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
                                 )
                               ],
                              ),
                            ),

                            Expanded(
                              flex: 4,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: Responsive.isSmallScreen(context)?width/20:width/26),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'A+',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: Responsive.isSmallScreen(context)
                                            ? width / 24 : width / 28,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Blood Group',
                                      style: TextStyle(
                                        color: Color(0xff949494),
                                        fontSize: Responsive.isSmallScreen(context)
                                            ? width / 26
                                            : width / 40,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    right: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    top: Responsive.isSmallScreen(context)
                        ? width / 10
                        : width / 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('image/location.png'),
                            height: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
                            width: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
                          ),
                          Text(
                            '  Location',
                            style: TextStyle(
                              color: Color(0xff24B445),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width /  24 : width / 28,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('image/basic_edit.png'),
                        height: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 26,
                        width: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 26,
                      ),
                    ],
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Lorem ipsum ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width /  24 : width / 28,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Address',
                                style: TextStyle(
                                  color: Color(0xff949494),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 26
                                      : width / 40,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            )
                          ],
                        ),

                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: Responsive.isSmallScreen(context)?width/20:width/26),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Ahmedabad',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: Responsive.isSmallScreen(context)
                                            ? width /24 : width / 28,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'City',
                                      style: TextStyle(
                                        color: Color(0xff949494),
                                        fontSize: Responsive.isSmallScreen(context)
                                            ? width / 26
                                            : width / 40,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Expanded(
                              flex: 4,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: Responsive.isSmallScreen(context)?width/20:width/26),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '382480',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: Responsive.isSmallScreen(context)
                                            ? width / 24 : width / 28,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
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
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    right: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    top: Responsive.isSmallScreen(context)
                        ? width / 10
                        : width / 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('image/contact_info.png'),
                            height: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
                            width: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
                          ),
                          Text(
                            '  Contact Info',
                            style: TextStyle(
                              color: Color(0xff24B445),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width /  24 : width / 28,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('image/basic_edit.png'),
                        height: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 26,
                        width: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 26,
                      ),
                    ],
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
                    bottom: Responsive.isSmallScreen(context)
                        ? width / 10
                        : width / 20,
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
                                '8989858589',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width /  24 : width / 28,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Mobile',
                                style: TextStyle(
                                  color: Color(0xff949494),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 26
                                      : width / 40,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: Responsive.isSmallScreen(context)?width/20:width/26),

                              alignment: Alignment.centerLeft,
                              child: Text(
                                'loremipsum@gmail.com',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width /  24 : width / 28,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'E-mail',
                                style: TextStyle(
                                  color: Color(0xff949494),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 26
                                      : width / 40,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
