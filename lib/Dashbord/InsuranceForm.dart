import "package:flutter/material.dart";
import 'package:project_signup_page/Dashbord/BookingConfirm.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class InsuranceForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InsuranceFormState();
  }
}

class InsuranceFormState extends State<InsuranceForm> {
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
            builder: (context) => BookingConfirm(),
          ));
      // Navigator.push(context,MaterialPageRoute(builder: (context)=>InsuranceList(),));
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
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        title: Text(
          "Insurance",
          style: TextStyle(
              color: Color(0xff000000),
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: RichText(
              text: TextSpan(
                text: "Enter ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Responsive.isSmallScreen(context)
                      ? width / 17
                      : width / 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Insurance',
                    style: TextStyle(
                      color: Color(0xff24B445),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Insurance company name",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.5),
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 28
                        : width / 60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.2
                      : width / 2,
                  height: 55,
                  child: TextField(
//
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Company name",
                      hintStyle:
                          TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.2
                      : width / 2,
                  height: 55,
                  child: TextField(
//
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Policy date",
                      hintStyle:
                          TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.2
                      : width / 2,
                  height: 55,
                  child: TextField(
//
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Expiry date",
                      hintStyle:
                          TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              width: Responsive.isSmallScreen(context)
                                  ? width / 1.5
                                  : width / 2,
                              height: 55,
                              child: TextField(
//
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  filled: true,
                                  fillColor: Color(0xffF9F9F9),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: "Select file",
                                  hintStyle: TextStyle(
                                      color: Color(0xff4F555A).withOpacity(0.5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(0xffF9F9F9),
                                child: Image(
                                  image: AssetImage("image/Upload.png"),
                                  height: 18,
                                ),
                                //child:Icon(Icons.arrow_drop_down, color: Color(0xff4F555A).withOpacity(0.5),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              width: Responsive.isSmallScreen(context)
                                  ? width / 1.5
                                  : width / 2,
                              height: 55,
                              child: TextField(
//
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  filled: true,
                                  fillColor: Color(0xffF9F9F9),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: "Select Doctor",
                                  hintStyle: TextStyle(
                                      color: Color(0xff4F555A).withOpacity(0.5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(0xffF9F9F9),
                                child: Image(
                                  image: AssetImage("image/DropDown.png"),
                                  height: 18,
                                ),
                                //child:Icon(Icons.arrow_drop_down, color: Color(0xff4F555A).withOpacity(0.5),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  "Policy number",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.5),
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 28
                        : width / 60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.2
                      : width / 2,
                  height: 55,
                  child: TextField(
//
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Number",
                      hintStyle:
                          TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  "Upload reports",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.5),
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 28
                        : width / 60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              width: Responsive.isSmallScreen(context)
                                  ? width / 2.5
                                  : width / 4.5,
                              height: 55,
                              child: TextField(
//
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  filled: true,
                                  fillColor: Color(0xffF9F9F9),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: "0.00",
                                  hintStyle: TextStyle(
                                      color: Color(0xff4F555A).withOpacity(0.5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              width: Responsive.isSmallScreen(context)
                                  ? width / 2.5
                                  : width / 4.5,
                              height: 55,
                              child: TextField(
//
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  filled: true,
                                  fillColor: Color(0xffF9F9F9),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: "0",
                                  hintStyle: TextStyle(
                                      color: Color(0xff4F555A).withOpacity(0.5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Padding(padding: EdgeInsets.only(top: 10)),
          Center(
            child: Container(
              height: _mediaquery.size.height * 0.070,
              width:
                  Responsive.isSmallScreen(context) ? width / 2.5 : width / 3.5,
              margin: EdgeInsets.only(top: 10, bottom: 10),
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
        ],
      ),
    );
  }
}
