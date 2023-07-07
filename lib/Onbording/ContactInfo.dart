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

class ContacInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContacInfoState();
  }
}

class ContacInfoState extends State<ContacInfo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
    //   appBar: AppBar(
    //
    //     backgroundColor: Colors.white,
    //     elevation: 0,
    //     leading:IconButton(
    //     padding: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/20:width/26),
    // icon: Image.asset('image/dialog_cancel.png',height:Responsive.isSmallScreen(context) ? width / 24: width / 10,
      // width: Responsive.isSmallScreen(context) ? width / 24 : width / 10 ,),
    // onPressed: () {
    //   Navigator.pop(context);
    // // Add your notifications icon onPressed functionality here
    // },
    //     ),
    //
    //   title: Text(
    //       "Edit Profile",
    //       style: TextStyle(
    //         color: Colors.black,
    //         fontSize:
    //         Responsive.isSmallScreen(context) ? width / 20 : width /24,
    //         fontFamily: 'Poppins',
    //         fontWeight: FontWeight.w400,
    //       ),
    //     ),
    //     actions: [
    //       Align(
    //
    //         alignment: Alignment.centerRight,
    //         child: IconButton(
    //           padding: EdgeInsets.only(right: Responsive.isSmallScreen(context)?width/20:width/26),
    //           icon: Image.asset('image/correct.png',height:Responsive.isSmallScreen(context) ? width / 12 : width / 25,width: Responsive.isSmallScreen(context) ? width / 12 : width / 25 ,),
    //           onPressed: () {
    //             Navigator.pop(context);
    //             // Add your notifications icon onPressed functionality here
    //           },
    //         ),
    //       )
    //
    //     ],
    //
    //   ),
      appBar: AppBar(
        toolbarHeight: Responsive.isSmallScreen(context)? width/5: width/8.2,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green,
          size: Responsive.isSmallScreen(context)? width/20: width/25,),
        leading: Align(
          alignment: Alignment.bottomLeft,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
    icon: Image.asset('image/dialog_cancel.png',height:Responsive.isSmallScreen(context) ? width / 24: width / 10,
     width: Responsive.isSmallScreen(context) ? width / 24 : width / 10 ,),
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
                    child: Text("Location ",
                      style: TextStyle(color: Color(0xff000000),
                          fontSize: Responsive.isSmallScreen(context)? width/20: width/30,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),),
                  ),
                  InkWell(
                    onTap: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));
                    },
                    child: Image(image: AssetImage("image/correct.png"),
                      height:  Responsive.isSmallScreen(context)? width/15: width/30,
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
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
                          ? width / 15
                          : width / 22,
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
                                'E - mail',
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
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 10
                        : width / 20,
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
                            image: AssetImage('image/gmail.png'),
                            height: Responsive.isSmallScreen(context)
                                ? width / 30
                                : width / 36,
                            width: Responsive.isSmallScreen(context)
                                ? width / 30
                                : width / 36,
                          ),
                          Text(
                            '  Update your email to stay connected',
                            style: TextStyle(
                              color: Color(0xff939393),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width /  28 : width / 32,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
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
                          ? width / 15
                          : width / 22,

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
                            ),
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

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 10
                        : width / 20,

                    top: Responsive.isSmallScreen(context)
                        ? width / 90
                        : width / 100,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: Responsive.isSmallScreen(context)? width/1.2: width/1.2,
                            alignment: Alignment.center,
                            child:Text(
                              'Add your phone number to help your friends find you',

                              style: TextStyle(
                                color: Color(0xff939393),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width /  32 : width / 34,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 10
                        : width / 12,

                    top: Responsive.isSmallScreen(context)
                        ? width / 80
                        : width / 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('image/nott.png'),
                            height: Responsive.isSmallScreen(context)
                                ? width / 30
                                : width / 36,
                            width: Responsive.isSmallScreen(context)
                                ? width / 30
                                : width / 36,
                          ),
                          Text(
                            '  Update your email to stay connected',
                            style: TextStyle(
                              color: Color(0xff939393),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width /  32 : width / 34,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 10
                        : width / 12,

                    top: Responsive.isSmallScreen(context)
                        ? width / 80
                        : width / 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [

                          Text(
                            '(this will be kept privatre)',
                            style: TextStyle(
                              color: Color(0xff939393),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width /  40 : width / 44,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
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
