import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'Responsive.dart';

class NotificationSetting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NotificationSettingState();
  }
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool _emailValue = true;
  bool _smsValue = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final mqHeight = MediaQuery.of(context).size.height;
    final mqWidth = MediaQuery.of(context).size.width;
    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.green),
          title: Text(
            "Notifications settings",
            style: TextStyle(
              color: Colors.black,
              fontSize:
                  Responsive.isSmallScreen(context) ? width / 20 : width / 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
                child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.1
                            : width / 1.1,
                        margin: EdgeInsets.only(
                            left: Responsive.isSmallScreen(context)
                                ? width / 40
                                : width / 40),
                        child: RichText(
                          text: TextSpan(
                            text:
                                'we may still send you important notifications about your account outside of your notifications settings.',
                            style: TextStyle(
                              color: Color(0xff868686),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 28
                                  : width / 34,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
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
                          ? width / 40
                          : width / 80,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.1
                            : width / 1.1,
                        margin: EdgeInsets.only(
                            left: Responsive.isSmallScreen(context)
                                ? width / 40
                                : width / 40),
                        child: RichText(
                          text: TextSpan(
                            text: 'Reminders ',
                            style: TextStyle(
                              color: Color(0xff212426),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 24
                                  : width / 32,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.1
                            : width / 1.1,
                        margin: EdgeInsets.only(
                            left: Responsive.isSmallScreen(context)
                                ? width / 40
                                : width / 40),
                        child: RichText(
                          text: TextSpan(
                            text:
                                'These are notifications to remind you of updates you might have missed.',
                            style: TextStyle(
                              color: Color(0xff868686),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 28
                                  : width / 36,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      top: 10),
                  child:  Row(
                    children: [
                    Transform.scale(
                    scale:0.8,
                    child:CupertinoSwitch(
                      value: _emailValue,

                      onChanged: (newValue) {
                        setState(() {
                          _emailValue = newValue;
                        });

                      },
                    ),
                    ),

                      Container(
                        margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/30:width/20),
                        child:  Text('Email', style: TextStyle(
                          color: Color(0xff212426),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 28
                              : width / 36,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      top: 10),
                  child:  Row(
                    children: [
                    Transform.scale(
                    scale:0.8,
                    child:  CupertinoSwitch(
                      value: _smsValue,

                      onChanged: (newValue) {
                        setState(() {
                          _smsValue = newValue;
                        });

                      },
                    ),
                    ),

                      Container(
                        margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/30:width/20),
                        child:  Text('SMS', style: TextStyle(
                          color: Color(0xff212426),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 28
                              : width / 36,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.1
                            : width / 1.1,
                        margin: EdgeInsets.only(
                            left: Responsive.isSmallScreen(context)
                                ? width / 40
                                : width / 40),
                        child: RichText(
                          text: TextSpan(
                            text: 'More activity about you ',
                            style: TextStyle(
                              color: Color(0xff212426),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 24

                                  : width / 32,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.1
                            : width / 1.1,
                        margin: EdgeInsets.only(
                            left: Responsive.isSmallScreen(context)
                                ? width / 40
                                : width / 40),
                        child: RichText(
                          text: TextSpan(
                            text:
                            'These are notifications for daily fitness data about based on your lifestyle score & other updates.',
                            style: TextStyle(
                              color: Color(0xff868686),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 28
                                  : width / 36,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      top: 10),
                  child:  Row(
                    children: [
                      Transform.scale(
                        scale:0.8,
                        child:CupertinoSwitch(
                          value: _emailValue,

                          onChanged: (newValue) {
                            setState(() {
                              _emailValue = newValue;
                            });

                          },
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/30:width/20),
                        child:  Text('Email', style: TextStyle(
                          color: Color(0xff212426),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 28
                              : width / 36,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      top: 10),
                  child:  Row(
                    children: [
                      Transform.scale(
                        scale:0.8,
                        child:  CupertinoSwitch(
                          value: _smsValue,

                          onChanged: (newValue) {
                            setState(() {
                              _smsValue = newValue;
                            });

                          },
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/30:width/20),
                        child:  Text('SMS', style: TextStyle(
                          color: Color(0xff212426),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 28
                              : width / 36,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.1
                            : width / 1.1,
                        margin: EdgeInsets.only(
                            left: Responsive.isSmallScreen(context)
                                ? width / 40
                                : width / 40),
                        child: RichText(
                          text: TextSpan(
                            text: 'Doctors',
                            style: TextStyle(
                              color: Color(0xff212426),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 24
                                  : width / 32,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.1
                            : width / 1.1,
                        margin: EdgeInsets.only(
                            left: Responsive.isSmallScreen(context)
                                ? width / 40
                                : width / 40),
                        child: RichText(
                          text: TextSpan(
                            text:
                            'These are notifications from your doctor about your reports or other updates.',
                            style: TextStyle(
                              color: Color(0xff868686),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 28
                                  : width / 36,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      top: 10),
                  child:  Row(
                    children: [
                      Transform.scale(
                        scale:0.8,
                        child:CupertinoSwitch(
                          value: _emailValue,

                          onChanged: (newValue) {
                            setState(() {
                              _emailValue = newValue;
                            });

                          },
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/30:width/20),
                        child:  Text('Email', style: TextStyle(
                          color: Color(0xff212426),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 28
                              : width / 36,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      right: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 80,
                      top: 10),
                  child:  Row(
                    children: [
                      Transform.scale(
                        scale:0.8,
                        child:  CupertinoSwitch(
                          value: _smsValue,

                          onChanged: (newValue) {
                            setState(() {
                              _smsValue = newValue;
                            });

                          },
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/30:width/20),
                        child:  Text('SMS', style: TextStyle(
                          color: Color(0xff212426),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 28
                              : width / 36,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/10 : width/10,right: Responsive.isSmallScreen(context)? width/10 : width/10,top: Responsive.isSmallScreen(context)? width/7 : width/7,bottom: Responsive.isSmallScreen(context)? width/7 : width/7),
                  width: Responsive.isSmallScreen(context)? width/1.3 : width/1.3,
                  height: Responsive.isSmallScreen(context)? width/9.5 : width/9.5,
                  child: ElevatedButton(
                    child: Text('Save Preference', style: TextStyle( fontFamily:'Poppins',
                        fontSize:  Responsive.isSmallScreen(context)? width/ 25:width/25, fontWeight: FontWeight.w900),),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF24B445),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    onPressed: (){

                    },
                  ),
                ),
                
              ],
            ))
          ],
        ));
  }
}
