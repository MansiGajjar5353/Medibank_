
import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Donation.dart';
import 'package:project_signup_page/Dashbord/LifeStyleEdit.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

import 'BookingConfirm.dart';


class Book extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BookState();


  }

}

class BookState extends State<Book>{
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
      Navigator.push(context,MaterialPageRoute(builder: (context)=>LifeStyleEdit(),));
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
        title: Text("Donate",
          style: TextStyle(color: Color(0xff212426),fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),

      ),

      body: ListView(
        children: [
          Container(

            margin: EdgeInsets.only(top: 10, left: 30, right: 30),
            child: Center(
              child: Image(image: AssetImage("image/DonatingBlood1.png"), //width:Responsive.isSmallScreen(context)? width/1.2 :width/1.5,
              ),
            ),
          ),





          Padding(padding: EdgeInsets.only(top: 30)),

          Container(
              margin:EdgeInsets.only( left:30),
              child: Text(textAlign: TextAlign.start,
                "Lorem ipsum dolor sit amet consectetur.",
                style: TextStyle(color: Color(0xff212426),fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,
                    fontWeight: FontWeight.w500, fontFamily: 'Poppins'),)
          ),
          Container(
              margin:EdgeInsets.only( left:30),
            child: Row(
              children: [
                Image(image: AssetImage("image/Vector(8).png"), width: 20,),
                Padding(padding: EdgeInsets.only(left: 10)),
                RichText(
                  text: TextSpan(
                    text: "Lorem ",
                    style: TextStyle(
                      color: Color(0xff24B445),
                      fontSize: Responsive.isSmallScreen(context)? width/20: width/30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Foundation ',
                        style: TextStyle(
                          color: Color(0xff212426),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),










          Container(
            height: 117,
            margin: EdgeInsets.only(left: 30,right: 30, top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF9F9F9),
                border: Border.all(color: Color(0xffF1F1F1))
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Location ",
                      style: TextStyle(
                        color: Color(0xff202020),
                        fontSize: Responsive.isSmallScreen(context)? width/25: width/35,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),),
                      InkWell(
                        onTap: (){},
                        child: Text("Mumbai ",
                          style: TextStyle(
                            color: Color(0xff24B445),
                            fontSize: Responsive.isSmallScreen(context)? width/23: width/30,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                  height: 1,
                  width: Responsive.isSmallScreen(context)? width/1.5 : width/2,
                  color: Color(0xffD3F0DA),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),

                  child: Row(
                    children: [
                      Text("Choose your blood group ",
                        style: TextStyle(
                          color: Color(0xff24B445),
                          fontSize: Responsive.isSmallScreen(context)? width/26: width/30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width:Responsive.isSmallScreen(context)? 50: 70,
                            height: 30,

                  decoration: BoxDecoration(
                            color: Color(0xffD3F0DA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text(textAlign: TextAlign.center,"A+",
                            style: TextStyle(
                            color: Color(0xff24B445),
                            fontSize: Responsive.isSmallScreen(context)? width/26: width/30,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),)),
                        ),
                      ),

                    ],


                  ),
                ),
              ],
            ),

          ),



          Container(
            height: 200,
            margin: EdgeInsets.only(left: 30,right: 30, top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF9F9F9),
                border: Border.all(color: Color(0xffF1F1F1))
            ),

            child:

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,bottom: 10),
                      child: Text("Choose date and time",
                        style: TextStyle(
                          color: Color(0xff202020),
                          fontSize: Responsive.isSmallScreen(context)? width/25: width/35,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 20),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(


                              decoration: BoxDecoration(
                                color: Color(0xffD3F0DA),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:  Container(
                                margin: EdgeInsets.only(left: 10,right: 10, top: 10, bottom: 10),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
    Image(image: AssetImage("image/Vector9).png",), width:Responsive.isSmallScreen(context)? width/20 :width/22,
    ),
Padding(padding: EdgeInsets.only(left: 8)),
                                    Text(textAlign: TextAlign.center,"03.10.19",
                                      style: TextStyle(
                                        color: Color(0xff24B445),
                                        fontSize: Responsive.isSmallScreen(context)? width/26: width/30,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(


                              decoration: BoxDecoration(
                                color: Color(0xffD3F0DA),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:  Container(
                                margin: EdgeInsets.only(left: 10,right: 10, top: 10, bottom: 10),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(image: AssetImage("image/clock(2).png",), width:Responsive.isSmallScreen(context)? width/20 :width/22,
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 8)),
                                    Text(textAlign: TextAlign.center,"11:15",
                                      style: TextStyle(
                                        color: Color(0xff24B445),
                                        fontSize: Responsive.isSmallScreen(context)? width/26: width/30,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      height: 1,
                      width: Responsive.isSmallScreen(context)? width/1.5 : width/2,
                      color: Color(0xffD3F0DA),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 20),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Mumbai Medical Clinic ",
                                style: TextStyle(
                                  color: Color(0xff202020),
                                  fontSize: Responsive.isSmallScreen(context)? width/26: width/30,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),),
                              Text("50 Corinne Cresent",
                                style: TextStyle(
                                  color: Color(0xff24B445),
                                  fontSize: Responsive.isSmallScreen(context)? width/30: width/40,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),),
                            ],
                          ),
                          // Padding(padding: EdgeInsets.only(right: 30)),
                          Container(
                            margin: EdgeInsets.only(right: 30),
                              child: Image(image: AssetImage("image/Vector(10).png",), width:Responsive.isSmallScreen(context)? width/20 :width/22,)),

                        ],


                      ),
                    ),

              ],
            ),

          ),













          Padding(padding: EdgeInsets.only(top: 20)),
          Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>BookingConfirm(),));

              },
              child: Container(
                width: Responsive.isSmallScreen(context)? width/1.2 : width/1.5,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff212426),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Confirm",
                  style: TextStyle(color: Color(0xff24B445),
                      fontSize: 15,
                      fontWeight: FontWeight.w700, fontFamily: 'Poppins'), )),
              ),
            ),
          ),


          Padding(padding: EdgeInsets.only(top: 20)),

        ],

      ),

    );
  }
}