import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Donation.dart';
import 'package:project_signup_page/Dashbord/LifeStyleEdit.dart';
import 'package:project_signup_page/Dashbord/Weigh.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';


class BookingConfirm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
return BookingConfirmState();


  }

}

class BookingConfirmState extends State<BookingConfirm>{
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
    title: Text("confirmation",
      style: TextStyle(color: Color(0xff212426),fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),

  ),

body: ListView(
  children: [
    Container(
    margin: EdgeInsets.only(top: 10),
      child: Center(
        child: Image(image: AssetImage("image/Blooddonation-pana1.png"), width:Responsive.isSmallScreen(context)? width/1.2 :width/1.5,),
      ),
    ),
    Padding(padding: EdgeInsets.only(top: 30)),
    Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image(image: AssetImage("image/check-mark1.png"), height: 22,),
             Text("Booking Confirmed !", style: TextStyle(color: Color(0xff000000),fontSize: 18, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),)
           ],
         ), 
    ),
    Padding(padding: EdgeInsets.only(top: 30)),
    Center(
      child: Container(margin:EdgeInsets.only(left: 40, right: 40),
          child: Text(textAlign: TextAlign.center,
              "Please check your email for booking confirmation and details.",
            style: TextStyle(color: Color(0xff212426),fontSize: Responsive.isSmallScreen(context)? width/27 : width/60,
                fontWeight: FontWeight.w400, fontFamily: 'Poppins'),)),
    ),
    Padding(padding: EdgeInsets.only(top: 220)),
    Center(
      child: InkWell(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Weigh(),));

        },
        child: Container(
          width: Responsive.isSmallScreen(context)? width/1.2 : width/1.5,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xff212426),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text("Back",
            style: TextStyle(color: Color(0xff24B445),
                fontSize: 15,
                fontWeight: FontWeight.w700, fontFamily: 'Poppins'), )),
        ),
      ),
    ),

  ],

),

);
  }
}