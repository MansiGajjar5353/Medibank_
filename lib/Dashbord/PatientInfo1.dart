import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/PatientInfo2.dart';
import 'package:project_signup_page/Dashbord/Questionnaires.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class PatientInfo1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PatientInfo1State();
  }
}

class PatientInfo1State extends State<PatientInfo1> {
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
            builder: (context) => PatientInfo2(),
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
                      child: Text(
                        "General ",
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 15
                                : width / 30,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      //margin: EdgeInsets.only(left:30,),
                      child: Text(
                        "Information ",
                        style: new TextStyle(
                            height: 0.90,
                            color: Colors.green,
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 15
                                : width / 30,
                            fontWeight: FontWeight.w300,
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
                      child: Image.asset('image/i.png',
                          height: _mediaquery.size.height * 0.080),
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
                              text: '4/12',
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
        Center(
          child: Container(
            margin: EdgeInsets.only(left: 0, top: 40.0),
            //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
            child: RichText(
              text: TextSpan(
                text: "Patient ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Responsive.isSmallScreen(context)
                      ? width / 16
                      : width / 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Information',
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
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 20.0),
          child: Text(
            "Birthplace",
            style: TextStyle(
                color: Color(0xff4F555A).withOpacity(0.5),
                fontSize:
                    Responsive.isSmallScreen(context) ? width / 22 : width / 30,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          ),
        ),
        ButtonGroup(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  top: 20,
                ),
                child: Text(
                  "Are you empolyee?",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.45),
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 22
                        : width / 30,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 0,
                  right: 10,
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<int>(
                            activeColor: Colors.green,
                            value: 0,
                            groupValue: radioValue,
                            onChanged: handleRadioValueChanged),
                        Text(
                          "Yes",
                          softWrap: true,
                          style: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 22
                                : width / 30,
                          ),
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
                          softWrap: true,
                          style: new TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 22
                                : width / 30,
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
        Visibility(
          visible: showTextfield,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Occupation",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.45),
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 22
                        : width / 30,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ButtonGroup2(),
            ],
          ),
        ),
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

enum ButtonState {
  Button1,
  Button2,
  Button3,
  Button4,
  Button5,
  Button6,
  Button7,
  Button8,
  Button9
}

class ButtonGroup extends StatefulWidget {
  @override
  _ButtonGroupState createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                onButtonPressed(ButtonState.Button1);
              },
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage("image/Maharashtra.png"),
                              height: 70),
                          Container(
                            child: Text(
                              "Maharashtra",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: selectedButton == ButtonState.Button1
                                      ? Color(0xff24B445)
                                      : Color(0xff4F555A).withOpacity(0.50)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(85, 2),
                      child: Visibility(
                        visible: selectedButton == ButtonState.Button1
                            ? true
                            : false,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0xffCECECE),
                                  spreadRadius: 2)
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Image.asset(
                                "image/Checkbox.png",
                                height: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
              left: 10,
            )),
            InkWell(
              onTap: () {
                onButtonPressed(ButtonState.Button2);
              },
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage("image/Rajasthan.png"),
                              height: 70),
                          Container(
                            child: Text(
                              "Rajasthan",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: selectedButton == ButtonState.Button2
                                      ? Color(0xff24B445)
                                      : Color(0xff4F555A).withOpacity(0.50)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(85, 2),
                      child: Visibility(
                        visible: selectedButton == ButtonState.Button2
                            ? true
                            : false,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0xffCECECE),
                                  spreadRadius: 2)
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Image.asset(
                                "image/Checkbox.png",
                                height: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
              left: 10,
            )),
            InkWell(
              onTap: () {
                onButtonPressed(ButtonState.Button3);
              },
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage("image/Gujarat.png"),
                              height: 70),
                          Container(
                            child: Text(
                              "Gujarat",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: selectedButton == ButtonState.Button3
                                      ? Color(0xff24B445)
                                      : Color(0xff4F555A).withOpacity(0.50)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(85, 2),
                      child: Visibility(
                        visible: selectedButton == ButtonState.Button3
                            ? true
                            : false,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0xffCECECE),
                                  spreadRadius: 2)
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Image.asset(
                                "image/Checkbox.png",
                                height: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
              left: 10,
            )),
            InkWell(
              onTap: () {
                onButtonPressed(ButtonState.Button4);
              },
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage("image/Maharashtra.png"),
                              height: 70),
                          Container(
                            child: Text(
                              "Gujarat",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: selectedButton == ButtonState.Button4
                                      ? Color(0xff24B445)
                                      : Color(0xff4F555A).withOpacity(0.50)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(85, 2),
                      child: Visibility(
                        visible: selectedButton == ButtonState.Button4
                            ? true
                            : false,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0xffCECECE),
                                  spreadRadius: 2)
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Image.asset(
                                "image/Checkbox.png",
                                height: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
              left: 10,
            )),
            InkWell(
              onTap: () {
                onButtonPressed(ButtonState.Button5);
              },
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage("image/Maharashtra.png"),
                              height: 70),
                          Container(
                            child: Text(
                              "Gujarat",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: selectedButton == ButtonState.Button5
                                      ? Color(0xff24B445)
                                      : Color(0xff4F555A).withOpacity(0.50)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(85, 2),
                      child: Visibility(
                        visible: selectedButton == ButtonState.Button5
                            ? true
                            : false,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0xffCECECE),
                                  spreadRadius: 2)
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Image.asset(
                                "image/Checkbox.png",
                                height: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
              left: 10,
            )),
            InkWell(
              onTap: () {
                onButtonPressed(ButtonState.Button6);
              },
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage("image/Maharashtra.png"),
                              height: 70),
                          Container(
                            child: Text(
                              "Gujarat",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: selectedButton == ButtonState.Button6
                                      ? Color(0xff24B445)
                                      : Color(0xff4F555A).withOpacity(0.50)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(85, 2),
                      child: Visibility(
                        visible: selectedButton == ButtonState.Button6
                            ? true
                            : false,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0xffCECECE),
                                  spreadRadius: 2)
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Image.asset(
                                "image/Checkbox.png",
                                height: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
              left: 10,
            )),
            InkWell(
              onTap: () {
                onButtonPressed(ButtonState.Button7);
              },
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage("image/Maharashtra.png"),
                              height: 70),
                          Container(
                            child: Text(
                              "Gujarat",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: selectedButton == ButtonState.Button7
                                      ? Color(0xff24B445)
                                      : Color(0xff4F555A).withOpacity(0.50)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(85, 2),
                      child: Visibility(
                        visible: selectedButton == ButtonState.Button7
                            ? true
                            : false,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0xffCECECE),
                                  spreadRadius: 2)
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Image.asset(
                                "image/Checkbox.png",
                                height: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
              left: 10,
            )),
            InkWell(
              onTap: () {
                onButtonPressed(ButtonState.Button8);
              },
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage("image/Maharashtra.png"),
                              height: 70),
                          Container(
                            child: Text(
                              "Gujarat",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: selectedButton == ButtonState.Button8
                                      ? Color(0xff24B445)
                                      : Color(0xff4F555A).withOpacity(0.50)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(85, 2),
                      child: Visibility(
                        visible: selectedButton == ButtonState.Button8
                            ? true
                            : false,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0xffCECECE),
                                  spreadRadius: 2)
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Image.asset(
                                "image/Checkbox.png",
                                height: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onButtonPressed(ButtonState buttonState) {
    setState(() {
      selectedButton = buttonState;
    });
  }
}

enum ButtonState2 {
  Button1,
  Button2,
}

class ButtonGroup2 extends StatefulWidget {
  @override
  _ButtonGroupState2 createState() => _ButtonGroupState2();
}

class _ButtonGroupState2 extends State<ButtonGroup2> {
  ButtonState2 selectedButton = ButtonState2.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              onButtonPressed(ButtonState2.Button1);
            },
            child: Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                color: Color(0xffF9F9F9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                            image: AssetImage("image/Employed.png"),
                            height: 70),
                        Container(
                          child: Text(
                            "Employed",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: selectedButton == ButtonState2.Button1
                                    ? Color(0xff24B445)
                                    : Color(0xff4F555A).withOpacity(0.50)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(85, 2),
                    child: Visibility(
                      visible:
                          selectedButton == ButtonState2.Button1 ? true : false,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 0,
                                color: Color(0xffCECECE),
                                spreadRadius: 2)
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Image.asset(
                              "image/Checkbox.png",
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          InkWell(
            onTap: () {
              onButtonPressed(ButtonState2.Button2);
            },
            child: Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                color: Color(0xffF9F9F9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                            image: AssetImage("image/Retired.png"), height: 60),
                        Container(
                          child: Text(
                            "Retired",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: selectedButton == ButtonState2.Button2
                                    ? Color(0xff24B445)
                                    : Color(0xff4F555A).withOpacity(0.50)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(85, 2),
                    child: Visibility(
                      visible:
                          selectedButton == ButtonState2.Button2 ? true : false,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 0,
                                color: Color(0xffCECECE),
                                spreadRadius: 2)
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Image.asset(
                              "image/Checkbox.png",
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onButtonPressed(ButtonState2 buttonState) {
    setState(() {
      selectedButton = buttonState;
    });
  }
}
