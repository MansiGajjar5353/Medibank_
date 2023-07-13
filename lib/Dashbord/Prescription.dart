import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/PrescriptionForm.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class Prescription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PrescriptionState();
  }
}

class PrescriptionState extends State<Prescription> {
  Color imageColor = Color(0xff4F555A).withOpacity(0.5);
  Color buttonColor = Colors.black; // Initial color of the button
  bool isButtonPressed = false;
  List<int> selectedIndices = [];
  bool isVisible = false;
  bool click = true;
  bool toggle = false;
  bool newisButtonPressed = false;

  List<bool> isCheckedListDelete = List.generate(5, (index) => false);
  List<bool> imagechange = List.generate(5, (index) => false);

  void toggleCheckboxDelete(int index) {
    setState(() {
      isCheckedListDelete[index] = !isCheckedListDelete[index];
      imagechange[index] = !imagechange[index];
    });
  }

  void handleButtonPress() {
    setState(() {
      // Change the color to your desired value
      isButtonPressed = true;
    });
  }

  void NewhandleButtonPress() {
    setState(() {
      // Change the color to your desired value
      newisButtonPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            toolbarHeight:
            Responsive.isSmallScreen(context) ? width / 5 : width / 8.2,
            backgroundColor: Colors.white,
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
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(right: 30),
                    child: Center(
                      child: Image(
                          image: AssetImage(
                            "image/MedibankLOGO.png",
                          ),
                          width: Responsive.isSmallScreen(context)
                              ? width / 2.3
                              : width / 4),
                    )),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Prescription ",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 30,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
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
                        child: Image(
                          image: AssetImage("image/DashboardImage.png"),
                          height: Responsive.isSmallScreen(context)
                              ? width / 15
                              : width / 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body:
          ListView.builder(
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(
                    left:
                    Responsive.isSmallScreen(context) ? width / 20 : width / 20,
                    right:
                    Responsive.isSmallScreen(context) ? width / 20 : width / 20,
                    top: Responsive.isSmallScreen(context)
                        ? width / 50
                        : width / 50),
                width:
                Responsive.isSmallScreen(context) ? width / 3.1 : width / 3.1,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                            color: Color(0xffF7F7F7),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: Responsive.isSmallScreen(context)
                                      ? width / 30
                                      : width / 30,
                                  bottom: Responsive.isSmallScreen(context)
                                      ? width / 30
                                      : width / 30,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
                                      width: Responsive.isSmallScreen(context)
                                          ? width / 2.5
                                          : width / 3,
                                      child: Text(
                                        "Prescription",
                                        style: TextStyle(
                                          color: Color(0XFF929292),
                                          fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 22
                                              : width / 35,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              handleButtonPress;
                                              setState(() {
                                                toggleCheckboxDelete(index);
                                                //toggle = !toggle;
                                              });
                                            },
                                            child: Container(
                                                child: imagechange[index]
                                                    ? Container(
                                                  width: Responsive
                                                      .isSmallScreen(
                                                      context)
                                                      ? width / 10
                                                      : width / 30,
                                                  child: Image(
                                                      image: AssetImage(
                                                          "image/EyeButton.png")),
                                                )
                                                    : Container(
                                                  width: Responsive
                                                      .isSmallScreen(
                                                      context)
                                                      ? width / 8
                                                      : width / 30,
                                                  child: Image(
                                                      image: AssetImage(
                                                          "image/ViewButton.png")),
                                                )),
                                          ),
                                          Visibility(
                                            visible: isCheckedListDelete[index],
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      width:
                                                      Responsive.isSmallScreen(
                                                          context)
                                                          ? width / 10
                                                          : width / 30,
                                                      margin: EdgeInsets.only(
                                                        left: Responsive
                                                            .isSmallScreen(
                                                            context)
                                                            ? width / 40
                                                            : width / 40,
                                                      ),
                                                      child: Image(
                                                        image: AssetImage(
                                                            "image/EditButton.png"),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      width:
                                                      Responsive.isSmallScreen(
                                                          context)
                                                          ? width / 10
                                                          : width / 30,
                                                      margin: EdgeInsets.only(
                                                        left: Responsive
                                                            .isSmallScreen(
                                                            context)
                                                            ? width / 40
                                                            : width / 40,
                                                      ),
                                                      child: Image(
                                                        image: AssetImage(
                                                            "image/DeleteButton.png"),
                                                      ),
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
                              Visibility(
                                  visible: isCheckedListDelete[index],
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 1,
                                        margin: EdgeInsets.only(
                                            left: 20,
                                            right: 20,
                                            top: 10,
                                            bottom: 10),
                                        color: Color(0xff000000).withOpacity(0.20),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          bottom: Responsive.isSmallScreen(context)
                                              ? width / 30
                                              : width / 30,
                                          right: Responsive.isSmallScreen(context)
                                              ? width / 30
                                              : width / 30,
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "Date",
                                                    style: TextStyle(
                                                      color: Color(0XFF4F555A),
                                                      fontSize:
                                                      Responsive.isSmallScreen(
                                                          context)
                                                          ? width / 28
                                                          : width / 60,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10)),
                                                  Text(
                                                    "27/08/2022",
                                                    style: TextStyle(
                                                      color: Color(0xff4F555A)
                                                          .withOpacity(0.5),
                                                      fontSize:
                                                      Responsive.isSmallScreen(
                                                          context)
                                                          ? width / 28
                                                          : width / 60,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Doctor",
                                                    style: TextStyle(
                                                      color: Color(0XFF4F555A),
                                                      fontSize:
                                                      Responsive.isSmallScreen(
                                                          context)
                                                          ? width / 28
                                                          : width / 60,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10)),
                                                  Text(
                                                    "Amet Minit",
                                                    style: TextStyle(
                                                      color: Color(0xff4F555A)
                                                          .withOpacity(0.5),
                                                      fontSize:
                                                      Responsive.isSmallScreen(
                                                          context)
                                                          ? width / 28
                                                          : width / 60,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Treatment",
                                                    style: TextStyle(
                                                      color: Color(0XFF4F555A),
                                                      fontSize:
                                                      Responsive.isSmallScreen(
                                                          context)
                                                          ? width / 28
                                                          : width / 60,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10)),
                                                  Text(
                                                    "Fever",
                                                    style: TextStyle(
                                                      color: Color(0xff4F555A)
                                                          .withOpacity(0.5),
                                                      fontSize:
                                                      Responsive.isSmallScreen(
                                                          context)
                                                          ? width / 28
                                                          : width / 60,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            },
          ),
        ),
        // Center(
        //
        //   child: Container(
        //     alignment: Alignment.bottomCenter,
        //     height: _mediaquery.size.height * 0.070,
        //     width:
        //     Responsive.isSmallScreen(context) ? width / 2.5 : width / 3.5,
        //     margin: EdgeInsets.only(top: _mediaquery.size.height * 0.02),
        //     child: ElevatedButton(
        //       onPressed: NewhandleButtonPress,
        //       child: Image.asset('image/PlusButton.png',
        //           color:  newisButtonPressed? Colors.black : imageColor,
        //           height: _mediaquery.size.height * 0.04),
        //       style: ElevatedButton.styleFrom(
        //         backgroundColor:
        //         newisButtonPressed ? buttonColor : Color(0xffF9F9F9),
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(32.0)),
        //       ),
        //     ),
        //   ),
        // ),
      ],



    );
  }
}
