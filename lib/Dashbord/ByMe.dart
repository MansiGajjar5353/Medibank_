import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Onbording/Responsive.dart';


class ByMe extends StatefulWidget {
  @override
  _ByMeState createState() => _ByMeState();
}

class _ByMeState extends State<ByMe> {
  List<bool> isCheckedListAdd = List.generate(10, (index) => false);

  void toggleCheckboxAdd(int index) {
    setState(() {
      isCheckedListAdd[index] = !isCheckedListAdd[index];
    });
  }

  List<bool> isCheckedListView = List.generate(10, (index) => false);

  void toggleCheckboxView(int index) {
    setState(() {
      isCheckedListView[index] = !isCheckedListView[index];
    });
  }

  List<bool> isCheckedListEdit = List.generate(10, (index) => false);

  void toggleCheckboxEdit(int index) {
    setState(() {
      isCheckedListEdit[index] = !isCheckedListEdit[index];
    });
  }

  List<bool> isCheckedListDelete = List.generate(10, (index) => false);

  void toggleCheckboxDelete(int index) {
    setState(() {
      isCheckedListDelete[index] = !isCheckedListDelete[index];
    });

  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final mqHeight = MediaQuery.of(context).size.height;
    final mqWidth = MediaQuery.of(context).size.width;
    var _mediaquery = MediaQuery.of(context);

    return Scaffold(
      body: ListView(
        children: [
          Positioned(
            child: Container(
              width: double.infinity,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 30
                            : width / 30,
                        right: Responsive.isSmallScreen(context)
                            ? width / 30
                            : width / 30,
                        top: Responsive.isSmallScreen(context)
                            ? width / 30
                            : width / 30,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        // Set the maximum width to infinity
                        maxHeight: double
                            .infinity, // Set the maximum height to infinity
                      ),
                      child: Container(
                          margin: EdgeInsets.only(
                              left: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 30,
                              right: Responsive.isSmallScreen(context)
                                  ? width / 50
                                  : width / 50,
                              top: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 30,
                              bottom: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'Dattatray Patil',
                                              style: TextStyle(
                                                color: Color(0xff4F555A),
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 24
                                                    : width / 32,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Son',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: Color(0x804F555A),
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 28
                                                    : width / 36,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          )
                                        ],
                                      )),
                                  Container(
                                    constraints: BoxConstraints(
                                      maxWidth: double.infinity,
                                      // Set the maximum width to infinity
                                      maxHeight: double
                                          .infinity, // Set the maximum height to infinity
                                    ),
                                    padding: EdgeInsets.only(
                                      top: Responsive.isSmallScreen(context)
                                          ? width / 90
                                          : width / 90,
                                      bottom: Responsive.isSmallScreen(context)
                                          ? width / 90
                                          : width / 90,
                                      left: Responsive.isSmallScreen(context)
                                          ? width / 30
                                          : width / 30,
                                      right: Responsive.isSmallScreen(context)
                                          ? width / 30
                                          : width / 30,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xff24B445),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize:
                                        Responsive.isSmallScreen(context)
                                            ? width / 30
                                            : width / 30,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(

                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  toggleCheckboxAdd(index);
                                                },
                                                child: Stack(
                                                  children: [
                                                    Visibility(
                                                      visible:
                                                      isCheckedListAdd[index],
                                                      child: Image.asset(
                                                        'image/checksquareno.png',
                                                        width:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                        height: Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                      ),
                                                    ),
                                                    Visibility(
                                                      visible:
                                                      !isCheckedListAdd[index],
                                                      child: Image.asset(
                                                        'image/checksquareyes.png',
                                                        width:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                        height: Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                            Container(
                                              margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/60:width/60),
                                              child:    Text(
                                                'Add',
                                                style: TextStyle(
                                                    fontSize: Responsive.isSmallScreen(
                                                        context)
                                                        ? width / 30
                                                        : width / 38,
                                                    color: Color(0x804F555A),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            )

                                          ],
                                        )),
                                    Expanded(
                                      flex: 1,
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  toggleCheckboxView(index);
                                                },
                                                child: Stack(
                                                  children: [
                                                    Visibility(
                                                      visible:
                                                      isCheckedListView[index],
                                                      child: Image.asset(
                                                        'image/checksquareno.png',
                                                        width:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                        height:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                      ),
                                                    ),
                                                    Visibility(
                                                      visible:
                                                      !isCheckedListView[index],
                                                      child: Image.asset(
                                                        'image/checksquareyes.png',
                                                        width:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                        height:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                            Container(
                                                margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/60:width/60),
                                                child:  Text(
                                                  'View',
                                                  style: TextStyle(
                                                      fontSize: Responsive.isSmallScreen(
                                                          context)
                                                          ? width / 30
                                                          : width / 38,
                                                      color: Color(0x804F555A),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: 'Poppins'),
                                                )
                                            )

                                          ],
                                        )),
                                    Expanded(
                                      flex: 1,
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  toggleCheckboxEdit(index);
                                                },
                                                child: Stack(
                                                  children: [
                                                    Visibility(
                                                      visible:
                                                      isCheckedListEdit[index],
                                                      child: Image.asset(
                                                        'image/checksquareno.png',
                                                        width:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                        height:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                      ),
                                                    ),
                                                    Visibility(
                                                      visible:
                                                      !isCheckedListEdit[index],
                                                      child: Image.asset(
                                                        'image/checksquareyes.png',
                                                        width:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                        height:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                            Container(
                                                margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/60:width/60),
                                                child:  Text(
                                                  'Edit',
                                                  style: TextStyle(
                                                      fontSize: Responsive.isSmallScreen(
                                                          context)
                                                          ? width / 30
                                                          : width / 38,
                                                      color: Color(0x804F555A),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: 'Poppins'),
                                                )
                                            )

                                          ],
                                        )),
                                    Expanded(
                                      flex: 1,
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  toggleCheckboxDelete(index);
                                                },
                                                child: Stack(
                                                  children: [
                                                    Visibility(
                                                      visible:
                                                      isCheckedListDelete[index],
                                                      child: Image.asset(
                                                        'image/checksquareyes.png',
                                                        width:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                        height:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                      ),
                                                    ),
                                                    Visibility(
                                                      visible:
                                                      !isCheckedListDelete[index],
                                                      child: Image.asset(
                                                        'image/checksquareno.png',
                                                        width:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                        height:Responsive.isSmallScreen(context)
                                                            ? width / 13
                                                            : width / 13,
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                            Container(
                                              margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/60:width/60),
                                              child:      Text(
                                                'Delete',
                                                style: TextStyle(
                                                    fontSize: Responsive.isSmallScreen(
                                                        context)
                                                        ? width / 30
                                                        : width / 38,
                                                    color: Color(0x804F555A),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            )

                                          ],
                                        )),
                                  ],
                                )
                              ),

                            ],
                          )));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
