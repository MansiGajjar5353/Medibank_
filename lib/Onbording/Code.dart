import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'Responsive.dart';
import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/LifestyleDashboard.dart';
import 'package:project_signup_page/Onbording/voiceAssistant.dart';
import 'Records.dart';
import 'Responsive.dart';
import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/FitnessData.dart';

import 'Dash.dart';
import 'DoctorsZone.dart';
import 'Symptoms.dart';







class TabData {
  String title;
  String description;

  TabData(this.title, this.description);
}

class ScrollableTabBar extends StatefulWidget {
  @override
  _ScrollableTabBarState createState() => _ScrollableTabBarState();
}

class _ScrollableTabBarState extends State<ScrollableTabBar> {
  List<TabData> tabs = [
    TabData('All', 'Description for Tab 1'),
    TabData('Lab report', 'Description for Tab 2'),
    TabData('Prescription', 'Description for Tab 3'),
    TabData('Hospitalization', 'Description for Tab 4'),
    TabData('Report Validation', 'Description for Tab 4'),
    TabData('Treatments', 'Description for Tab 4'),
    TabData('Other', 'Description for Tab 4'),
  ];

  int currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    return Scaffold(
     
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SingleChildScrollView(

                scrollDirection: Axis.horizontal,
                child: Container(margin: EdgeInsets.only(left: 15),
                  child: Row(

                    children: tabs.map((tab) {
                      int index = tabs.indexOf(tab);
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                          _pageController.animateToPage(
                            index,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          padding: EdgeInsets.only(top: 10,bottom: 5),
                         decoration: BoxDecoration(

                           border: Border(
                             bottom: BorderSide(width: 1.5, color: currentIndex == index ? Colors.green : Colors.transparent,),
                        ),
                         ),
                         // color: currentIndex == index ? Colors.green : Colors.black,
                          child: Container(
                            child: Text(
                              tab.title,
                              style: TextStyle(fontSize:14, color:currentIndex == index ? Colors.green : Colors.black
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: tabs.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },




















                  itemBuilder: (context, index) {
                    if (index == 0) {
                     return ListView(
                       children: [
                         Container(
                            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                            height: Responsive.isSmallScreen(context)?_mediaquery.size.height*0.88: _mediaquery.size.height*1.5,
                            decoration: BoxDecoration(

                              color: Color(0xffF7F7F7),
                              borderRadius: BorderRadius.circular(8),

                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Container(
                                  margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                                  height: Responsive.isSmallScreen(context)?_mediaquery.size.height*0.20:_mediaquery.size.height*0.32,
                                  decoration: BoxDecoration(

                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),

                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 20, top: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              //height: Responsive.isSmallScreen(context)? _mediaquery.size.height*0.1 :_mediaquery.size.height*0.10,
                                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                                              child: Image(image: AssetImage('image/Report1.png')),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              height: 22,
                                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                                              decoration: BoxDecoration(
                                                color: Color(0xffDEF4E3),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Center(child: Text("24 Jan",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Color(0xff24B445),
                                                    fontSize: 10, fontWeight: FontWeight.w500),)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: Responsive.isSmallScreen(context)? width/1.61 : width/1.22,
                                            margin: EdgeInsets.only(left: 20, top: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                              children: [
                                                Container(child: Text("Blood Report",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                                      fontWeight: FontWeight.w500),)),
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/9 : width/18),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/5 : width/10,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Color(0xff24B445)),
                                                      ),
                                                      child: Center(child:
                                                      Text("Support", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("Upload on",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("24/01/2023 ,10:54 AM", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("No of Pages",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("2", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("Type",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("Scanned", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("Verification:",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("Verified", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(
                                            width: Responsive.isSmallScreen(context)? width/1.50 : width/1.20,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 10,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Color(0xff24B445)),
                                                      ),
                                                      child: Center(child:
                                                      Text("Verify", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),


                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 5,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Color(0xff24B445)),
                                                      ),
                                                      child: Center(child:
                                                      Text("View", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 5,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Colors.red),
                                                      ),
                                                      child: Center(child:
                                                      Text("Hide", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 5,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Colors.red),
                                                      ),
                                                      child: Center(child:
                                                      Text("Delete", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                ),




                                Container(
                                  margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                                  height: Responsive.isSmallScreen(context)?_mediaquery.size.height*0.20:_mediaquery.size.height*0.32,
                                  decoration: BoxDecoration(

                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),

                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 20, top: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              //height: Responsive.isSmallScreen(context)? _mediaquery.size.height*0.1 :_mediaquery.size.height*0.10,
                                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                                              child: Image(image: AssetImage('image/Report1.png')),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              height: 22,
                                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                                              decoration: BoxDecoration(
                                                color: Color(0xffDEF4E3),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Center(child: Text("24 Jan",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Color(0xff24B445),
                                                    fontSize: 10, fontWeight: FontWeight.w500),)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: Responsive.isSmallScreen(context)? width/1.61 : width/1.22,
                                            margin: EdgeInsets.only(left: 20, top: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                              children: [
                                                Container(child: Text("Blood Report",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                                      fontWeight: FontWeight.w500),)),
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/9 : width/18),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/5 : width/10,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Color(0xff24B445)),
                                                      ),
                                                      child: Center(child:
                                                      Text("Support", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("Upload on",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("24/01/2023 ,10:54 AM", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("No of Pages",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("2", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("Type",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("Scanned", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("Verification:",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("Verified", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(
                                            width: Responsive.isSmallScreen(context)? width/1.50 : width/1.20,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 10,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Color(0xff24B445)),
                                                      ),
                                                      child: Center(child:
                                                      Text("Verify", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),


                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 5,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Color(0xff24B445)),
                                                      ),
                                                      child: Center(child:
                                                      Text("View", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 5,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Colors.red),
                                                      ),
                                                      child: Center(child:
                                                      Text("Hide", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 5,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Colors.red),
                                                      ),
                                                      child: Center(child:
                                                      Text("Delete", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                                  height: Responsive.isSmallScreen(context)?_mediaquery.size.height*0.20:_mediaquery.size.height*0.32,
                                  decoration: BoxDecoration(

                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),

                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 20, top: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              //height: Responsive.isSmallScreen(context)? _mediaquery.size.height*0.1 :_mediaquery.size.height*0.10,
                                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                                              child: Image(image: AssetImage('image/Report1.png')),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              height: 22,
                                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                                              decoration: BoxDecoration(
                                                color: Color(0xffDEF4E3),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Center(child: Text("24 Jan",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Color(0xff24B445),
                                                    fontSize: 10, fontWeight: FontWeight.w500),)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: Responsive.isSmallScreen(context)? width/1.61 : width/1.22,
                                            margin: EdgeInsets.only(left: 20, top: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                              children: [
                                                Container(child: Text("Blood Report",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                                      fontWeight: FontWeight.w500),)),
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/9 : width/18),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/5 : width/10,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Color(0xff24B445)),
                                                      ),
                                                      child: Center(child:
                                                      Text("Support", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("Upload on",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("24/01/2023 ,10:54 AM", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("No of Pages",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("2", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("Type",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("Scanned", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("Verification:",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("Verified", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(
                                            width: Responsive.isSmallScreen(context)? width/1.50 : width/1.20,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 10,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Color(0xff24B445)),
                                                      ),
                                                      child: Center(child:
                                                      Text("Verify", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),


                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 5,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Color(0xff24B445)),
                                                      ),
                                                      child: Center(child:
                                                      Text("View", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 5,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Colors.red),
                                                      ),
                                                      child: Center(child:
                                                      Text("Hide", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 5,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Colors.red),
                                                      ),
                                                      child: Center(child:
                                                      Text("Delete", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                                  height: Responsive.isSmallScreen(context)?_mediaquery.size.height*0.20:_mediaquery.size.height*0.32,
                                  decoration: BoxDecoration(

                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),

                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 20, top: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              //height: Responsive.isSmallScreen(context)? _mediaquery.size.height*0.1 :_mediaquery.size.height*0.10,
                                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                                              child: Image(image: AssetImage('image/Report1.png')),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              height: 22,
                                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                                              decoration: BoxDecoration(
                                                color: Color(0xffDEF4E3),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Center(child: Text("24 Jan",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Color(0xff24B445),
                                                    fontSize: 10, fontWeight: FontWeight.w500),)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: Responsive.isSmallScreen(context)? width/1.61 : width/1.22,
                                            margin: EdgeInsets.only(left: 20, top: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                              children: [
                                                Container(child: Text("Blood Report",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                                      fontWeight: FontWeight.w500),)),
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/9 : width/18),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/5 : width/10,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Color(0xff24B445)),
                                                      ),
                                                      child: Center(child:
                                                      Text("Support", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("Upload on",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("24/01/2023 ,10:54 AM", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("No of Pages",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("2", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("Type",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("Scanned", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                                              child: Row(
                                                children: [
                                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                                    child: Text("Verification:",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                  ),
                                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                  Text("Verified", style: TextStyle(color: Color(0xff000000),
                                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                                      fontWeight: FontWeight.w400),),
                                                ],
                                              )),
                                          Container(
                                            width: Responsive.isSmallScreen(context)? width/1.50 : width/1.20,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 10,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Color(0xff24B445)),
                                                      ),
                                                      child: Center(child:
                                                      Text("Verify", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),


                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 5,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Color(0xff24B445)),
                                                      ),
                                                      child: Center(child:
                                                      Text("View", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 5,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Colors.red),
                                                      ),
                                                      child: Center(child:
                                                      Text("Hide", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 5,top: 5),
                                                      height: 25,
                                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        border: Border.all(color: Colors.red),
                                                      ),
                                                      child: Center(child:
                                                      Text("Delete", textAlign: TextAlign.center,
                                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w500),)),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                ),
























                              ],
                            ),

                          ),
                       ],
                     );
                    } else if (index == 1) {
                      return Container(
                        alignment: Alignment.center,
                        child: Text(
                          'No Records Found',
                          style: TextStyle(fontSize: 24),
                        ),
                      );
                    } else {
                      return Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                        'No Records Found',
                              style: TextStyle(fontSize: 24),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'No Records Found',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


















//
//
// void main() {
//   runApp(BottomNavBarApp());
// }
//
// class BottomNavBarApp extends StatefulWidget {
//   @override
//   _BottomNavBarAppState createState() => _BottomNavBarAppState();
// }
//
// class _BottomNavBarAppState extends State<BottomNavBarApp> {
//   int _currentIndex = 0;
//
//   // List of screens to be displayed in the bottom navigation bar
//   final List<Widget> _screens = [
//     // Replace these with your own screens
//     Screen1(),
//     Screen2(),
//     Screen3(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Bottom Navigation Bar'),
//         ),
//         body: _screens[_currentIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _currentIndex,
//           onTap: (int index) {
//             setState(() {
//               _currentIndex = index;
//             });
//           },
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Screen 1',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Screen 2',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Screen 3',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Screen1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       child: Center(
//         child: Text('Screen 1'),
//       ),
//     );
//   }
// }
//
// class Screen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       child: Center(
//         child: Text('Screen 2'),
//       ),
//     );
//   }
// }
//
// class Screen3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green,
//       child: Center(
//         child: Text('Screen 3'),
//       ),
//     );
//   }
// }









//
// class BottomNavBarApp extends StatefulWidget {
//   @override
//   _BottomNavBarAppState createState() => _BottomNavBarAppState();
// }
//
// class _BottomNavBarAppState extends State<BottomNavBarApp> {
//   int _currentIndex = 0;
//
//   // List of screens to be displayed in the bottom navigation bar
//   final List<Widget> _screens = [
//     // Replace these with your own screens
//     Screen1(),
//     Screen2(),
//     Screen3(),
//   ];
//
//   // Define a list of colors for the icon and label
//   final List<Color> _iconColors = [
//     Colors.grey, // Screen 1 default color
//     Colors.grey, // Screen 2 default color
//     Colors.grey, // Screen 3 default color
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Bottom Navigation Bar'),
//         ),
//         body: _screens[_currentIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _currentIndex,
//           onTap: (int index) {
//             setState(() {
//               _currentIndex = index;
//               // Set the color of the selected icon and label to green
//               _iconColors[_currentIndex] = Colors.white30;
//             });
//           },
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home, color: _iconColors[0]), // Use the color from the list
//               label: 'Screen 1',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search, color: _iconColors[1]), // Use the color from the list
//               label: 'Screen 2',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person, color: _iconColors[2]), // Use the color from the list
//               label: 'Screen 3',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }







//
//
// class BottomNavBarApp extends StatefulWidget {
//   @override
//   _BottomNavBarAppState createState() => _BottomNavBarAppState();
// }
//
// class _BottomNavBarAppState extends State<BottomNavBarApp> {
//   int _currentIndex = 0;
//
//   // List of screens to be displayed in the bottom navigation bar
//   final List<Widget> _screens = [
//     // Replace these with your own screens
//     Screen1(),
//     Screen2(),
//     Screen3(),
//   ];
//
//   // Define a list of colors for the icon and label
//   final List<Color> _iconColors = [
//     Colors.grey, // Screen 1 default color
//     Colors.grey, // Screen 2 default color
//     Colors.grey, // Screen 3 default color
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Bottom Navigation Bar'),
//         ),
//         body: _screens[_currentIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _currentIndex,
//           onTap: (int index) {
//             setState(() {
//               _currentIndex = index;
//
//               // Reset the colors to default grey for all items
//               _iconColors[0] = Colors.grey;
//               _iconColors[1] = Colors.grey;
//               _iconColors[2] = Colors.grey;
//
//               // Set the color of the selected icon and label to green
//               _iconColors[_currentIndex] = Colors.green;
//
//             });
//           },
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home, color: _iconColors[0]), // Use the color from the list
//               label: 'Screen 1',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search, color: _iconColors[1]), // Use the color from the list
//               label: 'Screen 2',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person, color: _iconColors[2]), // Use the color from the list
//               label: 'Screen 3',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // Rest of the code remains the same...
//







//
//
//
// class BottomNavBarApp extends StatefulWidget {
//   @override
//   _BottomNavBarAppState createState() => _BottomNavBarAppState();
// }
//
// class _BottomNavBarAppState extends State<BottomNavBarApp> {
//   int _currentIndex = 0;
//
//   // List of screens to be displayed in the bottom navigation bar
//   final List<Widget> _screens = [
//     // Replace these with your own screens
//     Screen1(),
//     Screen2(),
//     Screen3(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Bottom Navigation Bar'),
//         ),
//         body: _screens[_currentIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _currentIndex,
//           onTap: (int index) {
//             setState(() {
//               _currentIndex = index;
//             });
//           },
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Screen 1',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.file_copy_rounded),
//               label: 'Screen 2',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.mic),
//               label: 'Screen 3',
//             ),
//           ],
//           selectedItemColor: Colors.green, // Set the selected label color to green
//           unselectedItemColor: Colors.grey, // Set the unselected label color to grey
//         ),
//       ),
//     );
//   }
// }
//
// // Rest of the code remains the same...
//
//









//
//
//
//
// class BottomNavBarApp extends StatefulWidget {
//   @override
//   _BottomNavBarAppState createState() => _BottomNavBarAppState();
// }
//
// class _BottomNavBarAppState extends State<BottomNavBarApp> {
//   int _currentIndex = 0;
//
//   // List of screens to be displayed in the bottom navigation bar
//   final List<Widget> _screens = [
//     // Replace these with your own screens
//     Screen1(),
//     Screen2(),
//     Screen3(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Bottom Navigation Bar'),
//         ),
//         body: _screens[_currentIndex],
//         bottomNavigationBar:Container(
//           margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//
//         ),
//
//         // Set the desired height of the navigation bar
//           child: BottomNavigationBar(
//             currentIndex: _currentIndex,
//             onTap: (int index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//             items: [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Screen 1',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.search),
//                 label: 'Screen 2',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.person),
//                 label: 'Screen 3',
//               ),
//             ],
//             //backgroundColor: Colors.black, // Set the background color of the navigation bar
//             selectedItemColor: Colors.green,
//             unselectedItemColor: Colors.grey,
//             //selectedFontSize: 14, // Set the font size of the selected label
//             //unselectedFontSize: 12, // Set the font size of the unselected labels
//           ),
//         ),
//       ),
//     );
//   }
// }






// class BottomNavBarApp extends StatefulWidget {
//   @override
//   _BottomNavBarAppState createState() => _BottomNavBarAppState();
// }
//
// class _BottomNavBarAppState extends State<BottomNavBarApp> {
//   int _currentIndex = 0;
//
//   // List of screens to be displayed in the bottom navigation bar
//   final List<Widget> _screens = [
//     // Replace these with your own screens
//     Screen1(),
//     Screen2(),
//     Screen3(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//         body: _screens[_currentIndex],
//       extendBody: true,
//
//         bottomNavigationBar: Container(
//
//           child: FloatingNavbar(
//
//
//                 currentIndex: _currentIndex,
//                 onTap: (int index) {
//                   setState(() {
//                     _currentIndex = index;
//                   });
//                 },
//                 items: [
//                   FloatingNavbarItem(
//                     icon:Icons.home,
//                     title: 'Home',
//                   ),
//                   FloatingNavbarItem(
//                     icon: Icons.file_copy,
//                     title: 'Record',
//                   ),
//                   FloatingNavbarItem(
//                     icon: Icons.mic_none,
//                     title: 'Voice',
//                   ),
//                 ],
//                 selectedItemColor: Colors.green,
//             selectedBackgroundColor: Colors.black,
//                 unselectedItemColor: Colors.grey,
//             iconSize: 18,
//                   fontSize: 8,
//             margin: EdgeInsets.only(left:25, right: 25, bottom:5),
//             ),
//         ),
//
//     );
//   }
// }
// // Rest of the code remains the same...
//
//
//
// class Screen1 extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return Screen1State();
//   }
//
// }
//
// class Screen1State extends State<Screen1> {
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//
//     var _mediaquery = MediaQuery.of(context);
//
//     return Scaffold(
//       body: ListView(
//         children: [
//           Padding(padding: EdgeInsets.only(top: _mediaquery.size.height*0.02)),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   shape: BoxShape.circle,
//                   boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 0)],
//                 ),
//                 child: CircleAvatar(
//                   backgroundColor: Colors.white,
//
//                   radius: 25.0,
//                   child:Column(
//                     children: [
//                       Container(
//                         height:42.0,
//                         width: 42.0,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: AssetImage('image/Dp.png'),
//                             fit: BoxFit.fitHeight,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//               Container(
//                 margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//
//                       child:RichText(
//                         text: TextSpan(
//                           text: 'Medi',
//                           style: TextStyle(
//                             color: Color(0xff24B445),
//                             fontSize:Responsive.isSmallScreen(context)? width/18 : width/40,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w700,
//                           ),
//                           children: <TextSpan>[
//                             TextSpan(
//                               text: 'bank',
//                               style: TextStyle(
//                                 fontSize:Responsive.isSmallScreen(context)? width/18 : width/40,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w700,
//                                 fontFamily: 'Poppins',),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       child:RichText(
//                         text: TextSpan(
//                           text: 'Welcome back , ',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize:Responsive.isSmallScreen(context)? width/18 : width/40,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                           ),
//                           children: <TextSpan>[
//                             TextSpan(
//                               text: 'Grace',
//                               style: TextStyle(
//                                 fontSize:Responsive.isSmallScreen(context)? width/18 : width/40,
//                                 color:Color(0xff24B445),
//                                 fontWeight: FontWeight.w600,
//                                 fontFamily: 'Poppins',),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//
//
//                 child: Icon(
//                   Icons.notifications_none_outlined,
//                   color: Colors.black,
//                   size: 30,
//                 ),
//
//               ),
//             ],
//           ),
//
//           Stack(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(top: _mediaquery.size.height*0.130),
//                 height: _mediaquery.size.height*0.725,
//                 width: _mediaquery.size.width*1,
//                 decoration: BoxDecoration(
//                   color: Color(0xffADE3BA),
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//
//
//               ),
//
//               Center(
//                 child:Container(
//                   margin: EdgeInsets.only(top: _mediaquery.size.height*0.04),
//                   height: _mediaquery.size.height*0.720,
//                   width: _mediaquery.size.width*0.85,
//                   decoration: BoxDecoration(
//                     color: Color(0xffF7F7F7),
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//
//
//                 ),
//               ),
//
//
//               Center(
//                 child: Column(
//
//                   children: [
//                     InkWell(
//                       onTap: (){},
//                       child: Container(
//                         margin: EdgeInsets.only(top: _mediaquery.size.height*0.060),
//                         height: _mediaquery.size.height*0.09,
//                         width: _mediaquery.size.width*0.75,
//
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(25),
//                           color: Color(0xff24B445).withOpacity(0.41),
//                         ),
//
//
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Container(
//                               margin: EdgeInsets.only(left: _mediaquery.size.width*0.05),
//                               decoration: BoxDecoration(
//                                 color: Color(0xff0AC963),
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               height: _mediaquery.size.height*0.055,
//                               width: _mediaquery.size.width*0.1,
//                               child: Center(
//                                 child: Image(image: AssetImage("image/DeliveryTime.png"),height: _mediaquery.size.height*0.035,),
//                               ),
//                             ),
//
//                             Container(
//                               margin: EdgeInsets.only(left: _mediaquery.size.width*0.02),
//
//                               child: Column(
//
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("Recent Activity",
//                                     style: TextStyle(
//                                       fontSize: Responsive.isSmallScreen(context) ? width/ 40: width/90 ,
//                                       fontWeight: FontWeight.w700, fontFamily: 'Poppins', ),),
//                                   Text("You’ve uploaded a report pdf to the records",
//                                       style: TextStyle(
//                                         height:0.95,fontSize: Responsive.isSmallScreen(context) ? width/ 65: width/110,
//                                         fontWeight: FontWeight.w400, fontFamily: 'Poppins', )),
//                                   InkWell(
//                                       onTap: (){},
//                                       child: Text("View Records",style: TextStyle(
//                                           fontSize: Responsive.isSmallScreen(context) ? width/ 60: width/100,
//                                           fontWeight: FontWeight.w500, fontFamily: 'Poppins', color: Color(0xff24B445)))),
//
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//
//                       ),
//                     ),
//
//
//                     Center(
//                       child: Container(
//                         margin: EdgeInsets.only(top: _mediaquery.size.height*0.015),
//                         child:Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//
//                           children: [
//                             Container(
//                               margin: EdgeInsets.only(right: _mediaquery.size.width*0.020),
//                               child: Column(
//                                 children: [
//                                   InkWell(
//                                     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> FitnessData()),);},
//                                     child: Container(
//                                       margin: EdgeInsets.only(bottom: _mediaquery.size.width*0.04),
//
//                                       height: _mediaquery.size.height*0.25,
//                                       width:_mediaquery.size.width*0.35,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(25),
//                                         gradient: RadialGradient(
//                                           center: Alignment.center,
//                                           radius: 0.5,
//                                           colors: [
//                                             Color.fromRGBO(249, 249, 249, 0),
//                                             Color.fromRGBO(255, 158, 108, 0.17),
//                                           ],
//                                           stops: [0, 1],
//                                         ),
//                                       ),
//
//                                       child: Column(
//                                         mainAxisAlignment: MainAxisAlignment.center,
//                                         // crossAxisAlignment: CrossAxisAlignment.center,
//                                         children: [
//                                           Container(
//                                               margin: EdgeInsets.only(bottom: _mediaquery.size.height*0.02),
//                                               child: Center(child: Text("Fitness\n  Data",
//                                                 style: TextStyle(height: 1.2,
//                                                     fontSize: Responsive.isSmallScreen(context)? width/29 : width/50, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),))),
//                                           Container(
//
//                                               height:_mediaquery.size.height*0.11,
//                                               width:_mediaquery.size.width*0.20,
//                                               child: Image(image: AssetImage("image/Watch1.png")))
//                                         ],
//                                       ),
//
//
//
//                                     ),
//                                   ),
//                                   InkWell(
//                                     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> LifestyleDashboard(),));},
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(25),
//                                         gradient: RadialGradient(
//                                           center: Alignment(0.0, 0.0),
//                                           focal: Alignment(0.0, 0.0),
//                                           focalRadius: 0,
//                                           radius: 0.5,
//                                           colors: [
//                                             Color.fromRGBO(249, 249, 249, 0),
//                                             Color.fromRGBO(240, 245, 245, 0.51),
//                                             Color.fromRGBO(132, 203, 196, 0.37),
//                                           ],
//                                           stops: [0, 0.01, 1],
//                                         ),
//                                       ),
//                                       height: _mediaquery.size.height*0.20,
//                                       width:_mediaquery.size.width*0.35,
//
//                                       child: Column(
//                                         mainAxisAlignment: MainAxisAlignment.center,
//                                         children: [
//                                           Container(
//                                             child: Center(child: Text("Helath",
//                                               style: TextStyle(fontSize: Responsive.isSmallScreen(context)? width/29 : width/50,
//                                                   fontWeight: FontWeight.w600, fontFamily: 'Poppins'),)),
//                                           ),
//                                           Container(
//                                             child: Center(child: Text("Score",
//                                               style: TextStyle(height:0.99,fontSize: Responsive.isSmallScreen(context)? width/29 : width/50, fontWeight: FontWeight.w600,fontFamily: 'Poppins'),)),
//                                           ),
//                                           Center(
//                                             child: Container(
//                                               margin: EdgeInsets.only(top: _mediaquery.size.height*0.012),
//
//                                               height:_mediaquery.size.height*0.070,
//
//
//                                               child:Stack(
//                                                 children: [
//                                                   Center(child: Image(image: AssetImage("image/Polygon.png"))),
//                                                   Center(child: Text("80",
//                                                     style: TextStyle(color:Color(0xff2A312F),
//                                                         fontSize: Responsive.isSmallScreen(context)? width/35 : width/90,
//                                                         fontWeight: FontWeight.w600, fontFamily: 'Poppins'),)),
//                                                 ],
//
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//
//
//
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//
//                             Container(
//                               margin: EdgeInsets.only(left: _mediaquery.size.width*0.020),
//                               child: Column(
//                                 children: [
//                                   InkWell(
//                                     onTap: (){   Navigator.push(context, MaterialPageRoute(builder: (context)=> Symptoms(),));},
//                                     child: Container(
//                                       margin: EdgeInsets.only(bottom: _mediaquery.size.width*0.04),
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(25),
//                                         gradient: RadialGradient(
//                                           center: Alignment(0.0, 0.0),
//                                           focal: Alignment(0.0, 0.0),
//                                           focalRadius: 0,
//                                           radius: 0.5,
//                                           colors: [
//                                             Color.fromRGBO(249, 249, 249, 0),
//                                             Color.fromRGBO(250, 180, 0, 0.1),
//
//                                           ],
//                                           stops: [0, 1],
//                                         ),
//                                       ),
//                                       height: _mediaquery.size.height*0.20,
//                                       width:_mediaquery.size.width*0.35,
//                                       child:  Column(
//                                         mainAxisAlignment: MainAxisAlignment.center,
//                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                         children: [
//                                           Container(
//                                               child: Center(child: Text("       Any\n Symptoms !", style: TextStyle(height: 1.2,fontSize: Responsive.isSmallScreen(context)? width/29 : width/120, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),))),
//                                           Container(
//
//                                               height: _mediaquery.size.height*0.10,
//                                               width:_mediaquery.size.width*0.18,
//                                               child: Image(image: AssetImage("image/Sym.png")))
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   InkWell(
//                                     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> DoctorsZone(),));},
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(25),
//                                         gradient: RadialGradient(
//                                           center: Alignment(0.0, 0.0),
//                                           focal: Alignment(0.0, 0.0),
//                                           focalRadius: 0,
//                                           radius: 0.5,
//                                           colors: [
//                                             Color.fromRGBO(249, 249, 249, 0),
//                                             Color.fromRGBO(199, 236, 255, 0.35
//                                             ),
//
//                                           ],
//                                           stops: [0, 1],
//                                         ),
//                                       ),
//                                       height: _mediaquery.size.height*0.25,
//                                       width:_mediaquery.size.width*0.35,
//
//                                       child:
//                                       Column(
//                                         mainAxisAlignment: MainAxisAlignment.center,
//                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                         children: [
//                                           Container(
//                                               child: Center(child: Text("Doctor's\n  Zone", style: TextStyle(height: 1.2,fontSize: Responsive.isSmallScreen(context)? width/29 : width/120, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),))),
//                                           Container(
//
//                                               height:_mediaquery.size.height*0.10,
//                                               width:_mediaquery.size.width*0.25,
//                                               child: Image(image: AssetImage("image/DoctorZone.png")))
//                                         ],
//
//                                       ),
//
//
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//
//
//
//                     Container(
//                       margin: EdgeInsets.only(top: _mediaquery.size.height*0.015),
//                       height: _mediaquery.size.height*0.09,
//                       width: _mediaquery.size.width*0.75,
//
//                       decoration: BoxDecoration(
//                         color: Color(0xffECECEC),
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                       child: Row(
//                         children: [
//                           Container(
//                             margin: EdgeInsets.only(left: _mediaquery.size.width*0.03),
//                             height: _mediaquery.size.height*0.06,
//                             width: _mediaquery.size.width*0.12,
//                             decoration: BoxDecoration(
//                               color: Color(0xff1A5167),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 "0%",
//                                 style: TextStyle(color: Color(0xffFFFFFF), fontFamily: 'Poppins', fontSize: Responsive.isSmallScreen(context)? width/50 : width/100),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.only(left: _mediaquery.size.width*0.02),
//                             child: Text('Complete the remaining questions for\nbetter experience',
//                               style: TextStyle(fontSize: Responsive.isSmallScreen(context)? width/50 : width/100,
//                                   fontFamily: 'Poppins', fontWeight: FontWeight.w600),),
//                           ),
//                         ],
//                       ),
//
//                     ),
//
//
//                     Container(
//                       margin: EdgeInsets.only(top: _mediaquery.size.height*0.027),
//                       // height: Responsive.isMediumScreen(context)?_mediaquery.size.height*0.20 : _mediaquery.size.height*0.08,
//                       width: _mediaquery.size.width*0.85,
//
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           InkWell(
//                             onTap: (){},
//                             child: Container(
//                               margin: EdgeInsets.only( top:_mediaquery.size.width*0.02, bottom:_mediaquery.size.width*0.02,),
//                               child: Column(
//                                 children: [
//                                   Image(image: AssetImage("image/Home2.png"),
//                                     width: Responsive.isSmallScreen(context)? width/18 : width/50,),
//                                   Text("Home", style: TextStyle(
//                                       fontFamily: "Poppins",
//                                       //   height: Responsive.isSmallScreen(context)? 0.82 : 0.82,
//                                       fontSize:Responsive.isSmallScreen(context)? width/50 : width/100,
//                                       color: Color(0xff24B445) ),),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           InkWell(
//                             onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Records(),));},
//                             child: Container(
//                               margin: EdgeInsets.only(left:_mediaquery.size.width*0.2,
//                                 right:_mediaquery.size.width*0.2,
//                                 top:_mediaquery.size.width*0.02,
//                                 bottom:_mediaquery.size.width*0.02, ),
//                               child: Image(image: AssetImage('image/Records.png'),
//                                 width: Responsive.isSmallScreen(context)? width/18 : width/50,),
//                             ),
//                           ),
//                           InkWell(
//                             onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> voiceAssistant(),));},
//                             child: Container(
//                               margin: EdgeInsets.only( top:_mediaquery.size.width*0.02,bottom:_mediaquery.size.width*0.02, ),
//                               child: Image(image: AssetImage('image/Mic1.png'),   width: Responsive.isSmallScreen(context)? width/18 : width/50,),
//                             ),
//                           ),
//                         ],
//
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//             ],
//           ),
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//         ],
//       ),
//
//
//
//
//
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// class Screen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       child: Center(
//         child: Text('Screen 2'),
//       ),
//     );
//   }
// }
//
// class Screen3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green,
//       child: Center(
//         child: Text('Screen 3'),
//       ),
//     );
//   }
// }
//
//
//
// // Rest of the code remains the same...
//
//
//
//
//
//
//
//





// import 'package:flutter/material.dart';
//
// class ScrollableTabBar extends StatefulWidget {
//   @override
//   _ScrollableTabBarState createState() => _ScrollableTabBarState();
// }
//
// class _ScrollableTabBarState extends State<ScrollableTabBar> {
//   List<String> tabs = ['Tab 1', 'Tab 2', 'Tab 3', 'Tab 4', "gjhv bhnv hnb mvnb mn ,mn m,n m,n"];
//   int currentIndex = 0;
//   PageController _pageController = PageController();
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Scrollable Tab Bar'),
//       ),
//       body: Column(
//         children: [
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: tabs.map((text) {
//                 int index = tabs.indexOf(text);
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       currentIndex = index;
//                     });
//                     _pageController.animateToPage(
//                       index,
//                       duration: Duration(milliseconds: 300),
//                       curve: Curves.easeInOut,
//                     );
//                   },
//                   child: Container(
//                     padding: EdgeInsets.all(10),
//                     color: currentIndex == index ? Colors.blue : Colors.grey,
//                     child: Text(
//                       text,
//                       style: TextStyle(fontSize: 16, color: Colors.white),
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ),
//           Expanded(
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: tabs.length,
//               onPageChanged: (index) {
//                 setState(() {
//                   currentIndex = index;
//                 });
//               },
//               itemBuilder: (context, index) {
//                 return Container(
//                   alignment: Alignment.center,
//                   child: Text(
//                     tabs[index],
//                     style: TextStyle(fontSize: 24),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// // import 'package:flutter/material.dart';
// //
// // class ScrollableTabBar extends StatefulWidget {
// //   @override
// //   _ScrollableTabBarState createState() => _ScrollableTabBarState();
// // }
// //
// // class _ScrollableTabBarState extends State<ScrollableTabBar> {
// //   List<String> tabs = ['Tab 1', 'Tab 2', 'Tab 3', 'Tab 4'];
// //   int currentIndex = 0;
// //   PageController _pageController = PageController();
// //
// //   @override
// //   void dispose() {
// //     _pageController.dispose();
// //     super.dispose();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Scrollable Tab Bar'),
// //       ),
// //       body: Column(
// //         children: [
// //           Container(
// //             height: 48,
// //             child: ListView.builder(
// //               scrollDirection: Axis.horizontal,
// //               itemCount: tabs.length,
// //               itemBuilder: (context, index) {
// //                 return GestureDetector(
// //                   onTap: () {
// //                     setState(() {
// //                       currentIndex = index;
// //                     });
// //                     _pageController.animateToPage(
// //                       index,
// //                       duration: Duration(milliseconds: 300),
// //                       curve: Curves.easeInOut,
// //                     );
// //                   },
// //                   child: Container(
// //                     padding: EdgeInsets.all(10),
// //                     color: currentIndex == index ? Colors.blue : Colors.grey,
// //                     child: Text(
// //                       tabs[index],
// //                       style: TextStyle(fontSize: 16, color: Colors.white),
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //           Expanded(
// //             child: PageView.builder(
// //               controller: _pageController,
// //               itemCount: tabs.length,
// //               onPageChanged: (index) {
// //                 setState(() {
// //                   currentIndex = index;
// //                 });
// //               },
// //               itemBuilder: (context, index) {
// //                 return Container(
// //                   alignment: Alignment.center,
// //                   child: Text(
// //                     tabs[index],
// //                     style: TextStyle(fontSize: 24),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// // // import 'package:flutter/material.dart';
// // //
// // // class Login extends StatefulWidget{
// // //   @override
// // //   State<StatefulWidget> createState() {
// // //     return new LoginState();
// // //   }
// // // }
// // //
// // // class LoginState extends State<Login>{
// // //   final TextEditingController _userController = new TextEditingController();
// // //   final TextEditingController _passwordController = new TextEditingController();
// // //   String _welcomeString = "";
// // //   void _erase(){
// // //     setState(() {
// // //       _userController.clear();
// // //       _passwordController.clear();
// // //     });
// // //   }
// // //
// // //   void _showWelcome(){
// // //     setState(() {
// // //       if(_userController.text.isNotEmpty && _passwordController.text.isNotEmpty){
// // //         _welcomeString = _userController.text;
// // //       } else
// // //         _welcomeString = "nothing";
// // //     });
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //
// // //     return new Scaffold(
// // //       appBar: new AppBar(
// // //         title: new Text("Login"),
// // //         centerTitle:true,
// // //         backgroundColor: Colors.deepOrange,
// // //       ),
// // //       backgroundColor: Colors.white,
// // //
// // //       body: new Container(
// // //         alignment: Alignment.topCenter,
// // //         child: new ListView(
// // //           children: [
// // //             new Image.asset('images/happiness.png',
// // //               width: 100.0,
// // //               height: 100.0,
// // //               color: Colors.deepOrange.shade500,),
// // //             //form
// // //             new Padding(padding: EdgeInsets.all(50.0),),
// // //             new Container(
// // //               height: 200.0,
// // //               width: 380.0,
// // //               color: Colors.black54,
// // //               child: new Column(
// // //                 children: [
// // //                   new TextField(
// // //                     controller: _userController,
// // //                     decoration: new InputDecoration(
// // //                       hintText: 'Username',
// // //                       icon: new Icon(Icons.person),
// // //                     ),
// // //                   ),
// // //                   new TextField(
// // //                     controller: _passwordController,
// // //                     decoration: new InputDecoration(
// // //                       hintText: 'Password',
// // //                       icon: new Icon(Icons.lock),
// // //                     ),
// // //                     obscureText: true,
// // //                   ),
// // //
// // //
// // //                   new Padding(padding: new EdgeInsets.all(10.5)),
// // //                   new Center(
// // //                     child: new Row(
// // //                       children: [
// // //                         new Container(
// // //                           margin: const EdgeInsets.only(left:38.0),
// // //                           child: new ElevatedButton(
// // //                             style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
// // //                             onPressed: _showWelcome,
// // //                             child: new Text("Login",style: new TextStyle(color: Colors.white, fontSize: 16.8),),
// // //
// // //                           ),
// // //                         ),
// // //
// // //                         new Container(
// // //                           margin: const EdgeInsets.only(left:120.0),
// // //                           child: new ElevatedButton(
// // //                             style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
// // //                             onPressed: _erase,
// // //                             child: new Text("clear",style: new TextStyle(color: Colors.white, fontSize: 16.8),),
// // //                           ),
// // //                         ),
// // //
// // //
// // //                       ],
// // //                     ),
// // //                   )
// // //                 ],
// // //               ),
// // //             ),
// // //             new Padding(padding: EdgeInsets.all(16.8),),
// // //             new Row(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: [
// // //                 new Text(" Hello, $_welcomeString",
// // //                   style: new TextStyle(fontSize: 19.4, fontWeight: FontWeight.w800,color: Colors.blueAccent),),
// // //               ],
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // //
// // // }