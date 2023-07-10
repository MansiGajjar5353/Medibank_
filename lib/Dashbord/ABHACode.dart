import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class ABHACode extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ABHACodeState();
  }
}

class ABHACodeState extends State<ABHACode> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:
            Responsive.isSmallScreen(context) ? width / 10 : width / 10,
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.green,
          size: Responsive.isSmallScreen(context) ? width / 20 : width / 25,
        ),
        leading: Align(
          alignment: Alignment.bottomLeft,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const BackButtonIcon(),
          ),
        ),
        title: Center(
          child: Container(
              padding: EdgeInsets.only(right: 30),
              child: Image(
                  image: AssetImage(
                    "image/MedibankLOGO.png",
                  ),
                  width: Responsive.isSmallScreen(context)
                      ? width / 2.3
                      : width / 4)),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              width: Responsive.isSmallScreen(context) ? width / 4 : width / 7,
              child: Image(
                image: AssetImage("image/AbhaDP.png"),
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Prathvi",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 23
                          : width / 60,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 2),
                  width: Responsive.isSmallScreen(context)
                      ? width / 22
                      : width / 40,
                  child: Image(
                    image: AssetImage(
                      "image/GreenAerrow.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
                //  width: Responsive.isSmallScreen(context)? width/1.35 : width/1.8,
                child: Text(
              "Female, 23 years",
              style: TextStyle(
                color: Color(0xff929292),
                fontSize:
                    Responsive.isSmallScreen(context) ? width / 33 : width / 60,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            )),
          ),
          Center(
            child: Container(
                margin: EdgeInsets.all(30),
                child: Image(
                  image: AssetImage("image/QR.png"),
                )),
          ),
          Center(
            child: Container(

                //  width: Responsive.isSmallScreen(context)? width/1.35 : width/1.8,
                child: Text(
              "Name@abdm",
              style: TextStyle(
                color: Color(0xff000000),
                fontSize:
                    Responsive.isSmallScreen(context) ? width / 28 : width / 60,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            )),
          ),
          Center(
            child: Container(

                //  width: Responsive.isSmallScreen(context)? width/1.35 : width/1.8,
                child: Text(
              "View your ABHA card",
              style: TextStyle(
                color: Color(0xff24B445),
                fontSize:
                    Responsive.isSmallScreen(context) ? width / 28 : width / 60,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            )),
          ),
          Column(
            children: [
              Container(
                width: _mediaquery.size.width * 0.6,
                margin: EdgeInsets.only(top: 25),
                child: InkWell(
                  onTap: () {
                    //    Navigator.push(context, MaterialPageRoute(builder: (context)=>AbhaCreate(),));
                  },
                  child: Container(
                    height: 45,
                    width: _mediaquery.size.width * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Color(0xff24B445),
                    ),
                    child: Center(
                        child: Text(
                      "Scan QR code",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: 17,
                          fontWeight: FontWeight.w900),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
