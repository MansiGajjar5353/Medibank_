import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/AbdominalDigestive.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/Questionnaires.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';


class DermatologySkin extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DermatologySkinState();
  }

}

class DermatologySkinState extends State<DermatologySkin>{
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

      Navigator.push(context, MaterialPageRoute(builder: (context)=> AbdominalDigestive(),));

    });
  }
  bool showTextfield = false;
  int radioValue = 1;
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
              margin:EdgeInsets.only(left:25),

              child: Text("Dermatology / Skin",style: new TextStyle( color: Colors.black,  fontSize: Responsive.isSmallScreen(context)? width/20 : width/30,
                  fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
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
              child: Image.asset('image/Skin1.png',height: _mediaquery.size.height*0.060
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
                      text: '2/12',
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
        margin: EdgeInsets.only(left: 20, top:40),
        child: Text("Do you suffer with headache or migraine?",
          style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
            fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
            fontFamily: "Poppins",
          ),),
      ),
      Container(
        margin: EdgeInsets.only(left: 10, right: 40),
        child: Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5),),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            child:  Container(
                margin: EdgeInsets.only(left: 20, top:20),
                child: Text("Have you noticed any change with your",
                  style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                    fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                    fontFamily: "Poppins",
                  ),),
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

            Visibility(
              visible: isselected,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


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

                              hintText: "If other type here..",
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
          ],
        ),


      ),


      Padding(padding: EdgeInsets.only(top: 80)),
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
    );

  }
}




