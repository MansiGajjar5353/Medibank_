import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/FitnessData.dart';
import 'Responsive.dart';
import 'Dash.dart';
import 'DoctorsZone.dart';
import 'Symptoms.dart';

class Setting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SettingState();
  }
}

class SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        title: Text("Settings", style: TextStyle(color: Color(0xff000000),fontSize:Responsive.isSmallScreen(context)? width/20 : width/20, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),
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
                Align(
                  alignment: Alignment.center,
                  child:Container(

                  //  margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/40 : width/40,right: Responsive.isSmallScreen(context)? width/30 : width/30,top: Responsive.isSmallScreen(context)? width/30 : width/60),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: Responsive.isSmallScreen(context)? width/1.1 : width/1.1,
                          height: Responsive.isSmallScreen(context)? width/8 : width/8,
                          child: Center(
                            child: TextField(
//
                              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                filled: true,
                                fillColor: Color(0xffD3F0DA),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,),

                                hintText: "My Details",
                                hintStyle: TextStyle(color:Color(0xff24B445),  fontSize:Responsive.isSmallScreen(context)? width/26 : width/26, fontFamily: 'Poppins',fontWeight: FontWeight.w600, ),


                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      right: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(
                                'image/ic_settings_invitefriends.png'),
                            height: Responsive.isSmallScreen(context)
                                ? _mediaquery.size.height * 0.03
                                : _mediaquery.size.height * 0.06,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: Responsive.isSmallScreen(context)
                                    ? width / 40
                                    : width / 40),
                            child: RichText(
                              text: TextSpan(
                                text: 'Invite friends',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 24
                                      : width / 26,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('image/Profilewrite.png'),
                        height: Responsive.isSmallScreen(context)
                            ? _mediaquery.size.height * 0.02
                            : _mediaquery.size.height * 0.04,
                        alignment: Alignment.centerRight,
                        color: Color(0x80000000),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      right: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      top: 14),
                  child: Container(
                    height: 1.5,
                    color: Color(0xffE4E8EE),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      right: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('image/ic_settings_security.png'),
                            height: Responsive.isSmallScreen(context)
                                ? _mediaquery.size.height * 0.03
                                : _mediaquery.size.height * 0.06,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: Responsive.isSmallScreen(context)
                                    ? width / 40
                                    : width / 40),
                            child: RichText(
                              text: TextSpan(
                                text: 'Password',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 24
                                      : width / 26,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('image/Profilewrite.png'),
                        height: Responsive.isSmallScreen(context)
                            ? _mediaquery.size.height * 0.02
                            : _mediaquery.size.height * 0.04,
                        alignment: Alignment.centerRight,
                        color: Color(0x80000000),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      right: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      top: 14),
                  child: Container(
                    height: 1.5,
                    color: Color(0xffE4E8EE),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      right: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(
                                'image/ic_settings_notification.png'),
                            height: Responsive.isSmallScreen(context)
                                ? _mediaquery.size.height * 0.03
                                : _mediaquery.size.height * 0.06,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: Responsive.isSmallScreen(context)
                                    ? width / 40
                                    : width / 40),
                            child: RichText(
                              text: TextSpan(
                                text: 'Notifications',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 24
                                      : width / 26,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('image/Profilewrite.png'),
                        height: Responsive.isSmallScreen(context)
                            ? _mediaquery.size.height * 0.02
                            : _mediaquery.size.height * 0.04,
                        alignment: Alignment.centerRight,
                        color: Color(0x80000000),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      right: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      top: 14),
                  child: Container(
                    height: 1.5,
                    color: Color(0xffE4E8EE),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      right: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image(
                            image:
                                AssetImage('image/ic_settings_compliant.png'),
                            height: Responsive.isSmallScreen(context)
                                ? _mediaquery.size.height * 0.03
                                : _mediaquery.size.height * 0.06,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: Responsive.isSmallScreen(context)
                                    ? width / 40
                                    : width / 40),
                            child: RichText(
                              text: TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 24
                                      : width / 26,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('image/Profilewrite.png'),
                        height: Responsive.isSmallScreen(context)
                            ? _mediaquery.size.height * 0.02
                            : _mediaquery.size.height * 0.04,
                        alignment: Alignment.centerRight,
                        color: Color(0x80000000),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      right: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      top: 14),
                  child: Container(
                    height: 1.5,
                    color: Color(0xffE4E8EE),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      right: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(
                                'image/ic_settings_termsandcondition.png'),
                            height: Responsive.isSmallScreen(context)
                                ? _mediaquery.size.height * 0.03
                                : _mediaquery.size.height * 0.06,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: Responsive.isSmallScreen(context)
                                    ? width / 40
                                    : width / 40),
                            child: RichText(
                              text: TextSpan(
                                text: 'Terms & Conditions',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 24
                                      : width / 26,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('image/Profilewrite.png'),
                        height: Responsive.isSmallScreen(context)
                            ? _mediaquery.size.height * 0.02
                            : _mediaquery.size.height * 0.04,
                        alignment: Alignment.centerRight,
                        color: Color(0x80000000),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      right: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      top: 14),
                  child: Container(
                    height: 1.5,
                    color: Color(0xffE4E8EE),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      right: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 60,
                      top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('image/ic_settings_logout.png'),
                            height: Responsive.isSmallScreen(context)
                                ? _mediaquery.size.height * 0.03
                                : _mediaquery.size.height * 0.06,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: Responsive.isSmallScreen(context)
                                    ? width / 40
                                    : width / 40),
                            child: RichText(
                              text: TextSpan(
                                text: 'Logout',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 24
                                      : width / 26,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('image/Profilewrite.png'),
                        height: Responsive.isSmallScreen(context)
                            ? _mediaquery.size.height * 0.02
                            : _mediaquery.size.height * 0.04,
                        alignment: Alignment.centerRight,
                        color: Color(0x80000000),
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
