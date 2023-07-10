import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/GenitalUrinary.dart';
import 'package:project_signup_page/Dashbord/Questionnaires.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class JointsMuscleProblem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return JointsMuscleProblemState();
  }
}

class JointsMuscleProblemState extends State<JointsMuscleProblem> {
  List<bool> _isSelected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ]; // Track the selection of each button
  bool isselected = false;
  Color imageColor = Color(0xff4F555A).withOpacity(0.5);
  Color buttonColor = Colors.black; // Initial color of the button
  bool isButtonPressed = false;

  void onselected() {
    setState(() {
      _isSelected[7] = !_isSelected[7];
      isselected = !isselected;
    });
  }

  void handleButtonPress() {
    setState(() {
      buttonColor = Colors.green; // Change the color to your desired value
      isButtonPressed = true;
    });

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        buttonColor =
            Colors.green; // Change the color back to the original value
        isButtonPressed = false;
      });

      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GenitalUrinary(),
          ));
    });
  }

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
        title: Align(
          alignment: Alignment.center,
          child: Image(
              image: AssetImage(
                "image/MedibankLOGO.png",
              ),
              width:
                  Responsive.isSmallScreen(context) ? width / 2.3 : width / 4),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(
                  bottom: Responsive.isSmallScreen(context)
                      ? width / 80
                      : width / 100,
                  right: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Questionnaires(),
                      ));
                },
                child: Image(
                  image: AssetImage("image/DashboardImage.png"),
                  height: Responsive.isSmallScreen(context)
                      ? width / 15
                      : width / 30,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(children: [
        Container(
          // height: _mediaquery.size.height*0.13,
          margin: EdgeInsets.only(left: 0, top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Text(
                        "Joints / Muscle",
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 30,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Text(
                        "Problem",
                        style: new TextStyle(
                            color: Color(0xff24B445),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 30,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Text(
                        "Note: minim mollit non deserunt ullamco ",
                        style: new TextStyle(
                            color: Color(0xff929292),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 46
                                : width / 60,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Text(
                        "est sit aliqua dolor do amet sint. ",
                        style: new TextStyle(
                            color: Color(0xff929292),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 46
                                : width / 60,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('image/muscle.png',
                          height: _mediaquery.size.height * 0.060),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: _mediaquery.size.height * 0.01),
                      child: RichText(
                        text: TextSpan(
                          text: 'category ',
                          style: TextStyle(
                            color: Color(0xff929292),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 35
                                : width / 60,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '1/2',
                              style: TextStyle(
                                color: Color(0xff24B445),
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
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
          margin: EdgeInsets.only(left: 25, right: 25, top: 30),
          child: Column(
            children: [
              ElevatedButton(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  height: 70,
                  //  width: Responsive.isSmallScreen(context)? width/1.5 : width/4.2,

                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Pains or stiffness that limit mobility",
                        softWrap: true,
                        style: TextStyle(
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 25
                              : width / 30,
                          color: _isSelected[0]
                              ? Color(0xff24B445)
                              : Color(0xff4F555A).withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary:
                      _isSelected[0] ? Color(0xffADE3BA) : Color(0xffF7F7F7),
                  onPrimary: _isSelected[0]
                      ? Color(0xffFFFFFF)
                      : Color(0xff4F555A).withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    // side: BorderSide(width:1,  color: _isSelected[0] ? Color(0xff24B445): Colors.transparent)
                  ),
                  //  onPrimary: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _isSelected[0] = !_isSelected[0];
                  });
                },
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  height: 70,
                  // width: Responsive.isSmallScreen(context)? width/1.5 : width/4.2,
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      //   Image(image: AssetImage("image/Drugs.png"),),
                      Text(
                        "Swelling, redness or deformity",
                        style: TextStyle(
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 24
                              : width / 30,
                          color: _isSelected[1]
                              ? Color(0xff24B445)
                              : Color(0xff4F555A).withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary:
                      _isSelected[1] ? Color(0xffADE3BA) : Color(0xffF7F7F7),
                  onPrimary: _isSelected[1]
                      ? Color(0xffFFFFFF)
                      : Color(0xff4F555A).withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    // side: BorderSide(width:1,  color: _isSelected[1] ? Color(0xff24B445): Colors.transparent)
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _isSelected[1] = !_isSelected[1];
                  });
                },
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  height: 70,

                  // height: Responsive.isSmallScreen(context)? 40 : 80,
                  //width: Responsive.isSmallScreen(context)? width/1.5 : width/4.2,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      //  Image(image: AssetImage("image/Venereal.png"),),
                      Text(
                        "Back pain",
                        style: TextStyle(
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 24
                              : width / 30,
                          color: _isSelected[3]
                              ? Color(0xff24B445)
                              : Color(0xff4F555A).withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary:
                      _isSelected[3] ? Color(0xffADE3BA) : Color(0xffF7F7F7),
                  onPrimary: _isSelected[3]
                      ? Color(0xffFFFFFF)
                      : Color(0xff4F555A).withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    //side: BorderSide(width:1,  color: _isSelected[3] ? Color(0xff24B445): Colors.transparent)
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _isSelected[3] = !_isSelected[3];
                  });
                },
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  height: 70,
                  // width: Responsive.isSmallScreen(context)? width/1.5 : width/4.2,
                  child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      //  Image(image: AssetImage("image/TB.png"),),
                      Text(
                        "Had tuberculosis peneumonia?",
                        style: TextStyle(
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 24
                              : width / 30,
                          color: _isSelected[4]
                              ? Color(0xff24B445)
                              : Color(0xff4F555A).withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary:
                      _isSelected[4] ? Color(0xffADE3BA) : Color(0xffF7F7F7),
                  onPrimary: _isSelected[4]
                      ? Color(0xffFFFFFF)
                      : Color(0xff4F555A).withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    //    side: BorderSide(width:1,  color: _isSelected[4] ? Color(0xff24B445): Colors.transparent)
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _isSelected[4] = !_isSelected[4];
                  });
                },
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  height: 70,
                  //  width: Responsive.isSmallScreen(context)? width/1.5 : width/4.2,

                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      //   Image(image: AssetImage("image/HIV.png"),),
                      Text(
                        "Osteoporosis",
                        style: TextStyle(
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 24
                              : width / 30,
                          color: _isSelected[6]
                              ? Color(0xff24B445)
                              : Color(0xff4F555A).withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary:
                      _isSelected[6] ? Color(0xffADE3BA) : Color(0xffF7F7F7),
                  onPrimary: _isSelected[6]
                      ? Color(0xffFFFFFF)
                      : Color(0xff4F555A).withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    //  side: BorderSide(width:1,  color: _isSelected[6] ? Color(0xff24B445): Colors.transparent)
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _isSelected[6] = !_isSelected[6];
                  });
                },
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Center(
          child: Container(
            height: _mediaquery.size.height * 0.070,
            width:
                Responsive.isSmallScreen(context) ? width / 2.5 : width / 3.5,
            margin: EdgeInsets.only(top: _mediaquery.size.height * 0.02),
            child: ElevatedButton(
              onPressed: handleButtonPress,
              child: Image.asset('image/AerrowRight.png',
                  color: isButtonPressed ? Colors.black : imageColor,
                  height: _mediaquery.size.height * 0.04),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isButtonPressed ? buttonColor : Color(0xffF9F9F9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Skip to ",
                style: TextStyle(
                  color: Color(0xffACADAC),
                  fontSize: Responsive.isSmallScreen(context)
                      ? width / 30
                      : width / 45,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBarApp(),
                      ));
                },
                child: Text(
                  "Dashboard",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 30
                        : width / 45,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
      ]),
    );
  }
}
