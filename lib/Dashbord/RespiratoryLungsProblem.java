import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';


class RespiratoryLungsProblem extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RespiratoryLungsProblemState();
  }

}

class RespiratoryLungsProblemState extends State<RespiratoryLungsProblem>{
  List<bool> _isSelected = [false, false, false, false, false, false, false, false]; // Track the selection of each button
  bool isselected = false;
  Color imageColor = Color(0xff4F555A).withOpacity(0.5);
  Color buttonColor = Colors.black; // Initial color of the button
  bool isButtonPressed = false;

  void onselected(){
    setState(() {
      _isSelected[7] = !_isSelected[7];
      isselected = !isselected;
    });
  }

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

    //  Navigator.push(context, MaterialPageRoute(builder: (context)=> AbdominalDigestive(),));

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
   ),

   body: ListView(
     children: [
   Container(
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

               child: Text("Respiratory /",style: new TextStyle( color: Colors.black,
                   fontSize: Responsive.isSmallScreen(context)? width/20 : width/30,
                   fontWeight: FontWeight.w400,fontFamily: 'Poppins'),),
             ),

             Container(
               margin: EdgeInsets.only(left:25 ),
               //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
               child:RichText(
                 text: TextSpan(
                   text: "Lungs ",
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: Responsive.isSmallScreen(context)? width/17: width/30,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w400,
                   ),
                   children: <TextSpan>[
                     TextSpan(
                       text: 'Problem',
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
               child: Image.asset('image/lungs.png',height: _mediaquery.size.height*0.060
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

       Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               ElevatedButton(
                 child:Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                   ),
                   height: Responsive.isSmallScreen(context)? 20 : 40,
                   width: Responsive.isSmallScreen(context)? width/2.8 : width/4.2,

                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [

                       Text("Hair Fall", style: TextStyle(
                         color: _isSelected[0] ?   Color(0xff24B445): Color(0xff4F555A).withOpacity(0.5),
                       ),),
                     ],

                   ),
                 ),
                 style: ElevatedButton.styleFrom(
                   primary: _isSelected[0] ?  Colors.white : Color(0xffF7F7F7),
                   onPrimary: _isSelected[0] ?  Color(0xffFFFFFF) : Color(0xff4F555A).withOpacity(0.5),
                   shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0),
                       side: BorderSide(width:1,  color: _isSelected[0] ? Color(0xff24B445): Colors.transparent)),
                   //  onPrimary: Colors.white,
                 ),
                 onPressed: () {
                   setState(() {
                     _isSelected[0] = !_isSelected[0];
                   });
                 },
               ),
               ElevatedButton(
                 child:Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                   ),
                   height: Responsive.isSmallScreen(context)? 20 : 40,
                   width: Responsive.isSmallScreen(context)? width/2.8 : width/4.2,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                     children: [
                       //   Image(image: AssetImage("image/Drugs.png"),),
                       Text("Hair Color", style: TextStyle(
                         color: _isSelected[1] ?  Color(0xff24B445): Color(0xff4F555A).withOpacity(0.5),
                       ),),
                     ],

                   ),
                 ),
                 style: ElevatedButton.styleFrom(
                   primary: _isSelected[1] ?  Colors.white : Color(0xffF7F7F7),
                   onPrimary: _isSelected[1] ?  Color(0xffFFFFFF) : Color(0xff4F555A).withOpacity(0.5),
                   shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0),
                       side: BorderSide(width:1,  color: _isSelected[1] ? Color(0xff24B445): Colors.transparent)),
                 ),
                 onPressed: () {
                   setState(() {
                     _isSelected[1] = !_isSelected[1];
                   });
                 },
               ),

             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               ElevatedButton(
                 child:Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                   ),
                   height: Responsive.isSmallScreen(context)? 20 : 40,
                   width: Responsive.isSmallScreen(context)? width/2.8 : width/4.2,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                     children: [
                       //  Image(image: AssetImage("image/Venereal.png"),),
                       Text("Nail color", style: TextStyle(
                         color: _isSelected[3] ?  Color(0xff24B445): Color(0xff4F555A).withOpacity(0.5),
                       ),),
                     ],

                   ),
                 ),
                 style: ElevatedButton.styleFrom(
                   primary: _isSelected[3] ?  Colors.white : Color(0xffF7F7F7),
                   onPrimary: _isSelected[3] ?  Color(0xffFFFFFF) : Color(0xff4F555A).withOpacity(0.5),
                   shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0),
                       side: BorderSide(width:1,  color: _isSelected[3] ? Color(0xff24B445): Colors.transparent)),
                 ),
                 onPressed: () {
                   setState(() {
                     _isSelected[3] = !_isSelected[3];
                   });
                 },
               ),
               ElevatedButton(
                 child:Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                   ),
                   height: Responsive.isSmallScreen(context)? 20 : 40,
                   width: Responsive.isSmallScreen(context)? width/2.8 : width/4.2,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                     children: [
                       //  Image(image: AssetImage("image/TB.png"),),
                       Text("Nails Shape", style: TextStyle(
                         color: _isSelected[4] ?   Color(0xff24B445): Color(0xff4F555A).withOpacity(0.5),
                       ),),
                     ],

                   ),
                 ),
                 style: ElevatedButton.styleFrom(
                   primary: _isSelected[4] ?  Colors.white : Color(0xffF7F7F7),
                   onPrimary: _isSelected[4] ?  Color(0xffFFFFFF) : Color(0xff4F555A).withOpacity(0.5),
                   shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0),
                       side: BorderSide(width:1,  color: _isSelected[4] ? Color(0xff24B445): Colors.transparent)),

                 ),
                 onPressed: () {
                   setState(() {
                     _isSelected[4] = !_isSelected[4];
                   });
                 },
               ),

             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               ElevatedButton(
                 child:Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                   ),
                   height: Responsive.isSmallScreen(context)? 20 : 40,
                   width: Responsive.isSmallScreen(context)? width/2.8 : width/4.2,

                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                     children: [
                       //   Image(image: AssetImage("image/HIV.png"),),
                       Text("Nail fragileness", style: TextStyle(
                         color: _isSelected[6] ?  Color(0xff24B445): Color(0xff4F555A).withOpacity(0.5),
                       ),),
                     ],

                   ),
                 ),
                 style: ElevatedButton.styleFrom(
                   primary: _isSelected[6] ?  Colors.white : Color(0xffF7F7F7),
                   onPrimary: _isSelected[6] ?  Color(0xffFFFFFF) : Color(0xff4F555A).withOpacity(0.5),
                   shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0),
                       side: BorderSide(width:1,  color: _isSelected[6] ? Color(0xff24B445): Colors.transparent)),

                 ),
                 onPressed: () {
                   setState(() {
                     _isSelected[6] = !_isSelected[6];
                   });
                 },
               ),
               ElevatedButton(

                 // style: ElevatedButton.styleFrom(
                 //                  shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                 //                  primary: selectedButton== ButtonState.Button6 ? Colors.white:  Color(0xffF7F7F7),
                 //                  elevation: 0,
                 //                  side: BorderSide(width:1,  color: selectedButton== ButtonState.Button6 ? Color(0xff24B445): Colors.transparent),
                 //                ),
                 //




                 style: ElevatedButton.styleFrom(

                   primary: _isSelected[7] ?  Colors.white : Color(0xffF7F7F7),
                   onPrimary: _isSelected[7] ?  Color(0xffFFFFFF) : Color(0xff4F555A).withOpacity(0.5),
                   shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0),
                       side: BorderSide(width:1,  color: _isSelected[7] ? Color(0xff24B445): Colors.transparent)),
                 ),
                 child:Container(
                   height: Responsive.isSmallScreen(context)? 20 : 40,
                   width: Responsive.isSmallScreen(context)? width/2.8 : width/4.2,

                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                     children: [
                       //       Image(image: AssetImage("image/OtherQue.png"),),
                       Text("Other", style: TextStyle(
                         color: _isSelected[7] ?  Color(0xff24B445): Color(0xff4F555A).withOpacity(0.5),
                       ),),
                     ],

                   ),
                 ),

                 onPressed: onselected,
               ),

             ],
           ),
         ],
       ),







    ]
   ),
 );



  }


}