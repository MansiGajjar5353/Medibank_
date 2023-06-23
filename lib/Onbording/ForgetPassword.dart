import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/ForgetPassowrOtp.dart';
import 'Responsive.dart';
class ForgetPassword extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ForgetPassword();
  }
}

class _ForgetPassword extends State<ForgetPassword> {
  bool _obscureText2 = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        title: Text("", style:  TextStyle(color: Colors.black,  fontSize:Responsive.isSmallScreen(context)? width/20 : width/34, fontFamily: 'Poppins',fontWeight: FontWeight.w400,),),

      ),

      body:ListView(
        children: [
          Container(
            width: Responsive.isSmallScreen(context)? width/1.5 : width/1.5,
            height: Responsive.isSmallScreen(context)? width/1.5 : width/1.5,
            child:Image(image: AssetImage('image/forgetpassword.png')),
          ),
          Container(margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/5 : width/5),
            child: Text("Forgot",
              style: TextStyle(color: Color(0xff212426),
                fontSize:Responsive.isSmallScreen(context)? width/18 : width/20, fontFamily: 'Poppins',fontWeight: FontWeight.w600, ),),
          ),

          Container(margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20),
            child: Text("Password?",
              style: TextStyle(color: Color(0xff212426),
                fontSize:Responsive.isSmallScreen(context)? width/18 : width/20, fontFamily: 'Poppins',fontWeight: FontWeight.w600, ),),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only( left: Responsive.isSmallScreen(context)
                ? width / 20
                : width / 20,),
            width: Responsive.isSmallScreen(context)
                ? width / 1.5
                : width / 1.4,
            child: Row(
              children: [
                Container(
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.5
                      : width / 1.5,
                  child: Text('Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number.',
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: Responsive.isSmallScreen(
                              context)
                              ? width / 35
                              : width / 38,
                          color: Color(0xff979797),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins')),
                )
              ],
            ),
          ),
          Container(
            margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,right: Responsive.isSmallScreen(context)? width/20 : width/20,top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(

                  width: Responsive.isSmallScreen(context)? width/1.1 : width/1.1,
                  height: Responsive.isSmallScreen(context)? width/8 : width/8,

                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal:Responsive.isSmallScreen(context)? width/30 : width/28),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,
                      ),

                      hintText: "Enter the phone Number",
                      hintStyle: TextStyle(color:Color(0xffCACACA), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                    ),
                    style: TextStyle(color:Color(0xff000000), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                  ),
                ),


              ],
            ),
          ),
          Container(
              margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/10 : width/10,right: Responsive.isSmallScreen(context)? width/10 : width/10,top: Responsive.isSmallScreen(context)? width/7 : width/7,bottom: Responsive.isSmallScreen(context)? width/7 : width/7),
              width: Responsive.isSmallScreen(context)? width/1.3 : width/1.3,
              height: Responsive.isSmallScreen(context)? width/9.5 : width/9.5,
              child: ElevatedButton(
                child: Text('Continue', style: TextStyle( fontFamily:'Poppins',color: Color(0xffFFFFFF),
                    fontSize:  Responsive.isSmallScreen(context)? width/ 25:width/25, fontWeight: FontWeight.w900),),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF24B445),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>ForgrtPassworOtp()
                    ),
                  );
                },
              ),
            ),




        ],
      ),
    );
  }

}

