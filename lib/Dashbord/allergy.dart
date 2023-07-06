import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/weightLoss.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';
import 'package:flutter/cupertino.dart';

class allergy extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return allergyState();
  }

}

class allergyState extends State<allergy>{
  int _selectedIndex = 0;
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

       Navigator.push(context, MaterialPageRoute(builder: (context)=> weightLoss(),));

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

                        child: Text("Medical ",style: new TextStyle( color: Colors.black,  fontSize: Responsive.isSmallScreen(context)? width/15 : width/30,
                            fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                      ),

                      Container(
                        margin:EdgeInsets.only(left:25),
                        //margin: EdgeInsets.only(left:30,),
                        child:Text("History ",style: new TextStyle(height:0.90,color: Colors.green, fontSize: Responsive.isSmallScreen(context)? width/15 : width/30, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
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
                        child: Image.asset('image/Doctor.png',height: _mediaquery.size.height*0.060
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
            margin: EdgeInsets.only(left: 20, top: 20, bottom: 10),
            child: Text("Have you ever had a allergy?",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
              ),),
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
    width:Responsive.isSmallScreen(context)? width/6 : width/6,

    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Image(image: AssetImage("image/Dogg.png"),),
    Text("Pet", softWrap:true,style: TextStyle(
      fontSize:Responsive.isSmallScreen(context)? width/25 : width/60,
    color: _isSelected[0] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
    ),),
    ],

    ),
    ),
    style: ElevatedButton.styleFrom(
    primary: _isSelected[0] ?  Color(0xff24B445) : Color(0xffF9F9F9),
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
    width:Responsive.isSmallScreen(context)? width/6 : width/6,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

    children: [
    Image(image: AssetImage("image/Drugs.png"),),
    Text("Drug", style: TextStyle(
      fontSize:Responsive.isSmallScreen(context)? width/25 : width/60,
    color: _isSelected[1] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
    ),),
    ],

    ),
    ),
    style: ElevatedButton.styleFrom(
    primary: _isSelected[1] ? Color(0xff24B445) : Color(0xffF9F9F9),
    onPrimary: Colors.white,
    ),
    onPressed: () {
    setState(() {
    _isSelected[1] = !_isSelected[1];
    });
    },
    ),
    ElevatedButton(
    child:Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(40),
    ),
    height: Responsive.isSmallScreen(context)? 20 : 40,
    width:Responsive.isSmallScreen(context)? width/5 : width/6,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Image(image: AssetImage("image/Latex.png"),),
    Text("Latex", style: TextStyle(
      fontSize:Responsive.isSmallScreen(context)? width/26 : width/60,

      color: _isSelected[2] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
    ),),
    ],

    ),
    ),
    style: ElevatedButton.styleFrom(
    primary: _isSelected[2] ?  Color(0xff24B445) : Color(0xffF9F9F9),
    onPrimary: Colors.white,
    ),
    onPressed: () {
    setState(() {
    _isSelected[2] = !_isSelected[2];
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
    width:Responsive.isSmallScreen(context)? width/5 : width/6,

    child: Row(

    children: [
    Image(image: AssetImage("image/Pollen.png"),),
    Text("Pollen", style: TextStyle(
      fontSize:Responsive.isSmallScreen(context)? width/25 : width/60,

      color: _isSelected[3] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
    ),),
    ],

    ),
    ),
    style: ElevatedButton.styleFrom(
    primary: _isSelected[3] ?  Color(0xff24B445) : Color(0xffF9F9F9),
    onPrimary: Colors.white,
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
    width:Responsive.isSmallScreen(context)? width/6 : width/6,
    child: Row(

    children: [
    Image(image: AssetImage("image/Food.png"),),
    Text("Food", style: TextStyle(
      fontSize:Responsive.isSmallScreen(context)? width/25 : width/60,

      color: _isSelected[4] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
    ),),
    ],

    ),
    ),
    style: ElevatedButton.styleFrom(
    primary: _isSelected[4] ?  Color(0xff24B445) : Color(0xffF9F9F9),
    onPrimary: Colors.white,
    ),
    onPressed: () {
    setState(() {
    _isSelected[4] = !_isSelected[4];
    });
    },
    ),
    ElevatedButton(
    child:Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(40),
    ),
    height: Responsive.isSmallScreen(context)? 20 : 40,
    width:Responsive.isSmallScreen(context)? width/5 : width/6,
    child: Row(

    children: [
    Image(image: AssetImage("image/Insect.png"),),
    Text("Insect", style: TextStyle(
      fontSize:Responsive.isSmallScreen(context)? width/25 : width/60,

      color: _isSelected[5] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
    ),),
    ],

    ),
    ),
    style: ElevatedButton.styleFrom(
    primary: _isSelected[5] ?  Color(0xff24B445) : Color(0xffF9F9F9),
    onPrimary: Colors.white,
    ),
    onPressed: () {
    setState(() {
    _isSelected[5] = !_isSelected[5];
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
    width:Responsive.isSmallScreen(context)? width/6 : width/6,

    child: Row(

    children: [
    Image(image: AssetImage("image/Dust.png"),),
    Text("Dust", style: TextStyle(
      fontSize:Responsive.isSmallScreen(context)? width/25 : width/60,

      color: _isSelected[6] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
    ),),
    ],

    ),
    ),
    style: ElevatedButton.styleFrom(
    primary: _isSelected[6] ?  Color(0xff24B445) : Color(0xffF9F9F9),
    onPrimary: Colors.white,
    ),
    onPressed: () {
    setState(() {
    _isSelected[6] = !_isSelected[6];
    });
    },
    ),
    ElevatedButton(
    style: ElevatedButton.styleFrom(
    foregroundColor: _isSelected[7] ?  Color(0xffFFFFFF) : Color(0xff4F555A).withOpacity(0.5), backgroundColor: _isSelected[7] ?  Color(0xff24B445) : Color(0xffF9F9F9),),
    child:Container(
    height: Responsive.isSmallScreen(context)? 20 : 40,
    width:Responsive.isSmallScreen(context)? width/5 : width/6,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(40),
    ),
    child: Row(

    children: [
    Image(image: AssetImage("image/OtherQue.png"),),
    Text("Other", style: TextStyle(
      fontSize:Responsive.isSmallScreen(context)? width/25 : width/60,

      color: _isSelected[7] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
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

          Visibility(
            visible: isselected,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Text("Add other details",
                    style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                      fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                      fontFamily: "Poppins",
                    ),),
                ),

                Container(
                  margin:EdgeInsets.only(left: 20,top: 10, right: 20),
                  child: Row(
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/1.15 : width/2,
                        height: 55,
                        child: TextField(
                          //    controller: _problemController,
                          decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide.none,),

                            hintText: "Problem",
                            hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

                          ),
                        ),
                      ),

                    ],
                  ),
                ),


              ],
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
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));
                  },
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


