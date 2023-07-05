import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/illnessSurgery.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

import 'Dashbord.dart';

class Sleep2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Sleep2State();
  }

}

class Sleep2State extends State<Sleep2>{
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
      Navigator.push(context,MaterialPageRoute(builder: (context)=>illnessSurgery(),));
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
                 margin:EdgeInsets.only(left:25),

                 child: Text("Constitutional /",style: new TextStyle( color: Colors.black,  fontSize: Responsive.isSmallScreen(context)? width/18 : width/30,
                     fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
               ),

               Container(
                 margin:EdgeInsets.only(left:25),
                 //margin: EdgeInsets.only(left:30,),
                 child:Text("Systematic",style: new TextStyle(height:0.90,color: Colors.green, fontSize: Responsive.isSmallScreen(context)? width/18 : width/30, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
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
                 child: Image.asset('image/systematization.png',height: _mediaquery.size.height*0.060
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
                         text: '1/4',
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
    text: "Medical ",
    style: TextStyle(
    color: Colors.black,
    fontSize: Responsive.isSmallScreen(context)? width/16: width/30,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    ),
    children: <TextSpan>[
    TextSpan(
    text: 'Information',
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
           margin: EdgeInsets.only(left: 20, top: 20, bottom: 10, right: 20),
           child: Center(
             child: Text("Do you sleep peacefully?",
               style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                 fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                 fontFamily: "Poppins",
               ),),
           ),
         ),


         ButtonGroup(),



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

    ]
     ),
   );
  }
}



 // Initial selected button
enum ButtonState { Button1, Button2, Button3 }

class ButtonGroup extends StatefulWidget {
  @override
  _ButtonGroupState createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    return Container(
       margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 150),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: Responsive.isSmallScreen(context)? width/3.5 : width/6,
              child: ElevatedButton(

                onPressed: () {
                  onButtonPressed(ButtonState.Button1);
                },

                style: ElevatedButton.styleFrom(
                  primary: Color(0xffF7F7F7),
                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Colors.transparent),
                ),

                child: Container(

                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    children: [
                      Text('Peaceful', style: TextStyle(color: Colors.black, fontSize: Responsive.isSmallScreen(context)? width/27 : width/50),
                      ),
                      Image(image: AssetImage("image/Peaceful.png"), height:
                      Responsive.isSmallScreen(context)
                          ? 50
                          : 60),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              child: ElevatedButton(

                onPressed: () {
                  onButtonPressed(ButtonState.Button2);
                },

                style: ElevatedButton.styleFrom(
                  primary: Color(0xffF7F7F7),
                  side: BorderSide(width:1,  color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Colors.transparent),
                ),

                child: Container(

                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    children: [
                      Text('Mixed', style: TextStyle(color: Colors.black,  fontSize: Responsive.isSmallScreen(context)? width/27 : width/50),
                      ),
                      Image(image: AssetImage("image/Sad.png"),
                          height: Responsive.isSmallScreen(context)
                                ? 50
                                : 60),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(

                onPressed: () {
                  onButtonPressed(ButtonState.Button3);
                },

                style: ElevatedButton.styleFrom(
                  primary: Color(0xffF7F7F7),
                  side: BorderSide(width:1,  color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Colors.transparent),
                ),

                child: Container(

                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    children: [
                      Text('Disturbed', style: TextStyle(color: Colors.black,
                          fontSize: Responsive.isSmallScreen(context)? width/27 : width/50),
                      ),
                      Image(image: AssetImage("image/Cry.png"),
                          height: Responsive.isSmallScreen(context)
                          ? 50
                          : 60),
                    ],
                  ),
                ),
              ),
            ),


            // ElevatedButton(
            //   onPressed: () {
            //     onButtonPressed(ButtonState.Button2);
            //   },
            //   style: ElevatedButton.styleFrom(
            //     primary: selectedButton == ButtonState.Button2
            //         ? Colors.blue
            //         : Colors.grey,
            //   ),
            //   child: Text('Button 2'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     onButtonPressed(ButtonState.Button3);
            //   },
            //   style: ElevatedButton.styleFrom(
            //     primary: selectedButton == ButtonState.Button3
            //         ? Colors.blue
            //         : Colors.grey,
            //   ),
            //   child: Text('Button 3'),
            // ),
          ],
        ),

    );
  }

  void onButtonPressed(ButtonState buttonState) {
    setState(() {
      selectedButton = buttonState;
    });
  }
}
