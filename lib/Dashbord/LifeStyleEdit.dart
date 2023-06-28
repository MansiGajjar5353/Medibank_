import "package:flutter/material.dart";
import 'package:project_signup_page/Onbording/Responsive.dart';

class LifeStyleEdit extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LifeStyleEditState();
  }

}

class LifeStyleEditState extends State<LifeStyleEdit>{
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
        buttonColor = Colors.green; // Change the color back to the original value
        isButtonPressed = false;
      });
     // Navigator.push(context,MaterialPageRoute(builder: (context)=>BookingConfirm(),));
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
        title: Text("Dashboard",
          style: TextStyle(color: Color(0xff000000),
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),),
      ),

      body: ListView(

        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: RichText(
              text: TextSpan(
                text: "Edit ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Responsive.isSmallScreen(context)? width/17: width/30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Lifestyle',
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
                Text("Weight(Kgs)",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.5),
                    fontSize: Responsive.isSmallScreen(context)? width/28: width/60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only( top: 10),
                    width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
                        2,
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
                          borderSide: BorderSide.none,),

                        hintText: "72",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5)),

                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text("Height(Feet inches)",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.5),
                    fontSize: Responsive.isSmallScreen(context)? width/28: width/60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only( top: 10),
                    width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
                        2,
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
                          borderSide: BorderSide.none,),

                        hintText: "6.1",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5)),

                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text("Height(Feet inches)",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.5),
                    fontSize: Responsive.isSmallScreen(context)? width/28: width/60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only( top: 10),
                    width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
                        2,
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
                          borderSide: BorderSide.none,),

                        hintText: "6.1",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5)),

                      ),
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 10)),
                Text("Current BMI",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.5),
                    fontSize: Responsive.isSmallScreen(context)? width/28: width/60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only( top: 10),
                    width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
                        2,
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
                          borderSide: BorderSide.none,),

                        hintText: "20.94",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5)),

                      ),
                    ),
                  ),
                ),


                Padding(padding: EdgeInsets.only(top: 10)),
                Text("Water intake per day(liters)",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.5),
                    fontSize: Responsive.isSmallScreen(context)? width/28: width/60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only( top: 10),
                    width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
                        2,
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
                          borderSide: BorderSide.none,),

                        hintText: "4",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5)),

                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text("BMI",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.5),
                    fontSize: Responsive.isSmallScreen(context)? width/28: width/60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only( top: 10),
                    width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
                        2,
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
                          borderSide: BorderSide.none,),

                        hintText: "25.96",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5)),

                      ),
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 10)),
                Text("Target weight(kgs)",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.5),
                    fontSize: Responsive.isSmallScreen(context)? width/28: width/60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only( top: 10),
                    width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
                        2,
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
                          borderSide: BorderSide.none,),

                        hintText: "55",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5)),

                      ),
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 10)),
                Text("Target Steps",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.5),
                    fontSize: Responsive.isSmallScreen(context)? width/28: width/60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only( top: 10),
                    width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
                        2,
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
                          borderSide: BorderSide.none,),

                        hintText: "5000",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5)),

                      ),
                    ),
                  ),
                ),


                Padding(padding: EdgeInsets.only(top: 10)),
                Text("Calories burn (per day)",
                  style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.5),
                    fontSize: Responsive.isSmallScreen(context)? width/28: width/60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only( top: 10),
                    width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
                        2,
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
                          borderSide: BorderSide.none,),

                        hintText: "500",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5)),

                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

          // Padding(padding: EdgeInsets.only(top: 10)),
Center(
  child: InkWell(
    onTap:(){},
    child: Container(
      height: 46,
      width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
          2,
      decoration: BoxDecoration(
        color: Color(0xff24B445),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          "SUBMIT",
          style: TextStyle(color: Color(0xffFFFFFF), fontWeight: FontWeight.w400, fontSize: 14),
        ),
      ),

    ),
  ),
),
          Padding(padding: EdgeInsets.only(top: 10)),


        ],
      ),
    );
  }
}