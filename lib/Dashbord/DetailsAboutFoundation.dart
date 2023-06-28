
import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Book.dart';
import 'package:project_signup_page/Dashbord/Donation.dart';
import 'package:project_signup_page/Dashbord/LifeStyleEdit.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';


class DetailsAboutFoundation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DetailsAboutFoundationState();


  }

}

class DetailsAboutFoundationState extends State<DetailsAboutFoundation>{
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
                  "Giving the Gift of Life",
                  style: TextStyle(color: Color(0xff212426),fontSize: Responsive.isSmallScreen(context)? width/20 : width/40,
                      fontWeight: FontWeight.w500, fontFamily: 'Poppins'),)
            ),
          Container(
              margin:EdgeInsets.only( left:30),
              child: Text(textAlign: TextAlign.start,
                "Donate Blood Today ! ",
                style: TextStyle(color: Color(0xff24B445),fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                    fontWeight: FontWeight.w500, fontFamily: 'Poppins'),)
          ),




          Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Text(
                "Lorem ipsum dolor sit amet consectetur. Vehicula ullamcorper nec egestas ultrices. Sodales morbi blandit purus neque. Eu vitae justo nulla purus lectus. Non hendrerit augue libero sapien eget sodales. Sociis eu ut feugiat mi sed a. Quis urna amet malesuada quis.",
              softWrap: true,
              textAlign: TextAlign.justify,

              style: TextStyle(color: Color(0xff9D9D9D),fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                  fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
            ),

          ),

          Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Text("2000+ Donated",
              softWrap: true,
              textAlign: TextAlign.justify,

              style: TextStyle(color: Color(0xff9D9D9D),fontSize: Responsive.isSmallScreen(context)? width/26 : width/60,
                  fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
            ),

          ),
















          Container(
              margin: EdgeInsets.only(left: 30,right: 150),
              width:Responsive.isSmallScreen(context)? width/2 : width/4,
              height: 50,
              child: Image(image: AssetImage("image/Group6.png"),width:Responsive.isSmallScreen(context)? width/2 : width/4,)),


          Container(
            margin: EdgeInsets.only(left: 30,top: 20),

            child: RichText(
              text: TextSpan(
                text: "Campaign ",
                style: TextStyle(
                  color: Color(0xff24B445),
                  fontSize: Responsive.isSmallScreen(context)? width/17: width/30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'By',
                    style: TextStyle(
                      color: Color(0xff212426),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',

                    ),
                  ),
                ],
              ),
            ),
          ),



            Container(
              height: 96,
              margin: EdgeInsets.only(left: 30,right: 30, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                border: Border.all(color: Color(0xffF1F1F1))
              ),

              child: Row(
                children: [

                  Container(
                      margin:EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 10),
                child: Image(image: AssetImage("image/Group1686556144.png"), )),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      Container(
                       // margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: Text("Verified User",
                          //softWrap: true,
                         // textAlign: TextAlign.justify,

                          style: TextStyle(color: Color(0xff24A241),fontSize: Responsive.isSmallScreen(context)? width/26 : width/60,
                              fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
                        ),

                      ),


                    ],
                  )

                ],
              ),

            ),




            Padding(padding: EdgeInsets.only(top: 20)),
          Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Book(),));

              },
              child: Container(
                width: Responsive.isSmallScreen(context)? width/1.2 : width/1.5,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff212426),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Book Now",
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