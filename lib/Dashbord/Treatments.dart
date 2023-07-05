import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/PrescriptionForm.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

import 'TreatmentsForm.dart';

class Treatments extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TreatmentsState();
  }


}

class TreatmentsState extends State<Treatments>{
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

      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
              color: Color(0xffFFFFFF),
              height: 190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                    child: Text("Choose an Option"),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      InkWell(
                        child: Container(
                          height:100,
                          width:100,
                          decoration: BoxDecoration(
                            color: Color(0xffF9F9F9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //color: Color(0xffF9F9F9),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height:40,
                                    width:40,
                                    child: Image(image: AssetImage('image/Camera.png'))),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Text("Cam", style: TextStyle(color: Color(0xff000000), fontFamily: "Poppins", fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ),
                        onTap: (){},
                      ),
                      Padding(padding: EdgeInsets.only(left: 20)),
                      InkWell(
                        child: Container(
                          height:100,
                          width:100,
                          decoration: BoxDecoration(
                            color: Color(0xffF9F9F9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //color: Color(0xffF9F9F9),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height:40,
                                    width:40,
                                    child: Image(image: AssetImage('image/Upload.png'))),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Text("Upload",
                                  style: TextStyle(color: Color(0xff000000), fontFamily: "Poppins", fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ),
                        onTap: (){},
                      ),
                      Padding(padding: EdgeInsets.only(left: 20)),
                      InkWell(
                        child: Container(
                          height:100,
                          width:100,
                          decoration: BoxDecoration(
                            color: Color(0xffF9F9F9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //color: Color(0xffF9F9F9),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height:30,
                                    width:30,
                                    child: Image(image: AssetImage('image/PlusButton.png'))),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Text("Add",   style: TextStyle(color: Color(0xff000000), fontFamily: "Poppins", fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TreatmentsForm(),));
                          },
                      ),
                    ],
                  ),
                ],
              )
          );
        },
      );

    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100, // default is 56

        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          }, padding: EdgeInsets.only(top: 40),
          icon: const BackButtonIcon(),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(padding: EdgeInsets.only(right: 30),
                child: Center(
                  child: Image(image: AssetImage("image/MedibankLOGO.png",),
                      width: Responsive.isSmallScreen(context)? width/2.3: width/4),
                )),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Treatments ",
                  style: TextStyle(color: Color(0xff000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),),
                InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));},
                  child: Image(image: AssetImage("image/DashboardImage.png"),
                    height: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),


      body: ListView(
        children: [
          Container(
            height: Responsive.isSmallScreen(context)? _mediaquery.size.width*0.45: _mediaquery.size.width*0.2,
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Color(0xffF7F7F7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: Responsive.isSmallScreen(context)? width/2.5 : width/3,
                        child: Text("Allergies", style: TextStyle(
                          color: Color(0XFF929292),
                          fontSize: Responsive.isSmallScreen(context)? width/22 : width/35,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",

                        ),),
                      ),
                      Container(
                        width: Responsive.isSmallScreen(context)? width/3 : width/3,
                        margin: EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){},
                              child:Container(
                                width: Responsive.isSmallScreen(context)? width/10 : width/30,
                                child: Image(image: AssetImage("image/EyeButton.png"),),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child:Container(
                                width: Responsive.isSmallScreen(context)? width/10 : width/30,
                                child: Image(image: AssetImage("image/EditButton.png"),),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child:Container(
                                width: Responsive.isSmallScreen(context)? width/10 : width/30,
                                child: Image(image: AssetImage("image/DeleteButton.png"),),
                              ),
                            ),

                          ],
                        ),),
                    ],
                  ),
                ),

                Container(

                  height: 1,
                  margin: EdgeInsets.only(left: 20,right: 20,top: 10, bottom: 10),
                  color: Color(0xff000000).withOpacity(0.20),
                ),

                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Column(
                    children: [

                      Row(
                        children: [
                          Text("Date", style: TextStyle(
                            color: Color(0XFF4F555A),
                            fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",

                          ),),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text("27/08/2022", style: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),),
                        ],
                      ),

                      Row(
                        children: [
                          Text("Doctor", style: TextStyle(
                            color: Color(0XFF4F555A),
                            fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",

                          ),),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text("Amet Minit", style: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Treatment", style: TextStyle(
                            color: Color(0XFF4F555A),
                            fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",

                          ),),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text("Fever", style: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),







              ],
            ),
          ),

          Container(
            height: 83,
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffF7F7F7),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    //width: Responsive.isSmallScreen(context)? width/2.5 : width/3,
                    margin: EdgeInsets.only(left: 20),
                    child: Text("Allergies",
                      style: TextStyle(
                        color: Color(0XFF929292),
                        fontSize: Responsive.isSmallScreen(context)? width/22 : width/35,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",

                      ),),
                  ),

                  Container(

                    margin: EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: (){},
                      child: Image(image: AssetImage("image/ViewButton.png"), height: 20,),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 83,
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffF7F7F7),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    //width: Responsive.isSmallScreen(context)? width/2.5 : width/3,
                    margin: EdgeInsets.only(left: 20),
                    child: Text("Allergies",
                      style: TextStyle(
                        color: Color(0XFF929292),
                        fontSize: Responsive.isSmallScreen(context)? width/22 : width/35,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",

                      ),),
                  ),

                  Container(

                    margin: EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: (){},
                      child: Image(image: AssetImage("image/ViewButton.png"), height: 20,),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 83,
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffF7F7F7),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    //width: Responsive.isSmallScreen(context)? width/2.5 : width/3,
                    margin: EdgeInsets.only(left: 20),
                    child: Text("Allergies",
                      style: TextStyle(
                        color: Color(0XFF929292),
                        fontSize: Responsive.isSmallScreen(context)? width/22 : width/35,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",

                      ),),
                  ),

                  Container(

                    margin: EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: (){},
                      child: Image(image: AssetImage("image/ViewButton.png"), height: 20,),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 83,
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffF7F7F7),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    //width: Responsive.isSmallScreen(context)? width/2.5 : width/3,
                    margin: EdgeInsets.only(left: 20),
                    child: Text("Illness or Surgeries",
                      style: TextStyle(
                        color: Color(0XFF929292),
                        fontSize: Responsive.isSmallScreen(context)? width/22 : width/35,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",

                      ),),
                  ),

                  Container(

                    margin: EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: (){},
                      child: Image(image: AssetImage("image/ViewButton.png"), height: 20,),
                    ),
                  )
                ],
              ),
            ),
          ),

          Center(
            child: Container(
              height: _mediaquery.size.height*0.070,
              width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
              margin: EdgeInsets.only(top: _mediaquery.size.height*0.02),
              child: ElevatedButton(
                onPressed:handleButtonPress,
                child: Image.asset('image/PlusButton.png',
                    color: isButtonPressed? Colors.black:imageColor,
                    height: _mediaquery.size.height*0.04) ,
                style: ElevatedButton.styleFrom(
                  backgroundColor:isButtonPressed ? buttonColor : Color(0xffF9F9F9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)
                  ),
                ),
              ),
            ),
          ),

        ],
      ),


    );
  }


}