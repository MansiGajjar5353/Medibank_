import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/ForMan.dart';
import 'package:project_signup_page/Dashbord/Neurological.dart';
import 'package:project_signup_page/Dashbord/Questionnaires.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';


class EndocrineGlandular extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EndocrineGlandularState();
    
  }
  
}

class EndocrineGlandularState extends State<EndocrineGlandular>{
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
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Neurological(),));
      // Perform navigation after the delay

    });
  }




  int radioValue = 1;
  int radioValue1 = 1;
  int radioValue2 = 1;




  bool showTextfield = false;
  bool showTextfield1 = false;
  bool showTextfield2 = false;




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

        case 2:
          showTextfield = false;
          break;
      }

    });
  }
  void handleRadioValueChanged1(int? value){
    setState(() {
      radioValue1 = value! ;

      switch (radioValue1){
        case 0:
          showTextfield1 = true;
          break;

        case 1:
          showTextfield1 = false;

          break;

        case 2:
          showTextfield1 = false;

          break;
      }

    });
  }
  void handleRadioValueChanged2(int? value){
    setState(() {
      radioValue2 = value! ;

      switch (radioValue2){
        case 0:
          showTextfield2 = true;

          break;

        case 1:
          showTextfield2 = false;

          break;

        case 2:
          showTextfield2 = false;

          break;
      }

    });
  }


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
      ),        title:



    Align(
      alignment: Alignment.center,
      child: Image(image: AssetImage("image/MedibankLOGO.png",),
          width: Responsive.isSmallScreen(context)? width/2.3: width/4),
    ),
      actions: [
        Padding(padding: EdgeInsets.only(bottom: 10),),

        Align(alignment: Alignment.bottomRight,

          child: Container(
            margin: EdgeInsets.only(bottom: Responsive.isSmallScreen(context)? width/80: width/100, right: 10),
            child: InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Questionnaires(),));},
              child: Image(image: AssetImage("image/DashboardImage.png"),
                height:  Responsive.isSmallScreen(context)? width/15: width/30,
              ),
            ),
          ),
        ),
      ],

    ),

    body: ListView(
      children: [
    Container(
    // height: _mediaquery.size.height*0.13,
      margin: EdgeInsets.only(left:0,top:10.0 ),
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
                margin: EdgeInsets.only(left:25 ),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child:RichText(
                  text: TextSpan(
                    text: "Endocrine / ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Responsive.isSmallScreen(context)? width/17: width/30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Glandular',
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
                child: Image.asset('image/endocrine1.png',height: _mediaquery.size.height*0.060
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
                        text: '1/2',
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

        Container(
          margin: EdgeInsets.only(left: 20, top:40, right: 20),
          child: Text("Do you suffer form thyroid problems or goiter?",
            style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
              fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
              fontFamily: "Poppins",
            ),),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 40),
          child: Row(

            children:<Widget> [
              Row(
                children: [
                  Radio<int>(
                      activeColor: Colors.green,
                      value:0 ,
                      groupValue: radioValue,
                      onChanged: handleRadioValueChanged),
                  Text(
                    "Yes",
                    style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                  ),
                ],
              ),



              Row(
                children: [
                  Radio<int>(
                      activeColor: Colors.green,
                      value: 1,
                      groupValue: radioValue,
                      onChanged: handleRadioValueChanged),

                  Text(
                    "No",
                    style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                  ),
                ],
              ),


            ],
          ),
        ),
        Visibility(
          visible: showTextfield,
          child: Container(
            margin: EdgeInsets.only(left: 20, top: 10, right: 20),
            width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
            height: 50,
            child: TextField(
              //    controller: _problemController,
              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                filled: true,
                fillColor: Color(0xffF9F9F9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide.none,),

                hintText: "From Which year",
                hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

              ),
            ),
          ),

        ),


        Container(
          margin: EdgeInsets.only(left: 20, top:20, right: 20),
          child: Text("Do you suffer form diabetes?",
            style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
              fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
              fontFamily: "Poppins",
            ),),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 40),
          child: Row(
            children:<Widget> [
              Row(
                children: [
                  Radio<int>(
                      activeColor: Colors.green,
                      value:0 ,
                      groupValue: radioValue1,
                      onChanged: handleRadioValueChanged1),
                  Text(
                    "Yes",
                    style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                  ),
                ],
              ),



              Row(
                children: [
                  Radio<int>(
                      activeColor: Colors.green,
                      value: 1,
                      groupValue: radioValue1,
                      onChanged: handleRadioValueChanged1),

                  Text(
                    "No",
                    style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Visibility(
          visible: showTextfield1,
          child: Container(
            margin: EdgeInsets.only(left: 20, top: 10, right: 20),
            width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
            height: 50,
            child: TextField(
              //    controller: _problemController,
              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                filled: true,
                fillColor: Color(0xffF9F9F9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide.none,),

                hintText: "From Which year",
                hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

              ),
            ),
          ),

        ),



        Container(
          margin: EdgeInsets.only(left: 20, top:20, right: 20),
          child: Text("Have you ever had steroids?",
            style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
              fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
              fontFamily: "Poppins",
            ),),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 40),
          child: Row(
            children:<Widget> [
              Row(
                children: [
                  Radio<int>(
                      activeColor: Colors.green,
                      value:0 ,
                      groupValue: radioValue2,
                      onChanged: handleRadioValueChanged2),
                  Text(
                    "Yes",
                    style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                  ),
                ],
              ),



              Row(
                children: [
                  Radio<int>(
                      activeColor: Colors.green,
                      value: 1,
                      groupValue: radioValue2,
                      onChanged: handleRadioValueChanged2),

                  Text(
                    "No",
                    style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                  ),
                ],
              ),


            ],
          ),
        ),
        Visibility(
          visible: showTextfield2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
                height: 50,
                child: TextField(
                  //    controller: _problemController,
                  decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    filled: true,
                    fillColor: Color(0xffF9F9F9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none,),

                    hintText: "From Which year",
                    hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
                height: 50,
                child: TextField(
                  //    controller: _problemController,
                  decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    filled: true,
                    fillColor: Color(0xffF9F9F9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none,),

                    hintText: "For how many days?",
                    hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

                  ),
                ),
              ),
            ],
          ),

        ),

        Padding(padding: EdgeInsets.only(top: 20)),
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
        Padding(padding: EdgeInsets.only(top: 20)),
    ]
    ),
  ) ;




  }
}