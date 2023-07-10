import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/LifeStyle.dart';
import 'package:project_signup_page/Dashbord/Questionnaires.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class illnessSurgery extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return illnessSurgeryState();
  }
}

class illnessSurgeryState extends State<illnessSurgery> {
  Color imageColor = Color(0xff4F555A).withOpacity(0.5);
  Color buttonColor = Colors.black; // Initial color of the button
  bool isButtonPressed = false;
  bool Showtextfield = false;

  void handleButtonPress() {
    setState(() {
      buttonColor = Colors.green; // Change the color to your desired value
      isButtonPressed = true;
    });

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        buttonColor =
            Colors.green; // Change the color back to the original value
        isButtonPressed = false;
      });
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LifeStyle(),
          ));
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
        toolbarHeight:
            Responsive.isSmallScreen(context) ? width / 10 : width / 10,
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.green,
          size: Responsive.isSmallScreen(context) ? width / 20 : width / 25,
        ),
        leading: Align(
          alignment: Alignment.bottomLeft,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const BackButtonIcon(),
          ),
        ),
        title: Align(
          alignment: Alignment.center,
          child: Image(
              image: AssetImage(
                "image/MedibankLOGO.png",
              ),
              width:
                  Responsive.isSmallScreen(context) ? width / 2.3 : width / 4),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(
                  bottom: Responsive.isSmallScreen(context)
                      ? width / 80
                      : width / 100,
                  right: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Questionnaires(),
                      ));
                },
                child: Image(
                  image: AssetImage("image/DashboardImage.png"),
                  height: Responsive.isSmallScreen(context)
                      ? width / 15
                      : width / 30,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(children: [
        Container(
          // height: _mediaquery.size.height*0.13,
          margin: EdgeInsets.only(left: 0, top: 10.0),
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
                      margin: EdgeInsets.only(left: 25),
                      child: Text(
                        "Illness",
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 18
                                : width / 30,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      //margin: EdgeInsets.only(left:30,),
                      child: Text(
                        "Surgeries",
                        style: new TextStyle(
                            height: 0.90,
                            color: Colors.green,
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 18
                                : width / 30,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Text(
                        "Note: minim mollit non deserunt ullamco ",
                        style: new TextStyle(
                            color: Color(0xff929292),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 46
                                : width / 60,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Text(
                        "est sit aliqua dolor do amet sint. ",
                        style: new TextStyle(
                            color: Color(0xff929292),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 46
                                : width / 60,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('image/scalpel.png',
                          height: _mediaquery.size.height * 0.050),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: _mediaquery.size.height * 0.01),
                      child: RichText(
                        text: TextSpan(
                          text: 'category ',
                          style: TextStyle(
                            color: Color(0xff929292),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 35
                                : width / 60,
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
            margin: EdgeInsets.only(left: 0, top: 40.0),
            //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
            child: RichText(
              text: TextSpan(
                text: "Medical ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Responsive.isSmallScreen(context)
                      ? width / 16
                      : width / 30,
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
            child: Text(
              "Have you had any major illness or surgery?",
              style: TextStyle(
                color: Color(0xff4F555A).withOpacity(0.45),
                fontSize:
                    Responsive.isSmallScreen(context) ? width / 28 : width / 50,
                fontFamily: "Poppins",
              ),
            ),
          ),
        ),

        Center(
          child: ButtonGroup(),
        ),
        //
        // Container(
        //   margin: EdgeInsets.only(left: 20, top: 20, bottom: 10, right: 20),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       InkWell(
        //         onTap: (){
        //           setState(() {
        //             Showtextfield= true;
        //           });
        //         },
        //         child: Container(
        //           height: Responsive.isSmallScreen(context)? _mediaquery.size.height*0.1 : _mediaquery.size.height*0.1,
        //           width: Responsive.isSmallScreen(context)? width/4 : width/5,
        //           margin: EdgeInsets.only(right: 30),
        //           child: Padding(
        //             padding: const EdgeInsets.all(10.0),
        //             child: Image(image: AssetImage("image/rightlogo.png"),color: Color(0xff4F555A).withOpacity(0.4),),
        //           ),
        //           decoration: BoxDecoration(
        //             color: Color(0xffF1F1F1),
        //             borderRadius: BorderRadius.circular(20),
        //
        //           ),
        //
        //         ),
        //       ),
        //       InkWell(
        //         onTap: (){
        //           setState(() {
        //             Showtextfield= false;
        //           });
        //         },
        //         child: Container(
        //           height: Responsive.isSmallScreen(context)? _mediaquery.size.height*0.1 : _mediaquery.size.height*0.1,
        //           width: Responsive.isSmallScreen(context)? width/4 : width/5,
        //           child: Padding(
        //             padding: const EdgeInsets.all(10.0),
        //             child: Image(image: AssetImage("image/wrongLogo.png"),),
        //           ),
        //           decoration: BoxDecoration(
        //             color: Color(0xffF1F1F1),
        //             borderRadius: BorderRadius.circular(20),
        //
        //           ),
        //
        //         ),
        //       ),
        //
        //     ],
        //   ),
        // ),
        //
        // Visibility(
        //   visible: Showtextfield,
        //   child: Container(
        //     margin:EdgeInsets.only(left: 20,top: 10),
        //     child: Row(
        //       children: [
        //         Container(
        //           width: Responsive.isSmallScreen(context)? width/2.2 : width/2.8,
        //           height: 55,
        //           child: TextField(
        //             //  controller: _nameController,
        //             decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        //               filled: true,
        //               fillColor: Color(0xffF9F9F9),
        //               border: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(35),
        //                 borderSide: BorderSide.none,),
        //
        //               hintText: "surgery/illness",
        //               hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),
        //
        //             ),
        //           ),
        //         ),
        //         Padding(padding: EdgeInsets.only(left: 10)),
        //         Container(
        //           width: Responsive.isSmallScreen(context)? width/4 : width/7,
        //           height: 55,
        //           child: TextField(
        //             //  controller: _nameController,
        //             decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        //               filled: true,
        //               fillColor: Color(0xffF9F9F9),
        //               border: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(35),
        //                 borderSide: BorderSide.none,),
        //
        //               hintText: "2006",
        //               hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),
        //
        //             ),
        //           ),
        //         ),
        //         Padding(padding: EdgeInsets.only(left: 10)),
        //         InkWell(
        //           onTap: (){},
        //           child: CircleAvatar(
        //           radius: 22,
        //             backgroundColor: Color(0xffF9F9F9),
        //             child: Icon(Icons.add, color: Color(0xff4F555A).withOpacity(0.5),),
        //           ),
        //         ),
        //
        //       ],
        //     ),
        //   ),
        // ),

        Center(
          child: Container(
            height: _mediaquery.size.height * 0.070,
            width:
                Responsive.isSmallScreen(context) ? width / 2.5 : width / 3.5,
            margin: EdgeInsets.only(top: _mediaquery.size.height * 0.2),
            child: ElevatedButton(
              onPressed: handleButtonPress,
              child: Image.asset('image/AerrowRight.png',
                  color: isButtonPressed ? Colors.black : imageColor,
                  height: _mediaquery.size.height * 0.04),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isButtonPressed ? buttonColor : Color(0xffF9F9F9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
          ),
        ),

        Padding(padding: EdgeInsets.only(top: 20)),

        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Skip to ",
                style: TextStyle(
                  color: Color(0xffACADAC),
                  fontSize: Responsive.isSmallScreen(context)
                      ? width / 30
                      : width / 45,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBarApp(),
                      ));
                },
                child: Text(
                  "Dashboard",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 30
                        : width / 45,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

enum ButtonState {
  Button1,
  Button2,
}

class ButtonGroup extends StatefulWidget {
  @override
  _ButtonGroupState createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  bool Showtextfield = false;

  ButtonState selectedButton = ButtonState.Button2; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(top: 0, bottom: 30),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 20, bottom: 10, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    onButtonPressed(ButtonState.Button1);
                    Showtextfield = true;
                  },
                  child: Container(
                    height: Responsive.isSmallScreen(context)
                        ? _mediaquery.size.height * 0.1
                        : _mediaquery.size.height * 0.1,
                    width: Responsive.isSmallScreen(context)
                        ? width / 4
                        : width / 5,
                    margin: EdgeInsets.only(right: 30),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage("image/rightlogo.png"),
                        color: Color(0xff4F555A).withOpacity(0.4),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: selectedButton == ButtonState.Button1
                          ? Color(0xffADE3BA)
                          : Color(0xffF1F1F1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onButtonPressed(ButtonState.Button2);
                    Showtextfield = false;
                  },
                  child: Container(
                    height: Responsive.isSmallScreen(context)
                        ? _mediaquery.size.height * 0.1
                        : _mediaquery.size.height * 0.1,
                    width: Responsive.isSmallScreen(context)
                        ? width / 4
                        : width / 5,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage("image/wrongLogo.png"),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: selectedButton == ButtonState.Button2
                          ? Color(0xffADE3BA)
                          : Color(0xffF1F1F1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: Showtextfield,
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Container(
                    width: Responsive.isSmallScreen(context)
                        ? width / 2.2
                        : width / 2.8,
                    height: 55,
                    child: TextField(
                      //  controller: _nameController,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "surgery/illness",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                    width: Responsive.isSmallScreen(context)
                        ? width / 4
                        : width / 7,
                    height: 55,
                    child: TextField(
                      //  controller: _nameController,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "2006",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Color(0xffF9F9F9),
                      child: Icon(
                        Icons.add,
                        color: Color(0xff4F555A).withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

//       child: Column(
//         children: [
//           InkWell(
//             onTap: (){
//               onButtonPressed(ButtonState.Button1);
//               ShowText= true;
//             },
//
//             child: Container(
//               margin: EdgeInsets.only(left: 20, right: 20, top: 20),
//               height: 80,
//               width: Responsive.isSmallScreen(context)? width/1.1: width/1.3,
//               decoration: BoxDecoration(
//                 color: selectedButton== ButtonState.Button1 ? Color(0xffADE3BA):Color(0xffF7F7F7),
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Container(
//                   margin:EdgeInsets.only(top: 30, left: 30),
//                   child: Text("Yes",style: TextStyle(
//                     color: Color(0xff4F555A).withOpacity(0.5),
//                   ),)),
//             ),
//           ),
//           InkWell(
//             onTap: (){
//
//               onButtonPressed(ButtonState.Button2);
//               ShowText= false;
//             },
//             child: Container(
//               margin: EdgeInsets.only(left: 20, right: 20, top: 10),
//               height: 80,
//               width: Responsive.isSmallScreen(context)? width/1.1: width/1.3,
//               decoration: BoxDecoration(
//                 color: selectedButton== ButtonState.Button2 ? Color(0xffADE3BA):Color(0xffF7F7F7),
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Container(
//                   margin:EdgeInsets.only(top: 30, left: 30),
//                   child: Text("No",style: TextStyle(
//                     color: Color(0xff4F555A).withOpacity(0.5),
//                   ),)),
//             ),
//           ),
//
//
//           Visibility(
//             visible: ShowText,
//             child: Container(
//               margin: EdgeInsets.only(left:20,right: 20, top:10),
// //  width: Responsive.isSmallScreen(context)? width/1.2 : width/2,
// //height: 200,
//               child: TextField(
//                 maxLines: 5,
//                 decoration: InputDecoration(
//                   contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                   filled: true,
//                   fillColor: Color(0xffF9F9F9),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(35),
//                       borderSide: BorderSide(width: 1, color: Color(0xff).withOpacity(0.16),
//                       )),
//
//                   hintText: "Any reason",
//                   hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), ),
//
//                 ),
//               ),
//             ),
//
//
//           ),
//
//         ],
//       ),
    );
  }

  void onButtonPressed(ButtonState buttonState) {
    setState(() {
      selectedButton = buttonState;
    });
  }
}
