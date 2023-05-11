import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project_signup_page/UI/Signin.dart';
import 'dart:convert';

import 'package:project_signup_page/UI/otpScreen.dart';

class SignUp extends StatefulWidget{

  const SignUp({super.key});
  @override
  State<StatefulWidget> createState() {
  return _SignUpState();
  }

}

class _SignUpState extends State<SignUp>{
  bool _obscureText = true;
  int index = 1;
  bool _obscureText2 = true;
  String _Error ="";
 String res ="";
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _checkpasswordController = new TextEditingController();

  void _otppage(){
    setState(() async {
      if(_userController.text.isNotEmpty && _passwordController.text.isNotEmpty && _checkpasswordController.text.isNotEmpty && _passwordController.text == _checkpasswordController.text  )

        {
          final url = Uri.parse('https://staging.themedibank.in/api/v1/UserSignUp/Signup');
          final jsonBody = jsonEncode({
            "password": _passwordController.text,
            "contactNo": _userController.text,
            "createdAt": "Samsung,21,11",
            "fcmToken": "fjsfhsfd082342084324",
          });
          final response = await http.post(url, body: jsonBody, headers: {
            'Content-Type': 'application/json',
          });
          res = response.body;
           log(res);
          if (response.statusCode == 200) {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>otpScreen(),));
          } else {
            _Error = "Please try again";
          }

        }

      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 0,
            iconTheme: IconThemeData(color: Colors.green), // set the color of the icons

      ),

      body: Container(
        child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left:21.0, top:10.0),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child:Text("Please sign up to continue",style: new TextStyle(color: Color(0xFF24B445), fontSize: 14.0, fontWeight: FontWeight.w600, fontFamily: 'Poppins' ),),
              ),


              Container(
                margin: EdgeInsets.only(left:21.0, top:10.0),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child:Text("Welcome to Medibank!",style: new TextStyle(color: Colors.black, fontSize: 23.0, fontWeight: FontWeight.w500,fontFamily: 'Poppins'),),
              ),


              Padding(padding: EdgeInsets.only(top: 10.0,right: 30.0, left:30.0)),
              Container(
                width: 360,
                height: 50,
                margin: EdgeInsets.only(left:20.0,right: 20.0),
            //    padding: EdgeInsets.only(left:20.0),
                decoration: BoxDecoration(

               borderRadius: BorderRadius.circular(35), // set the border radius
                //border: Border.all(),
                ),
                child: TextField(

                  controller: _userController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    filled: true,
                    fillColor: Color(0xffF9F9F9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Contact no",
                    hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 15.0, fontWeight: FontWeight.w400),
                  ),
                ),
              ),



              Padding(padding: EdgeInsets.only(top: 20.0,right: 30.0, left:30.0)),
              Container(
                width: 360,
                height: 50,
                margin: EdgeInsets.only(left:20.0,right: 20.0),
               // padding: EdgeInsets.only(left:20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35), // set the border radius
                 // border: Border.all(),
                ),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    filled: true,
                    fillColor: Color(0xffF9F9F9),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none,),
                    hintText: "Password",
                    hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),fontSize: 15.0, fontWeight: FontWeight.w400),

                    suffixIcon: IconButton(
                      icon: Icon(
                        !_obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Color(0xff4F555A).withOpacity(0.5),
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),

                  ),
                  obscureText: _obscureText,

                ),
              ),



              Padding(padding: EdgeInsets.only(top: 20.0,right: 30.0, left:30.0)),
              Container(
                width: 360,
                height: 50,
                margin: EdgeInsets.only(left:20.0,right: 20.0),
                //padding: EdgeInsets.only(left:20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35), // set the border radius
                 // border: Border.all(),
                ),
                child: TextField(
                  obscureText: _obscureText2,
                  controller: _checkpasswordController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    filled: true,
                    fillColor:  Color(0xffF9F9F9),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80),
                      borderSide: BorderSide.none,),
                    hintText: "Re-write password",
                    hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),fontSize: 15.0, fontWeight: FontWeight.w400),
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

              Padding(padding: EdgeInsets.only(top:0, left:50.0, right: 50.0)),
      Row(
        children: [
          Expanded( child:  Container(

                child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Transform.translate(
          offset: Offset(0,10,),
           child:   ListTile(
             contentPadding: EdgeInsets.zero,
                leading: Container(
                  margin: EdgeInsets.only(left: 30.0),
                  width: 5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade400,
                  ),
                ),
                title: Text('One uppercase character',style: new TextStyle(fontSize: 9.0, color: Colors.grey.shade400),  ),
              ),
          ),
              Transform.translate(
                offset: Offset(0,-25,),
              child:ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  width: 5,
                  margin: EdgeInsets.only(left: 30.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade400,
                  ),
                ),
                title: Text('One lower case character', style: new TextStyle(fontSize: 9.0, color: Colors.grey.shade400),),
              ),
    ),

      Transform.translate(
        offset: Offset(0,-60,),
          child:    ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  width: 5.0,
                  margin: EdgeInsets.only(left: 30.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade400,
                  ),
                ),
                title: Text('One special character',style: new TextStyle(fontSize: 9.0,color: Colors.grey.shade400),),
              ),
      ), ], ),
        ),
          ),


          Expanded(
           child:  Container(

          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Transform.translate(
          offset: Offset(-20,-20,),
          child:   ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Container(
          margin: EdgeInsets.only(left: 30.0),
          width: 5,
          decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade400,
          ),
    ),
    title: Text('One Number',style: new TextStyle(fontSize: 9.0, color: Colors.grey.shade400),  ),
    ),
    ),
    Transform.translate(
    offset: Offset(-20,-60,),
    child:ListTile(
    contentPadding: EdgeInsets.zero,
    leading: Container(
    width: 5,
    margin: EdgeInsets.only(left: 30.0),
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.grey.shade400,
    ),
    ),

    title: Text('8 character minimum', style: new TextStyle(fontSize: 9.0, color: Colors.grey.shade400),),
    ),
    ),
    ],),
    ),
          ),






  ],
      ),





      Padding(padding: EdgeInsets.only(top:0.0, left:50.0, right: 50.0)),
      Transform.translate(
        offset: Offset(0,-20),
    child:  Container(
        height: 50.0,
        margin: EdgeInsets.only(left:20.0,right:20.0),
        child: ElevatedButton( 
            child: Text("Sign up", style:new TextStyle(color: Colors.white, fontFamily: 'Poppins', fontWeight: FontWeight.w700)),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF24B445),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)
                    ),),
                  
                  onPressed:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>otpScreen(),));
                  }),),

      ),

              Transform.translate(
                offset: Offset(90,0),
                child:Row(
                  children: [
                    Container(
                      height: 1,
                      width: 50,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Or Login with',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
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
      Transform.translate(
        offset: Offset(0,-20),
         child:     Container(
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
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left:100),),
                          Image.asset('image/google.png',
                          height: 20,),
                          Padding(padding: EdgeInsets.only(left:10)),
                          Text("Google", style:new TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w900)),
                        ],
                      ),
                    ),

                    style: ElevatedButton.styleFrom(
                      elevation:0,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),

                      ),

                    ),
                    onPressed:_otppage),),


      ),



new Center(
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(child: Text('Already a member?', style: TextStyle(color: Color(0xffACADAC),fontSize: 14),)),
      Center(child: TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Signin(),));
        },
        child: Text('Sign in', style: TextStyle(color: Color(0xff191F32),fontSize: 14),),
      ),),
    ],
  ),
),
             // new Text("$_Error"),


            ],
        ),
      ),
    );
  }
}

