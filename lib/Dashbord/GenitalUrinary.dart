import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/EndocrineGlandular.dart';
import 'package:project_signup_page/Dashbord/Questionnaires.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class GenitalUrinary extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GenitalUrinaryState();
  }
}

class GenitalUrinaryState extends State<GenitalUrinary> {
  bool showTextfield = false;
  int radioValue = 1;
  int radioValue2 = 1;
  int radioValue3 = 1;
  int radioValue4 = 1;
  int radioValue5 = 1;

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

  void handleRadioValueChanged2(int? value) {
    setState(() {
      radioValue2 = value!;

      switch (radioValue2) {
        case 0:
          break;

        case 1:
          break;

        case 2:
          break;
      }
    });
  }

  void handleRadioValueChanged3(int? value) {
    setState(() {
      radioValue3 = value!;

      switch (radioValue3) {
        case 0:
          break;

        case 1:
          break;

        case 2:
          break;
      }
    });
  }

  void handleRadioValueChanged4(int? value) {
    setState(() {
      radioValue4 = value!;

      switch (radioValue4) {
        case 0:
          break;

        case 1:
          break;

        case 2:
          break;
      }
    });
  }

  void handleRadioValueChanged5(int? value) {
    setState(() {
      radioValue5 = value!;

      switch (radioValue5) {
        case 0:
          break;

        case 1:
          break;

        case 2:
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
            builder: (context) => EndocrineGlandular(),
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
                        "Genital/Urinary",
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
                      child: Image.asset('image/skinn.png',
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
          margin: EdgeInsets.only(left: 20, top: 40),
          child: Text(
            "Do you have Uninary problems?",
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
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Pain",
                            style: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.45),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 30
                                    : width / 40),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Radio<int>(
                                      activeColor: Colors.green,
                                      value: 0,
                                      groupValue: radioValue2,
                                      onChanged: handleRadioValueChanged2),
                                  Text(
                                    "Yes",
                                    style: TextStyle(
                                        color:
                                            Color(0xff4F555A).withOpacity(0.5),
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 30
                                                : width / 40),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Radio<int>(
                                      activeColor: Colors.green,
                                      value: 1,
                                      groupValue: radioValue2,
                                      onChanged: handleRadioValueChanged2),
                                  Text(
                                    "No",
                                    style: new TextStyle(
                                        color:
                                            Color(0xff4F555A).withOpacity(0.5),
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 30
                                                : width / 40),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              "Frequency",
                              style: TextStyle(
                                  color: Color(0xff4F555A).withOpacity(0.45),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 30
                                      : width / 40),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Radio<int>(
                                      activeColor: Colors.green,
                                      value: 0,
                                      groupValue: radioValue3,
                                      onChanged: handleRadioValueChanged3),
                                  Text(
                                    "High",
                                    style: TextStyle(
                                        color:
                                            Color(0xff4F555A).withOpacity(0.5),
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 30
                                                : width / 40),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Radio<int>(
                                      activeColor: Colors.green,
                                      value: 1,
                                      groupValue: radioValue3,
                                      onChanged: handleRadioValueChanged3),
                                  Text(
                                    "Medium",
                                    style: new TextStyle(
                                        color:
                                            Color(0xff4F555A).withOpacity(0.5),
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 30
                                                : width / 40),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Radio<int>(
                                      activeColor: Colors.green,
                                      value: 2,
                                      groupValue: radioValue3,
                                      onChanged: handleRadioValueChanged3),
                                  Text(
                                    "Low",
                                    style: TextStyle(
                                        color:
                                            Color(0xff4F555A).withOpacity(0.5),
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 30
                                                : width / 40),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Difficulty in control urine",
                            style: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.45),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 30
                                    : width / 40),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Radio<int>(
                                      activeColor: Colors.green,
                                      value: 0,
                                      groupValue: radioValue4,
                                      onChanged: handleRadioValueChanged4),
                                  Text(
                                    "Yes",
                                    style: TextStyle(
                                        color:
                                            Color(0xff4F555A).withOpacity(0.5),
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 30
                                                : width / 40),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Radio<int>(
                                      activeColor: Colors.green,
                                      value: 1,
                                      groupValue: radioValue4,
                                      onChanged: handleRadioValueChanged4),
                                  Text(
                                    "No",
                                    style: new TextStyle(
                                        color:
                                            Color(0xff4F555A).withOpacity(0.5),
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 30
                                                : width / 40),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )),
        Container(
          margin: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Kidney stones",
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
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Radio<int>(
                      activeColor: Colors.green,
                      value: 0,
                      groupValue: radioValue5,
                      onChanged: handleRadioValueChanged5),
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
                      groupValue: radioValue5,
                      onChanged: handleRadioValueChanged5),
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