// class MultipleButtonSelection extends StatefulWidget {
//   @override
//   _MultipleButtonSelectionState createState() => _MultipleButtonSelectionState();
// }
//
// class _MultipleButtonSelectionState extends State<MultipleButtonSelection> {
//   List<bool> _isSelected = [false, false, false, false, false, false, false, false]; // Track the selection of each button
//   bool isselected = false;
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//
//     var _mediaquery = MediaQuery.of(context);
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ElevatedButton(
//               child:Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 height: Responsive.isSmallScreen(context)? 20 : 40,
//                 width:Responsive.isSmallScreen(context)? width/6 : width/6,
//
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Image(image: AssetImage("image/Dogg.png"),),
//                     Text("Pet", style: TextStyle(
//                       color: _isSelected[0] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
//                     ),),
//                   ],
//
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                 primary: _isSelected[0] ?  Color(0xff24B445) : Color(0xffF9F9F9),
//               //  onPrimary: Colors.white,
//               ),
//               onPressed: () {
//                 setState(() {
//                   _isSelected[0] = !_isSelected[0];
//                 });
//               },
//             ),
//             ElevatedButton(
//               child:Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 height: Responsive.isSmallScreen(context)? 20 : 40,
//                 width:Responsive.isSmallScreen(context)? width/6 : width/6,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//
//                   children: [
//                     Image(image: AssetImage("image/Drugs.png"),),
//                     Text("Drug", style: TextStyle(
//                       color: _isSelected[1] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
//                     ),),
//                   ],
//
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                 primary: _isSelected[1] ? Color(0xff24B445) : Color(0xffF9F9F9),
//                 onPrimary: Colors.white,
//               ),
//               onPressed: () {
//                 setState(() {
//                   _isSelected[1] = !_isSelected[1];
//                 });
//               },
//             ),
//             ElevatedButton(
//               child:Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 height: Responsive.isSmallScreen(context)? 20 : 40,
//                 width:Responsive.isSmallScreen(context)? width/6 : width/6,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Image(image: AssetImage("image/Latex.png"),),
//                     Text("Latex", style: TextStyle(
//                       color: _isSelected[2] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
//                     ),),
//                   ],
//
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                 primary: _isSelected[2] ?  Color(0xff24B445) : Color(0xffF9F9F9),
//                 onPrimary: Colors.white,
//               ),
//               onPressed: () {
//                 setState(() {
//                   _isSelected[2] = !_isSelected[2];
//                 });
//               },
//             ),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ElevatedButton(
//               child:Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 height: Responsive.isSmallScreen(context)? 20 : 40,
//                 width:Responsive.isSmallScreen(context)? width/5 : width/6,
//
//                 child: Row(
//
//                   children: [
//                     Image(image: AssetImage("image/Pollen.png"),),
//                     Text("Pollen", style: TextStyle(
//                       color: _isSelected[3] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
//                     ),),
//                   ],
//
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                 primary: _isSelected[3] ?  Color(0xff24B445) : Color(0xffF9F9F9),
//                 onPrimary: Colors.white,
//               ),
//               onPressed: () {
//                 setState(() {
//                   _isSelected[3] = !_isSelected[3];
//                 });
//               },
//             ),
//             ElevatedButton(
//               child:Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 height: Responsive.isSmallScreen(context)? 20 : 40,
//                 width:Responsive.isSmallScreen(context)? width/6 : width/6,
//                 child: Row(
//
//                   children: [
//                     Image(image: AssetImage("image/Food.png"),),
//                     Text("Food", style: TextStyle(
//                       color: _isSelected[3] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
//                     ),),
//                   ],
//
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                 primary: _isSelected[4] ?  Color(0xff24B445) : Color(0xffF9F9F9),
//                 onPrimary: Colors.white,
//               ),
//               onPressed: () {
//                 setState(() {
//                   _isSelected[4] = !_isSelected[4];
//                 });
//               },
//             ),
//             ElevatedButton(
//               child:Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 height: Responsive.isSmallScreen(context)? 20 : 40,
//                 width:Responsive.isSmallScreen(context)? width/5 : width/6,
//                 child: Row(
//
//                   children: [
//                     Image(image: AssetImage("image/Insect.png"),),
//                     Text("Insect", style: TextStyle(
//                       color: _isSelected[5] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
//                     ),),
//                   ],
//
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                 primary: _isSelected[5] ?  Color(0xff24B445) : Color(0xffF9F9F9),
//                 onPrimary: Colors.white,
//               ),
//               onPressed: () {
//                 setState(() {
//                   _isSelected[5] = !_isSelected[5];
//                 });
//               },
//             ),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ElevatedButton(
//               child:Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 height: Responsive.isSmallScreen(context)? 20 : 40,
//                 width:Responsive.isSmallScreen(context)? width/6 : width/6,
//
//                 child: Row(
//
//                   children: [
//                     Image(image: AssetImage("image/Dust.png"),),
//                     Text("Dust", style: TextStyle(
//                       color: _isSelected[6] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
//                     ),),
//                   ],
//
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                 primary: _isSelected[6] ?  Color(0xff24B445) : Color(0xffF9F9F9),
//                 onPrimary: Colors.white,
//               ),
//               onPressed: () {
//                 setState(() {
//                   _isSelected[6] = !_isSelected[6];
//                 });
//               },
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 primary: _isSelected[7] ?  Color(0xff24B445) : Color(0xffF9F9F9),
//                 onPrimary: _isSelected[7] ?  Color(0xffFFFFFF) : Color(0xff4F555A).withOpacity(0.5),),
//               child:Container(
//                 height: Responsive.isSmallScreen(context)? 20 : 40,
//                 width:Responsive.isSmallScreen(context)? width/5 : width/6,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//         child: Row(
//
//        children: [
//          Image(image: AssetImage("image/OtherQue.png"),),
//          Text("Other", style: TextStyle(
//            color: _isSelected[7] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
//          ),),
//        ],
//
//           ),
//         ),
//
//               onPressed: () {
//                 setState(() {
//                   _isSelected[7] = !_isSelected[7];
//                   onselected,
//                  });
//               },
//             ),
//
//           ],
//         ),
//       ],
//     );
//   }
//
//
// }

