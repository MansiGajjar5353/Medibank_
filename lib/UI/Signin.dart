import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/InsuranceForm.dart';
import 'package:project_signup_page/UI/Signup.dart';

import '../Onbording/Responsive.dart';
import 'FinalPage.dart';

class Signin extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return _SigninState();
  }


}

class _SigninState extends State<Signin>{
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

      _loginpage;
      Navigator.push(context, MaterialPageRoute(builder: (context)=>InsuranceForm(),));// Perform navigation after the delay

    });
  }






  bool _obscureText2 = true;
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  String _Error ="";
  String res ="";
  void _loginpage(){
    setState(() async{
  if(_userController.text.isNotEmpty && _passwordController.text.isNotEmpty)
  {
    final url = Uri.parse('https://staging.themedibank.in/api/v1/UserSignUp/Login');
    final jsonBody = jsonEncode({

        "createdAt": "Samsung,21,11",
        "userName": _userController.text,
        "password": _passwordController.text,
        "fcmToken": "fjsfhsfd082342084324"

    });
    final response = await http.post(url, body: jsonBody, headers: {
      'Content-Type': 'application/json',
    });
    res = response.body;
    log(res);

    if (response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> FinalPage()));
    } else {
      _Error = "Please try again";
    }
  }
    });
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
      ),
        body: Container(
          child: ListView(
            children: [

          Container(
          margin: EdgeInsets.only(left:21.0, top:10.0),
          //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
          child:Text("Please sign in to continue",style: new TextStyle(color: Color(0xff24B445),
              fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
              fontWeight: FontWeight.w600, fontFamily: 'Poppins' ),),

        ),
      Container(
        margin: EdgeInsets.only(left:21.0, top:10.0),
        //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
        child:Text("Glad to see you!",style: new TextStyle(color: Colors.black,  fontSize: Responsive.isSmallScreen(context)? width/15 : width/60,
            fontWeight: FontWeight.w600,fontFamily: 'Poppins'),),

      ),
              Padding(padding: EdgeInsets.only(top: 10.0,right: 30.0, left:30.0)),
              Container(
                width: 360,
                height:_mediaquery.size.height*0.07,
                margin: EdgeInsets.only(left:0.0,right: 20.0),
                padding: EdgeInsets.only(left:20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35), // set the border radius
                  //border: Border.all(),
                ),
                child: TextField(
                  controller: _userController,
                  decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    filled: true,
                    fillColor: Color(0xffF9F9F9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none,),

                    hintText: "User name/Contact no",
                    hintStyle: TextStyle(color: Color(0xff4F555A).withOpacity(0.50),  fontSize: Responsive.isSmallScreen(context)? width/25 : width/60,
                    ),
                  ),
                ),
              ),
              /*
              Padding(padding: EdgeInsets.only(top: 20.0)),
              TextField(
                controller: _userController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Contact no",
                ),
              ),*/
              Padding(padding: EdgeInsets.only(top: 10.0,right: 30.0, left:30.0)),
              Container(
                width: 360,
                height:_mediaquery.size.height*0.06,
                margin: EdgeInsets.only(left:0,right: 20.0),
                padding: EdgeInsets.only(left:20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35), // set the border radius
                  //border: Border.all(),
                ),
                child: TextField(
                  obscureText: _obscureText2,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    filled: true,
                    fillColor: Color(0xffF9F9F9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none,),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Color(0xff4F555A).withOpacity(0.5), fontSize: Responsive.isSmallScreen(context)? width/25 : width/60,),
                    suffixIcon: IconButton(
                      icon: Icon(
                        !_obscureText2 ? Icons.visibility : Icons.visibility_off,
                        color: Color(0xff4F555A).withOpacity(0.5),
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText2= !_obscureText2;
                        });
                      },
                    ),
                  ),
                ),
              ),

    Container(
      margin: EdgeInsets.only(left:220, top:0),
      child:TextButton(
        onPressed: () {
          print("recover preseed");
        },
        child: Text('Recover Password?',style: new TextStyle(height:0.99,color: Color(0xffC7C7C7), fontWeight: FontWeight.w900, fontFamily: 'Poppins', fontSize: 10),),
      ),
      //child:Text("Recover Password?", style: new TextStyle(color: Colors.grey, fontWeight: FontWeight.w900, fontFamily: 'Poppins'),),
    ),



      Padding(padding: EdgeInsets.only(top:180.0, left:50.0, right: 50.0)),
      Container(
        height: 50.0,
        margin: EdgeInsets.only(left:20.0,right:20.0),

              child:ElevatedButton(  child: Text("Sign In",
                  style:TextStyle(color:isButtonPressed ? Colors.white : Color(0xff4F555A).withOpacity(0.5),
                      fontSize:  Responsive.isSmallScreen(context)? width/
                  25:width/60, fontWeight: FontWeight.w700)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isButtonPressed ? buttonColor :  Color(0xffF9F9F9),
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)
                    ),

                  ),
                  onPressed: handleButtonPress,),),

              Transform.translate(
                offset: Offset(0,20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 50,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Or Login with',
                      style: TextStyle(fontSize: Responsive.isSmallScreen(context)? width/30 : width/60, color: Colors.grey)
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 1,
                      width: 50,
                      color: Colors.grey,
                    ),
                  ],
                ),

              ),

              Padding(padding: EdgeInsets.only(top:40.0, left:50.0, right: 50.0)),
              Container(
                height: 50.0,
                margin: EdgeInsets.only(left:20.0,right:20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                ),
                child: ElevatedButton(
                    child:Center(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Padding(padding: EdgeInsets.only(left:100),),
                          Image.asset('image/google.png',
                            height: 20,),
                          Padding(padding: EdgeInsets.only(left:10)),
                          Text("Google", style:new TextStyle(
                              fontSize:  Responsive.isSmallScreen(context)? width/
                                  25:width/60,
                              color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w900)),
                        ],
                      ),
                    ),

                    style: ElevatedButton.styleFrom(
                      elevation:0, backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),

                      ),

                    ),
                    onPressed:_loginpage),),
                /*child: ElevatedButton(  child: Text("Google", style:new TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w900)),
                    style: ElevatedButton.styleFrom(
                      elevation:0,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),

                      ),

                    ),
                    onPressed:_loginpage),*/

              new Center(
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text('Not a member?', style: TextStyle(color: Color(0xffACADAC),fontSize: Responsive.isSmallScreen(context)? width/25 : width/60,),)),
                    Center(child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp(),));
                      },
                      child: Text('Sign Up', style: TextStyle(color: Color(0xff191F32),fontSize: Responsive.isSmallScreen(context)? width/25 : width/60,),),
                    ),),
                  ],
                ),
              ),


              new Text("$_Error"),
            ],
          ),
        ),
    );
  }

}


