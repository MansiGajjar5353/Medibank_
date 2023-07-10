import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class InsurancePolicy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InsurancePolicyState();
  }
}

class InsurancePolicyState extends State<InsurancePolicy> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        title: Text(
          "Add Insurance",
          style: TextStyle(
              color: Color(0xff000000),
              fontSize:
                  Responsive.isSmallScreen(context) ? width / 20 : width / 20,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(
                  left: Responsive.isSmallScreen(context)
                      ? width / 10
                      : width / 10,
                  right: Responsive.isSmallScreen(context)
                      ? width / 10
                      : width / 10,
                  bottom: Responsive.isSmallScreen(context)
                      ? width / 7
                      : width / 12),
              width: Responsive.isSmallScreen(context) ? width / 1 : width / 1,
              height:
                  Responsive.isSmallScreen(context) ? width / 3.5 : width / 4.5,
              child: Image.asset(
                "image/insurancecenter.png",
                height: Responsive.isSmallScreen(context)
                    ? width / 3.5
                    : width / 4.5,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                  left: Responsive.isSmallScreen(context)
                      ? width / 10
                      : width / 10,
                  right: Responsive.isSmallScreen(context)
                      ? width / 10
                      : width / 10,
                  bottom: Responsive.isSmallScreen(context)
                      ? width / 7
                      : width / 18),
              width:
                  Responsive.isSmallScreen(context) ? width / 1.5 : width / 1.5,
              height:
                  Responsive.isSmallScreen(context) ? width / 9 : width / 18,
              child: ElevatedButton(
                child: Text(
                  'Add New Insurance',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 25
                          : width / 50,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF)),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF24B445),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> AddFamilyMedicalForm()));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
