import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Onbording/AccessCode.dart';

import '../Onbording/Responsive.dart';

class DashbordLifeStyle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DashbordLifeStyleState();
  }
}

class _DashbordLifeStyleState extends State<DashbordLifeStyle> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        // default is 56

        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          padding: EdgeInsets.only(top: 40),
          icon: const BackButtonIcon(),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.only(right: 30),
                child: Center(
                  child: Image(
                      image: AssetImage(
                        "image/MedibankLOGO.png",
                      ),
                      width: Responsive.isSmallScreen(context)
                          ? width / 2.3
                          : width / 4),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Health & lifestyle",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavBarApp(),
                        ));
                  },
                  child: Image(
                    image: AssetImage("image/DashboardImage.png"),
                    height: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 20),
                      height: Responsive.isSmallScreen(context)
                          ? _mediaquery.size.height * 0.20
                          : _mediaquery.size.height * 0.27,
                      width: Responsive.isSmallScreen(context)
                          ? width / 2.5
                          : width / 5,
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height:
                                  Responsive.isSmallScreen(context) ? 50 : 60,
                              width:
                                  Responsive.isSmallScreen(context) ? 50 : 60,
                              child: Image(
                                image: AssetImage("image/AccessCode1.png"),
                                height:
                                    Responsive.isSmallScreen(context) ? 20 : 30,
                                width:
                                    Responsive.isSmallScreen(context) ? 30 : 40,
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                          ),
                          Text(
                            "Health Summary",
                            style: TextStyle(
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 60,
                              color: Color(0xff000000),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AccessCode(),
                          ));
                    },
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
