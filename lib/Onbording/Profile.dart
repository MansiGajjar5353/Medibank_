

import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/FaimlyAccess.dart';
import 'package:project_signup_page/Dashbord/VaccinationHistory.dart';
import 'package:project_signup_page/Onbording/AddFamilymemberForm.dart';
import 'package:project_signup_page/Onbording/EditProfile.dart';
import 'package:project_signup_page/Onbording/FamilyMedicalHestoryList.dart';
import 'package:project_signup_page/Onbording/Faq.dart';
import 'package:project_signup_page/Onbording/FitnessData.dart';
import 'package:project_signup_page/Onbording/InsuranceHestory.dart';
import 'package:project_signup_page/Onbording/Setting.dart';
import 'package:project_signup_page/Onbording/VaccinationForm.dart';
import 'Responsive.dart';
import 'Dash.dart';
import 'DoctorsZone.dart';
import 'Symptoms.dart';

class Profile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfileState();
  }
}
class ProfileState extends State<Profile>{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      body:Container(
        height: _mediaquery.size.height*1,
        child: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: _mediaquery.size.height*0.02)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 0)],
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius:Responsive.isSmallScreen(context)?80 : 100,

      child:Column(
                    children: [
                      Container(
                        height: Responsive.isSmallScreen(context)?_mediaquery.size.height*0.15: _mediaquery.size.height*0.25,
                        width: Responsive.isSmallScreen(context) ? width/1.5: width/4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/placeholder.png'),
                          //  fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  RichText(

                    text: TextSpan(
                      text: 'Prathvi',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize:Responsive.isSmallScreen(context)? width/16 : width/22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Image(image: AssetImage('image/profilrside.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.02: _mediaquery.size.height*0.06,),
                ],
              ),

              GestureDetector(
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VaccinationHistory()),
                );  // Your logic here when the container is tapped
                },
                child: Container(
                  padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:20),

                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(

                        children: [
                          Image(image: AssetImage('image/Vactinationnew.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.03: _mediaquery.size.height*0.06,),
                          Container(
                            margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/40 : width/40),
                            child:   RichText(text: TextSpan(
                              text: 'Vaccination',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize:Responsive.isSmallScreen(context)? width/24 : width/26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ),
                          ),

                        ],
                      ),
                      Image(image: AssetImage('image/Profilewrite.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.02: _mediaquery.size.height*0.04,alignment: Alignment.centerRight,color: Color(0x80000000),),


                    ],
                  ),
                ),
              ),
              Container(
                padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),
                child: Container(
                  height: 1.5,
                  color: Color(0xffE4E8EE),

                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FamilyMedicalHestoryList()),
                  );
                },
                child: Container(
                  padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),

                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(

                        children: [
                          Image(image: AssetImage('image/FamiltHistory.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.03: _mediaquery.size.height*0.06,),
                          Container(
                            margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/40 : width/40),
                            child:   RichText(text: TextSpan(
                              text: 'Family History',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize:Responsive.isSmallScreen(context)? width/24 : width/26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ),
                          ),

                        ],
                      ),
                      Image(image: AssetImage('image/Profilewrite.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.02: _mediaquery.size.height*0.04,alignment: Alignment.centerRight,color: Color(0x80000000),),


                    ],
                  ),
                ),
              ),
              Container(
                padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),
                child: Container(
                  height: 1.5,
                  color: Color(0xffE4E8EE),

                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FamilyAccess()),
                  );
                },
                child: Container(
                  padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),

                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(

                        children: [
                          Image(image: AssetImage('image/Faimlymemmber.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.03: _mediaquery.size.height*0.06,),
                          Container(
                            margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/40 : width/40),
                            child:   RichText(text: TextSpan(
                              text: 'Family members access',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize:Responsive.isSmallScreen(context)? width/24 : width/26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ),
                          ),

                        ],
                      ),
                      Image(image: AssetImage('image/Profilewrite.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.02: _mediaquery.size.height*0.04,alignment: Alignment.centerRight,color: Color(0x80000000),),


                    ],
                  ),
                ),
              ),
              Container(
                padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),
                child: Container(
                  height: 1.5,
                  color: Color(0xffE4E8EE),

                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfile()),
                  );
                },
                child:Container(
                  color: Colors.transparent,
                  padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),

                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(

                        children: [
                          Image(image: AssetImage('image/Profileupdate.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.03: _mediaquery.size.height*0.06,),
                          Container(
                            margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/40 : width/40),
                            child:   RichText(text: TextSpan(
                              text: 'Update Profile',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize:Responsive.isSmallScreen(context)? width/24 : width/26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ),
                          ),

                        ],
                      ),
                      Image(image: AssetImage('image/Profilewrite.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.02: _mediaquery.size.height*0.04,alignment: Alignment.centerRight,color: Color(0x80000000),),


                    ],
                  ),
                ),
              ),
              Container(
                padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),
                child: Container(
                  height: 1.5,
                  color: Color(0xffE4E8EE),

                ),
              ),

              GestureDetector(

                onTap: () {
                  // Your logic here when the container is tapped
                },
                child: Container(
                  color: Colors.transparent,
                  padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),

                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(

                        children: [
                          Image(image: AssetImage('image/Resend.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.03: _mediaquery.size.height*0.06,),
                          Container(
                            margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/40 : width/40),
                            child:   RichText(text: TextSpan(
                              text: 'Resend welcome mail',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize:Responsive.isSmallScreen(context)? width/24 : width/26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ),
                          ),

                        ],
                      ),
                      Image(image: AssetImage('image/Profilewrite.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.02: _mediaquery.size.height*0.04,alignment: Alignment.centerRight,color: Color(0x80000000),),


                    ],
                  ),
                ),
              ),
              Container(
                padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),
                child: Container(
                  height: 1.5,
                  color: Color(0xffE4E8EE),

                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InsuranceHestoryList()),
                  );
                },
                child:Container(
                  color: Colors.transparent,
                  padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),

                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(

                        children: [
                          Image(image: AssetImage('image/Insorance.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.03: _mediaquery.size.height*0.06,),
                          Container(
                            margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/40 : width/40),
                            child:   RichText(text: TextSpan(
                              text: 'Insurance Policy',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize:Responsive.isSmallScreen(context)? width/24 : width/26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ),
                          ),

                        ],
                      ),
                      Image(image: AssetImage('image/Profilewrite.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.02: _mediaquery.size.height*0.04,alignment: Alignment.centerRight,color: Color(0x80000000),),


                    ],
                  ),
                ),
              ),
              Container(
                padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),
                child: Container(
                  height: 1.5,
                  color: Color(0xffE4E8EE),

                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Setting()),
                  );
                },
                child:Container(
                  color: Colors.transparent,
                  padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),

                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(

                        children: [
                          Image(image: AssetImage('image/Settings.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.03: _mediaquery.size.height*0.06,),
                          Container(
                            margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/40 : width/40),
                            child:   RichText(text: TextSpan(
                              text: 'Settings',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize:Responsive.isSmallScreen(context)? width/24 : width/26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ),
                          ),

                        ],
                      ),
                      Image(image: AssetImage('image/Profilewrite.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.02: _mediaquery.size.height*0.04,alignment: Alignment.centerRight,color: Color(0x80000000),),


                    ],
                  ),
                ),
              ),
              Container(
                padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),
                child: Container(
                  height: 1.5,
                  color: Color(0xffE4E8EE),

                ),
              ),


              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Faq()),
                  );
                },
              child: Container(
                color: Colors.transparent,
                padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),

                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Row(

                      children: [
                        Image(image: AssetImage('image/Faq.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.03: _mediaquery.size.height*0.06,),
                        Container(
                          margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/40 : width/40),
                          child:   RichText(text: TextSpan(
                            text: 'FAQ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize:Responsive.isSmallScreen(context)? width/24 : width/26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          ),
                        ),

                      ],
                    ),
                    Image(image: AssetImage('image/Profilewrite.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.02: _mediaquery.size.height*0.04,alignment: Alignment.centerRight,color: Color(0x80000000),),


                  ],
                ),
              ),
              ),
              Container(
                padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),
                child: Container(
                  height: 1.5,
                  color: Color(0xffE4E8EE),

                ),
              ),

              GestureDetector(
                onTap: () {
                  // Your logic here when the container is tapped
                },
              child:Container(
                color: Colors.transparent,
                padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),

                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Row(

                      children: [
                        Image(image: AssetImage('image/FamiltHistory.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.03: _mediaquery.size.height*0.06,),
                        Container(
                          margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/40 : width/40),
                          child:   RichText(text: TextSpan(
                            text: 'Download Key File',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize:Responsive.isSmallScreen(context)? width/24 : width/26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          ),
                        ),

                      ],
                    ),
                    Image(image: AssetImage('image/Profilewrite.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.02: _mediaquery.size.height*0.02,alignment: Alignment.centerRight,color: Color(0x80000000),),


                  ],
                ),
              ),
              ),
              Container(
                padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),
                child: Container(
                  height: 1.5,
                  color: Color(0xffE4E8EE),

                ),
              ),

              GestureDetector(
                onTap: () {
                  // Your logic here when the container is tapped
                },
               child: Container(
                 color: Colors.transparent,
                  padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),

                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage('image/Logout.png'), height:  Responsive.isSmallScreen(context)?_mediaquery.size.height*0.03: _mediaquery.size.height*0.06,),
                          Container(
                            margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/40 : width/40),
                            child:   RichText(text: TextSpan(
                              text: 'Logout',
                              style: TextStyle(
                                color: Color(0xffFF6A8F),
                                fontSize:Responsive.isSmallScreen(context)? width/24 : width/26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/60, right: Responsive.isSmallScreen(context)? width/20 : width/60,top:14),
                child: Container(
                  height: 1.5,
                  color: Color(0xffE4E8EE),
                ),
              ),
            ],
          )
        ],
        ),
      ),
    );
  }
}