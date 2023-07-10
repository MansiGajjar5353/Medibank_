import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/ForWomen.dart';
import 'package:project_signup_page/Dashbord/Questionnaires.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class ForMan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ForManState();
  }
}

class ForManState extends State<ForMan> {
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

  int radioValue = 1;
  bool showTextfield = false;

  void handleRadioValueChanged(int? value) {
    setState(() {
      radioValue = value!;

      switch (radioValue) {
        case 0:
          showTextfield = true;
          break;

        case 1:
          showTextfield = false;
          break;

        case 2:
          showTextfield = false;
          break;
      }
    });
  }

  Color imageColor = Color(0xff4F555A).withOpacity(0.5);
  Color buttonColor = Colors.black; // Initial color of the button
  bool isButtonPressed = false;

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
            builder: (context) => ForWomen(),
          ));
      // Perform navigation after the delay
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
                      //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                      child: RichText(
                        text: TextSpan(
                          text: "For ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 17
                                : width / 30,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Men',
                              style: TextStyle(
                                color: Color(0xff24B445),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                      ),
                      // child:Text("We need to verify your Number?",style: new TextStyle(height:0.90,color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),
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
                      child: Image.asset('image/Boss.png',
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
          margin: EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Text(
            "Do you have prostate problems?",
            style: TextStyle(
              color: Color(0xff4F555A).withOpacity(0.45),
              fontSize:
                  Responsive.isSmallScreen(context) ? width / 28 : width / 50,
              fontFamily: "Poppins",
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 40),
          child: Row(
            children: <Widget>[
              Row(
                children: [
                  Radio<int>(
                      activeColor: Colors.green,
                      value: 0,
                      groupValue: radioValue,
                      onChanged: handleRadioValueChanged),
                  Text(
                    "Yes",
                    style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio<int>(
                      activeColor: Colors.green,
                      value: 1,
                      groupValue: radioValue,
                      onChanged: handleRadioValueChanged),
                  Text(
                    "No",
                    style: new TextStyle(
                        color: Color(0xff4F555A).withOpacity(0.5)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Visibility(
          visible: showTextfield,
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 10),
            child: Column(
              children: [
                ElevatedButton(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    height: 55,
                    //  width: Responsive.isSmallScreen(context)? width/1.5 : width/4.2,

                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Difficulty in ejaculation",
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
                      borderRadius: BorderRadius.circular(30.0),
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
                    height: 55,
                    // width: Responsive.isSmallScreen(context)? width/1.5 : width/4.2,
                    child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        //   Image(image: AssetImage("image/Drugs.png"),),
                        Text(
                          "Discharge from penis",
                          style: TextStyle(
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 25
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
                      borderRadius: BorderRadius.circular(30.0),
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
                    height: 55,

                    // height: Responsive.isSmallScreen(context)? 40 : 80,
                    //width: Responsive.isSmallScreen(context)? width/1.5 : width/4.2,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        //  Image(image: AssetImage("image/Venereal.png"),),
                        Text(
                          "Pain or lump in scrotum or testicles",
                          style: TextStyle(
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 25
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
                      borderRadius: BorderRadius.circular(30.0),
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
                    height: 55,
                    // width: Responsive.isSmallScreen(context)? width/1.5 : width/4.2,
                    child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        //  Image(image: AssetImage("image/TB.png"),),
                        Text(
                          "other",
                          style: TextStyle(
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 25
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
                      borderRadius: BorderRadius.circular(30.0),
                      //    side: BorderSide(width:1,  color: _isSelected[4] ? Color(0xff24B445): Colors.transparent)
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _isSelected[4] = !_isSelected[4];
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 80)),
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
