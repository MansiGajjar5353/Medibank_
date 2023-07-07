import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/AbhaSetup.dart';
import 'package:project_signup_page/UI/Create_acc.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class AddAabha extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddAabhaState();
  }
}

class AddAabhaState extends State<AddAabha> {
  final titles = ["List 1", "List 2", "List 3"];
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
        buttonColor =
            Colors.green; // Change the color back to the original value
        isButtonPressed = false;
      });
      Navigator.push(context,MaterialPageRoute(builder: (context)=>AbhaSetup(),));
      // Perform navigation after the delay
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    final mqHeight = MediaQuery.of(context).size.height;
    var _mediaquery = MediaQuery.of(context);
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
        ),        title: Center(
        child: Container(padding: EdgeInsets.only(right: 30),
            child: Image(image: AssetImage("image/MedibankLOGO.png",),
                width: Responsive.isSmallScreen(context)? width/2.3: width/4)),
      ),
      ),

      body: Stack(
        children: [
          ListView(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 15
                        : width / 25,
                    right: Responsive.isSmallScreen(context)
                        ? width / 15
                        : width / 25,
                  ),
                  //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Create ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 19
                            : width / 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'ABHA',
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
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "Amet minim mollit non deserunt ullamco est sit ",
                        style: new TextStyle(
                            color: Color(0xff929292),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 32
                                : width / 60,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Container(
                      child: Text(
                        "aliqua dolor do amet sint.",
                        style: new TextStyle(
                            color: Color(0xff929292),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 32
                                : width / 60,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                  child: Column(
                children: [
                  Container(
                    width: Responsive.isSmallScreen(context)
                        ? width / 1.1
                        : width / 1.1,
                    height: Responsive.isSmallScreen(context)
                        ? width / 8
                        : width / 8,
                    margin: EdgeInsets.only(right: 20.0,top: Responsive.isSmallScreen(context)
                        ? width / 30.0
                        : width / 60.0,),
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(80), // set the border radius
                      //border: Border.all(),
                    ),
                    child: TextField(
//          controller: _userController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Username",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontFamily: 'Poppins',
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 23
                                : width / 60),
                      ),
                      style: TextStyle(
                          color: Color(0xff4F555A).withOpacity(0.5),
                          fontFamily: 'Poppins',
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 23
                              : width / 60),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 20,

                    ),
                    child: Positioned(
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        width: double.infinity,
                        height: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 20,
                        child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: titles.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: Responsive.isSmallScreen(context)
                                      ? width / 100
                                      : width / 100,
                                  right: Responsive.isSmallScreen(context)
                                      ? width / 100
                                      : width / 100,
                                ),
                                constraints: BoxConstraints(
                                  maxWidth: double.infinity,
                                  maxHeight: double.infinity,
                                ),
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color(0xffDDDEE1), width: 1),
                                      color: Color(0xffFFFFFF),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.only(
                                              left: Responsive.isSmallScreen(
                                                      context)
                                                  ? width / 80
                                                  : width / 80,
                                              right: Responsive.isSmallScreen(
                                                      context)
                                                  ? width / 80
                                                  : width / 80),
                                          child: Text(
                                            'Getting Started',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize:
                                                  Responsive.isSmallScreen(
                                                          context)
                                                      ? width / 40
                                                      : width / 40,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: Responsive.isSmallScreen(context)
                        ? width / 1.1
                        : width / 1.1,
                    height: Responsive.isSmallScreen(context)
                        ? width / 8
                        : width / 8,
                    margin: EdgeInsets.only(right: 20.0,top: Responsive.isSmallScreen(context)
                        ? width / 30.0
                        : width / 60.0,),
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(80), // set the border radius
                      //border: Border.all(),
                    ),
                    child: TextField(
//          controller: _userController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Pincode*",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontFamily: 'Poppins',
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 23
                                : width / 60),
                      ),
                      style: TextStyle(
                          color: Color(0xff4F555A).withOpacity(0.5),
                          fontFamily: 'Poppins',
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 23
                              : width / 60),
                    ),
                  ),
                  Container(
                    width: Responsive.isSmallScreen(context)
                        ? width / 1.1
                        : width / 1.1,
                    height: Responsive.isSmallScreen(context)
                        ? width / 8
                        : width / 8,
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(80), // set the border radius
                      //border: Border.all(),
                    ),
                    child: TextField(
//          controller: _userController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Address",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontFamily: 'Poppins',
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 23
                                : width / 60),
                      ),
                      style: TextStyle(
                          color: Color(0xff4F555A).withOpacity(0.5),
                          fontFamily: 'Poppins',
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 23
                              : width / 60),
                    ),
                  ),
                  Container(
                    width: Responsive.isSmallScreen(context)
                        ? width / 1.1
                        : width / 1.1,
                    height: Responsive.isSmallScreen(context)
                        ? width / 8
                        : width / 8,
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(80), // set the border radius
                      //border: Border.all(),
                    ),
                    child: TextField(
//          controller: _userController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Name",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontFamily: 'Poppins',
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 23
                                : width / 60),
                      ),
                      style: TextStyle(
                          color: Color(0xff4F555A).withOpacity(0.5),
                          fontFamily: 'Poppins',
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 23
                              : width / 60),
                    ),
                  ),
                  Container(
                    width: Responsive.isSmallScreen(context)
                        ? width / 1.1
                        : width / 1.1,
                    height: Responsive.isSmallScreen(context)
                        ? width / 8
                        : width / 8,
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(80), // set the border radius
                      //border: Border.all(),
                    ),
                    child: TextField(
//          controller: _userController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "DOB",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontFamily: 'Poppins',
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 23
                                : width / 60),
                      ),
                      style: TextStyle(
                          color: Color(0xff4F555A).withOpacity(0.5),
                          fontFamily: 'Poppins',
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 23
                              : width / 60),
                    ),
                  ),
                  Container(
                    width: Responsive.isSmallScreen(context)
                        ? width / 1.1
                        : width / 1.1,
                    height: Responsive.isSmallScreen(context)
                        ? width / 8
                        : width / 8,
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(80), // set the border radius
                      //border: Border.all(),
                    ),
                    child: TextField(
//          controller: _userController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Gender",
                        hintStyle: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontFamily: 'Poppins',
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 23
                                : width / 60),
                      ),
                      style: TextStyle(
                          color: Color(0xff4F555A).withOpacity(0.5),
                          fontFamily: 'Poppins',
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 23
                              : width / 60),
                    ),
                  ),
                ],
              )),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                  left: Responsive.isSmallScreen(context)
                      ? width / 10
                      : width / 10,
                  right: Responsive.isSmallScreen(context)
                      ? width / 10
                      : width / 10,
                  bottom: Responsive.isSmallScreen(context)
                      ? width / 7
                      : width / 12),
              width:
                  Responsive.isSmallScreen(context) ? width / 2.5 : width / 2.5,
              height:
                  Responsive.isSmallScreen(context) ? width / 10 : width / 15,
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
          )
        ],
      ),
    );
  }
}
