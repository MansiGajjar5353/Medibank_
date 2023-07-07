import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/ForgetPassword.dart';
import 'Responsive.dart';
class NewPassword extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NewPassword();
  }
}

class _NewPassword extends State<NewPassword> {
  bool _obscureText2 = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Responsive.isSmallScreen(context)? width/10: width/10,
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green, size: Responsive.isSmallScreen(context)? width/20: width/25,),
        leading: Align(
          alignment: Alignment.bottomLeft,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const BackButtonIcon(
            ),
          ),
        ),        title: Center(
        child: Container(padding: EdgeInsets.only(right: 30),
            child: Image(image: AssetImage("image/MedibankLOGO.png",),
                width: Responsive.isSmallScreen(context)? width/2.3: width/4)),
      ),
      ),

      body:ListView(
        children: [
          Container(
            width: Responsive.isSmallScreen(context)? width/1.5 : width/1.5,
            height: Responsive.isSmallScreen(context)? width/1.5 : width/1.5,
            child:Image(image: AssetImage('image/forgetpassword.png')),
          ),
          Container(margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/20 : width/20),
            child: Text("Enter Old Password",
              style: TextStyle(color: Color(0xff212426),
                fontSize:Responsive.isSmallScreen(context)? width/22 : width/22, fontFamily: 'Poppins',fontWeight: FontWeight.w600, ),),
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

                    obscureText: _obscureText2,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        padding: EdgeInsets.only(right:20),
                        icon: Icon(
                          !_obscureText2 ? Icons.visibility : Icons.visibility_off,
                          color: Color(0xff4F555A).withOpacity(0.5),
                          size: Responsive.isSmallScreen(context)? width/25 : width/30,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText2= !_obscureText2;
                          });
                        },
                      ),
                      hintText: "At least 8 digits",
                      hintStyle: TextStyle(color:Color(0xffCACACA), fontSize:Responsive.isSmallScreen(context)? width/24 : width/28, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                    ),
                    style: TextStyle(color:Color(0xff000000), fontSize:Responsive.isSmallScreen(context)? width/24 : width/28, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                  ),
                ),


              ],
            ),
          ),
          Container(margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/20 : width/20),
            child: Text("Enter new password",
              style: TextStyle(color: Color(0xff212426),
                fontSize:Responsive.isSmallScreen(context)? width/22 : width/22, fontFamily: 'Poppins',fontWeight: FontWeight.w600, ),),
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

                    obscureText: _obscureText2,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal:20),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        padding: EdgeInsets.only(right:20),
                        icon: Icon(
                          !_obscureText2 ? Icons.visibility : Icons.visibility_off,
                          color: Color(0xff4F555A).withOpacity(0.5),
                          size: Responsive.isSmallScreen(context)? width/25 : width/30,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText2= !_obscureText2;
                          });
                        },
                      ),
                      hintText: "At least 8 digits",
                      hintStyle: TextStyle(color:Color(0xffCACACA), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                    ),
                    style: TextStyle(color:Color(0xff000000), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                  ),
                ),


              ],
            ),
          ),
          Container(margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/20 : width/20),
            child: Text("Confirm  password ",
              style: TextStyle(color: Color(0xff212426),
                fontSize:Responsive.isSmallScreen(context)? width/22 : width/22, fontFamily: 'Poppins',fontWeight: FontWeight.w600, ),),
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

                    obscureText: _obscureText2,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal:20),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        padding: EdgeInsets.only(right: Responsive.isSmallScreen(context)? width/30 : width/28),
                        icon: Icon(
                          !_obscureText2 ? Icons.visibility : Icons.visibility_off,
                          color: Color(0xff4F555A).withOpacity(0.5),
                          size: Responsive.isSmallScreen(context)? width/25 : width/30,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText2= !_obscureText2;
                          });
                        },
                      ),
                      hintText: "*********",
                      hintStyle: TextStyle(color:Color(0xffCACACA), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                    ),
                    style: TextStyle(color:Color(0xff000000), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                  ),
                ),


              ],
            ),
          ),
          Container(
            margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/10 : width/10,right: Responsive.isSmallScreen(context)? width/10 : width/10,top: Responsive.isSmallScreen(context)? width/7 : width/7,bottom: Responsive.isSmallScreen(context)? width/20 : width/20),
            width: Responsive.isSmallScreen(context)? width/1.3 : width/1.3,
            height: Responsive.isSmallScreen(context)? width/9.5 : width/9.5,
            child: ElevatedButton(
              child: Text('Log In', style: TextStyle( fontFamily:'Poppins',color: Color(0xffFFFFFF),
                  fontSize:  Responsive.isSmallScreen(context)? width/ 25:width/25, fontWeight: FontWeight.w900),),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF24B445),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
              onPressed: (){

              },
            ),
          ),
          Container(
    margin:EdgeInsets.only(bottom: Responsive.isSmallScreen(context)? width/10 : width/10),
            alignment: Alignment.center,
            child:    GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>ForgetPassword()
                  ),
                );
              },
              child: Container(margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/20 : width/20),
                child: Text("Forgot password?",
                  style: TextStyle(color: Color(0xff959595),
                    fontSize:Responsive.isSmallScreen(context)? width/28 : width/38, fontFamily: 'Poppins',fontWeight: FontWeight.w400, ),),
              ),
            ),
          )



        ],
      ),
    );
  }

}

