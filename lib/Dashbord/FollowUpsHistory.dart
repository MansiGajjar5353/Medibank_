import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Onbording/AddFamilyMedicalHestoryForm.dart';
import 'package:sizer/sizer.dart';
import '../Onbording/Responsive.dart';
import 'FollowUpsDialog.dart';

class FollowUpsHistory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FollowUpsHistoryList();
  }
}

class _FollowUpsHistoryList extends State<FollowUpsHistory> {
  final titles = [
    "Follow ups",
    "Follow ups",
    "Follow ups",
    "Follow ups",
    "Follow ups"
  ];
  final Description = [
    "asdcfvghjukiyjt lkdfmklsd",
    "asdcfvghjukiyjtyh7r65ew",
    "asdcfvghjukiyjtyh7r65",
    "asdcfvghjukiyjtyh7r65",
    "asdcfvghjukiyjtyh7r65ew"
  ];
  final DoctoName = [
    "Amet minim ",
    "Amet minim ",
    "Amet minim ",
    "Amet minim ",
    "Amet minim "
  ];
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
  final Date = [
    "27/8/2022",
    "27/8/2022",
    "27/8/2022",
    "27/8/2022",
    "27/8/2022"
  ];
  final time = [
    "12.00AM",
    "12.00AM",
    "12.00AM",
    "12.00AM",
    "12.00AM",
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Stack(
      children: [
        Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              // default is 56

              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.green),
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                padding: EdgeInsets.only(top: 40),
                icon: const BackButtonIcon(),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Add Records ",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'),
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
                          height: 30,
                        ),
                      ),
                    ],
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
                                          titles[index],
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
                                                      "date",
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
                                                      Date[index],
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
                                                      "Time",
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
                                                     time[index],
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
                                                      "Drescription",
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
                                                    Container(

                                                      width: Responsive.isSmallScreen(
                                                      context)
                                                      ? width / 1.9 : width / 1.9,
                                                      child: RichText(
                                                        textAlign: TextAlign.left,
                                                        text: TextSpan(
                                                          text:
                                                          Description[index],
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
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Follow-ups for",
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
                                                      DoctoName[index],
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
        Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => FollowUpsDialog(),
                );
              },
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
                        : width / 10),
                width: Responsive.isSmallScreen(context)
                    ? width / 2.0
                    : width / 2.0,
                height:
                    Responsive.isSmallScreen(context) ? width / 9 : width / 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Color(0xff24B445),
                ),
                child: Icon(
                  Icons.add,
                  color: Color(0xff000000),
                  size: Responsive.isSmallScreen(context)
                      ? width / 12
                      : width / 15,
                ),
              )),
        ),
      ],
    );
  }
}
