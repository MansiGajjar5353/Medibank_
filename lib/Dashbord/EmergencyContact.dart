import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/MedicalHistory.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class EmergencyContact extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return EmergencyContactState();
  }


}

class EmergencyContactState extends State<EmergencyContact>{
  int radioValue = 1;
  bool showTextfield = false;
  void handleRadioValueChanged(int? value){
    setState(() {
      radioValue = value! ;

      switch (radioValue){
        case 0:
          showTextfield = true;
          break;

        case 1:
          showTextfield = false;
          break;

      }

    });
  }


  int radioValue1 = 1;
  bool showTextfield1 = true;
  void handleRadioValueChanged1(int? value){
    setState(() {
      radioValue1 = value! ;

      switch (radioValue1){
        case 0:
          showTextfield1 = false;
          break;

        case 1:
          showTextfield1 = true;
          break;

      }

    });
  }


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

      Navigator.push(context, MaterialPageRoute(builder: (context)=> MedicalHistory(),));

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
        title: Center(
          child: Container(padding: EdgeInsets.only(right: 30),
              child: Image(image: AssetImage("image/MedibankLOGO.png",),
                  width: Responsive.isSmallScreen(context)? width/2.3: width/4)),
        ),
        //                margin: EdgeInsets.only(left:0,top:10.0 ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left:0,top:10.0 ),
            // height: _mediaquery.size.height*0.13,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        margin:EdgeInsets.only(left:25),

                        child: Text("General ",style: new TextStyle( color: Colors.black,  fontSize: Responsive.isSmallScreen(context)? width/15 : width/30,
                            fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                      ),

                      Container(
                        margin:EdgeInsets.only(left:25),
                        //margin: EdgeInsets.only(left:30,),
                        child:Text("Information ",style: new TextStyle(height:0.90,color: Colors.green, fontSize: Responsive.isSmallScreen(context)? width/15 : width/30, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                      ),

                      Container(
                        margin:EdgeInsets.only(left:25),
                        child: Text("Note: minim mollit non deserunt ullamco ",style:new TextStyle( color: Color(0xff929292), fontSize: Responsive.isSmallScreen(context)? width/46 : width/60, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                      ),

                      Container(
                        margin:EdgeInsets.only(left:25),
                        child: Text("est sit aliqua dolor do amet sint. ",style:new TextStyle( color: Color(0xff929292), fontSize: Responsive.isSmallScreen(context)? width/46 : width/60, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                      ),
                    ],
                  ), ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child:Column(
                    children: [

                      Container(
                        child: Image.asset('image/i.png',height: _mediaquery.size.height*0.080
                        ),
                      ),



                      Container(
                        margin: EdgeInsets.only(top: _mediaquery.size.height*0.01),
                        child:RichText(
                          text: TextSpan(
                            text: 'category ',
                            style: TextStyle(
                              color: Color(0xff929292),
                              fontSize: Responsive.isSmallScreen(context)?width/35 : width/60,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '4/12',
                                style: TextStyle(
                                  color: Color(0xff24B445),
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left:0,top:40.0 ),
              //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
              child:RichText(
                text: TextSpan(
                  text: "Emergency ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: Responsive.isSmallScreen(context)? width/16: width/30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Contact',
                      style: TextStyle(
                        color: Color(0xff24B445),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',

                      ),
                    ),
                  ],
                ),
              ),
              // child:Text("We need to verify your Number?",style: new TextStyle(height:0.90,color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 30),
            child: Text("Should anybody else can be contacted regarding appointments and other matters",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: Responsive.isSmallScreen(context)? width/32 : width/50),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children:<Widget> [
                new Radio<int>(
                    activeColor: Colors.green,
                    value:0 , groupValue: radioValue,onChanged: handleRadioValueChanged),

                new Text(
                  "Yes",
                  style: new TextStyle(),


                ),

                new Radio<int>(
                    activeColor: Colors.green,
                    value: 1, groupValue: radioValue, onChanged: handleRadioValueChanged),

                new Text(
                  "No",
                  style: new TextStyle(),
                ),

              ],
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 20)),
          Center(
            child: Visibility(
              visible: showTextfield,
              child: Container(
                margin: EdgeInsets.only(right: 20.0),
                padding: EdgeInsets.only(left:20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35), // set the border radius
                  //border: Border.all(),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(

                      // controller: _userController,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Full Name",

                        labelText: "Name",
                        labelStyle: TextStyle(color: Colors.green,),
                        hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),
                            fontSize: Responsive.isSmallScreen(context)? width/25 : width/60),

                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    TextField(

                      // controller: _userController,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Number",

                        labelText: "Contact Number",
                        labelStyle: TextStyle(color: Colors.green,),
                        hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),
                            fontSize: Responsive.isSmallScreen(context)? width/25 : width/60),

                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    TextField(

                      // controller: _userController,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "abc@gmail.com",

                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.green,),
                        hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),
                            fontSize: Responsive.isSmallScreen(context)? width/25 : width/60),

                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text("Address is same as Patient?",
                        style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: Responsive.isSmallScreen(context)? width/32 : width/50),
                      ),
                    ),

                    Container(
                   //   margin: EdgeInsets.only(left: 10),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children:<Widget> [
                          new Radio<int>(
                              activeColor: Colors.green,
                              value:0 , groupValue: radioValue1,onChanged: handleRadioValueChanged1),

                          new Text(
                            "Yes",
                            style: new TextStyle(),


                          ),

                          new Radio<int>(
                              activeColor: Colors.green,
                              value: 1, groupValue: radioValue1, onChanged: handleRadioValueChanged1),

                          new Text(
                            "No",
                            style: new TextStyle(),
                          ),

                        ],
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(top: 20)),
                    Center(
                      child: Visibility(
                        visible: showTextfield1,
                        child: Container(
                          // margin: EdgeInsets.only(right: 20.0),
                          // padding: EdgeInsets.only(left:20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35), // set the border radius
                            //border: Border.all(),
                          ),
                          child: Column(
                            children: [
                              TextField(

                                // controller: _userController,
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                  filled: true,
                                  fillColor: Color(0xffF9F9F9),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: "Residential Address",

                                  labelText: "Address",
                                  labelStyle: TextStyle(color: Colors.green,),
                                  hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/25 : width/60),

                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              TextField(

                                // controller: _userController,
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                  filled: true,
                                  fillColor: Color(0xffF9F9F9),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: "Ahmedabad",

                                  labelText: "City",
                                  labelStyle: TextStyle(color: Colors.green,),
                                  hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/25 : width/60),

                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),





          Padding(padding: EdgeInsets.only(top: 30)),
          Center(
            child: Container(
              height: _mediaquery.size.height*0.070,
              width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
              margin: EdgeInsets.only(top: _mediaquery.size.height*0.02),
              child: ElevatedButton(
                onPressed:handleButtonPress,
                child: Image.asset('image/AerrowRight.png',
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

          Padding(padding: EdgeInsets.only(top: 20)),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Skip to ",
                  style: TextStyle(
                    color: Color(0xffACADAC),
                    fontSize: Responsive.isSmallScreen(context)?width/30 : width/45,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));},
                  child: Text("Dashboard",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: Responsive.isSmallScreen(context)?width/30 : width/45,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}