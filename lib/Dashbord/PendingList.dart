import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Onbording/Responsive.dart';

class Pending extends StatefulWidget {
  @override
  _PendingState createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  List<bool> isCheckedListAdd = List.generate(5, (index) => false);

  void toggleCheckboxAdd(int index) {
    setState(() {
      isCheckedListAdd[index] = !isCheckedListAdd[index];
    });
  }

  List<bool> isCheckedListView = List.generate(5, (index) => false);

  void toggleCheckboxView(int index) {
    setState(() {
      isCheckedListView[index] = !isCheckedListView[index];
    });
  }

  List<bool> isCheckedListEdit = List.generate(5, (index) => false);

  void toggleCheckboxEdit(int index) {
    setState(() {
      isCheckedListEdit[index] = !isCheckedListEdit[index];
    });
  }

  List<bool> isCheckedListDelete = List.generate(5, (index) => false);

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
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 5,
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
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
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

                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [



                                  Expanded(
                                    child:GestureDetector(
                                        onTap: () {
                                          toggleCheckboxView(index);
                                        },
                                        child:   Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xff24B445),
                                              borderRadius: BorderRadius.circular(25),
                                            ),

                                            child:  Text(
                                              'Confirm Account',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(

                                                  fontSize: Responsive.isSmallScreen(
                                                      context)
                                                      ? width / 34
                                                      : width / 38,
                                                  color: Color(0xffFFFFFF),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins'),
                                            )
                                        )
                                    ),

                                  ),
                                  Expanded(
                                    child:GestureDetector(
                                        onTap: () {
                                          toggleCheckboxView(index);
                                        },
                                        child:   Container(
                                            decoration: BoxDecoration(

                                              border: Border.all(
                                                color:Color(0xffF7444E),
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(25),
                                            ),
                                            margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/60:width/60),
                                            child:  Text(
                                              'Report Abuse',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: Responsive.isSmallScreen(
                                                      context)
                                                      ? width / 30
                                                      : width / 38,
                                                  color: Color(0xffF7444E),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins'),
                                            )
                                        )
                                    ),

                                  ),
                                  Expanded(
                                    child:GestureDetector(
                                        onTap: () {
                                          toggleCheckboxView(index);
                                        },
                                        child:   Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xffF7444E),
                                              borderRadius: BorderRadius.circular(25),
                                            ),
                                            margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/60:width/60),
                                            child:  Text(
                                              'Report Abuse',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: Responsive.isSmallScreen(
                                                      context)
                                                      ? width / 30
                                                      : width / 38,
                                                  color: Color(0xffFFFFFF),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins'),
                                            )
                                        )
                                    ),

                                  ),
                                ],
                              )
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
