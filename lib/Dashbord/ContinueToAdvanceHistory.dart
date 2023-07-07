import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/HEAD.dart';
import 'package:project_signup_page/Dashbord/Questionnaires.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';


class ContinueToAdvanceHistory extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContinueToAdvanceHistoryState();
  }

}

class ContinueToAdvanceHistoryState extends State<ContinueToAdvanceHistory>{
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

     Navigator.push(context, MaterialPageRoute(builder: (context)=> HEAD(),));

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
   Center(
     child: Container(
       margin: EdgeInsets.only(left:0,top:20.0 ),
       //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
       child:RichText(
         text: TextSpan(
           text: "Continue to ",
           style: TextStyle(
             color: Colors.black,
             fontSize: Responsive.isSmallScreen(context)? width/17: width/30,
             fontFamily: 'Poppins',
             fontWeight: FontWeight.w400,
           ),
           children: <TextSpan>[
             TextSpan(
               text: 'Advance history',
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
     margin: EdgeInsets.only(left: 20,right: 20, top: 15),
     child: Center(
       child: Text(
         textAlign: TextAlign.center,
         "Note: minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
         style:TextStyle(
           color: Colors.black,
           fontSize: Responsive.isSmallScreen(context)? width/30: width/50,
           fontFamily: 'Poppins',
           fontWeight: FontWeight.w400,
         ),
       ),
     ),
   ),

   Container(
     margin: EdgeInsets.only(left: 20,right: 20, top: 20),
     child: Center(
       child: Text(
         textAlign: TextAlign.center,
         "Note: minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.Note: minim mollit non deserunt ullamco est sit aliqua dolor do",
         style:TextStyle(
           color: Color(0xff929292),
           fontSize: Responsive.isSmallScreen(context)? width/32: width/50,
           fontFamily: 'Poppins',
           fontWeight: FontWeight.w400,
         ),
       ),
     ),
   ),

Padding(padding: EdgeInsets.only(top: 200)),

   Center(
     child: Container(
       height: _mediaquery.size.height*0.070,
       width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
       margin: EdgeInsets.only(top: _mediaquery.size.height*0.1),
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