// enum ButtonState { Button1, Button2, Button3, Button4, Button5, Button6,  }
//
// class ButtonGroup extends StatefulWidget {
//   @override
//   _ButtonGroupState createState() => _ButtonGroupState();
// }
//
// class _ButtonGroupState extends State<ButtonGroup> {
//   ButtonState selectedButton = ButtonState.Button1;
//   bool ShowTextField = false;
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//
//
//     var _mediaquery = MediaQuery.of(context);
//     return Container(
//       margin: EdgeInsets.only(left: 20, right: 20, top: 20, ),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 width: Responsive.isSmallScreen(context)? width/2.8 : width/4.2,
//                 child: ElevatedButton(
//
//                   onPressed: () {
//                     onButtonPressed(ButtonState.Button1);
//                   },
//
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
//                     primary: selectedButton== ButtonState.Button1 ? Colors.white:  Color(0xffF7F7F7),
//                     elevation: 0,
//                     side: BorderSide(width:1,  color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Colors.transparent),
//                   ),
//
//                   child: Container(
//
//                     margin: EdgeInsets.only(top: 10, bottom: 10),
//                     child: Column(
//                       children: [
//                         Text('Hair Fall', style: TextStyle(color:selectedButton== ButtonState.Button1 ? Color(0xff4F555A): Color(0xff4F555A).withOpacity(0.5) ),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//
//               Container(
//                 width: Responsive.isSmallScreen(context)? width/2.8 : width/4.2,
//                 child: ElevatedButton(
//
//                   onPressed: () {
//                     onButtonPressed(ButtonState.Button2);
//                   },
//
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
//                     primary: selectedButton== ButtonState.Button2 ? Colors.white:  Color(0xffF7F7F7),
//                     elevation: 0,
//                     side: BorderSide(width:1,  color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Colors.transparent),
//                   ),
//                   child: Container(
//
//                     margin: EdgeInsets.only(top: 10, bottom: 10),
//                     child: Column(
//                       children: [
//                         Text('Hair color', style: TextStyle(color:selectedButton== ButtonState.Button2 ? Color(0xff4F555A): Color(0xff4F555A).withOpacity(0.5)),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 width: Responsive.isSmallScreen(context)? width/2.8 : width/4.2,
//                 child: ElevatedButton(
//
//                   onPressed: () {
//                     onButtonPressed(ButtonState.Button3);
//                   },
//
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
//                     primary: selectedButton== ButtonState.Button3 ? Colors.white:  Color(0xffF7F7F7),
//                     elevation: 0,
//                     side: BorderSide(width:1,  color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Colors.transparent),
//                   ),
//
//                   child: Container(
//
//                     margin: EdgeInsets.only(top: 10, bottom: 10),
//                     child: Column(
//                       children: [
//                         Text('Nail color', style: TextStyle(color:selectedButton== ButtonState.Button3 ? Color(0xff4F555A): Color(0xff4F555A).withOpacity(0.5) ),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//
//               Container(
//                 width: Responsive.isSmallScreen(context)? width/2.8 : width/4.2,
//                 child: ElevatedButton(
//
//                   onPressed: () {
//                     onButtonPressed(ButtonState.Button4);
//                   },
//
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
//                     primary: selectedButton== ButtonState.Button4 ? Colors.white:  Color(0xffF7F7F7),
//                     elevation: 0,
//                     side: BorderSide(width:1,  color: selectedButton== ButtonState.Button4 ? Color(0xff24B445): Colors.transparent),
//                   ),
//                   child: Container(
//
//                     margin: EdgeInsets.only(top: 10, bottom: 10),
//                     child: Column(
//                       children: [
//                         Text('Nails Shape', style: TextStyle(color:selectedButton== ButtonState.Button4 ? Color(0xff4F555A): Color(0xff4F555A).withOpacity(0.5)),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 width: Responsive.isSmallScreen(context)? width/2.2 : width/4.2,
//                 child: ElevatedButton(
//
//                   onPressed: () {
//                     onButtonPressed(ButtonState.Button5);
//                   },
//
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
//                     primary: selectedButton== ButtonState.Button5 ? Colors.white:  Color(0xffF7F7F7),
//                     elevation: 0,
//                     side: BorderSide(width:1,  color: selectedButton== ButtonState.Button5 ? Color(0xff24B445): Colors.transparent),
//                   ),
//
//                   child: Container(
//
//                     margin: EdgeInsets.only(top: 10, bottom: 10),
//                     child: Column(
//                       children: [
//                         Text('Nail fragileness', style: TextStyle(color:selectedButton== ButtonState.Button5 ? Color(0xff4F555A): Color(0xff4F555A).withOpacity(0.5) ),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//
//               Container(
//                 width: Responsive.isSmallScreen(context)? width/2.8 : width/4.2,
//                 child: ElevatedButton(
//
//                   onPressed: () {
//                     onButtonPressed(ButtonState.Button6);
//                     ShowTextField = true;
//                   },
//
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
//                     primary: selectedButton== ButtonState.Button6 ? Colors.white:  Color(0xffF7F7F7),
//                     elevation: 0,
//                     side: BorderSide(width:1,  color: selectedButton== ButtonState.Button6 ? Color(0xff24B445): Colors.transparent),
//                   ),
//                   child: Container(
//
//                     margin: EdgeInsets.only(top: 10, bottom: 10),
//                     child: Column(
//                       children: [
//                         Text('Other', style: TextStyle(color:selectedButton== ButtonState.Button6 ? Color(0xff4F555A): Color(0xff4F555A).withOpacity(0.5)),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//
//             ],
//           ),
//
//           Visibility(
//             visible: ShowTextField,
//             child: Container(
//               margin: EdgeInsets.only(left: 20, top: 10),
//               width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
//               height: 50,
//               child: TextField(
//                 //    controller: _problemController,
//                 decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                   filled: true,
//                   fillColor: Color(0xffF9F9F9),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(35),
//                     borderSide: BorderSide.none,),
//
//                   hintText: "If other Type here...",
//                   hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),
//
//                 ),
//               ),
//             ),
//
//           ),
//
//
//         ],
//       ),
//     );
//   }
//
//   void onButtonPressed(ButtonState buttonState) {
//     setState(() {
//       selectedButton = buttonState;
//     });
//   }
// }