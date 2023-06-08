import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'Responsive.dart';

class InsuranceHestoryList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InsuranceHestoryList();
  }
}

class _InsuranceHestoryList extends State<InsuranceHestoryList> {

  final title = ["Lorem Ipsum", "Lorem Ipsum", "Lorem Ipsum", "Lorem Ipsum", "Lorem Ipsum"];
  final age = ["Lorem ipsum dolor sit amet consectetur. Scelerisque suspendisse ac.", "Lorem ipsum dolor sit amet consectetur. Scelerisque suspendisse ac.", "Lorem ipsum dolor sit amet consectetur. Scelerisque suspendisse ac.", "Lorem ipsum dolor sit amet consectetur. Scelerisque suspendisse ac.", "Lorem ipsum dolor sit amet consectetur. Scelerisque suspendisse ac."];

  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];

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
          title: Text(
            "Add Family Medical History ",
            style: TextStyle(
              color: Colors.black,
              fontSize:
              Responsive.isSmallScreen(context) ? width / 18 : width / 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: title.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 40,
                    right: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 40,
                    top: Responsive.isSmallScreen(context)
                        ? width / 30
                        : width / 50),
                padding:
                EdgeInsets.only(left: 5, right: 5, top: 20, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF7F7F7),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image(
                          image: AssetImage('image/lorempluse.png'),
                          height: Responsive.isSmallScreen(context)
                              ? width / 9
                              : width / 17,
                          width: Responsive.isSmallScreen(context)
                              ? width / 9
                              : width / 17,
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              width: Responsive.isSmallScreen(context)
                                  ? width / 1.5
                                  : width / 1.5,
                              margin: EdgeInsets.only( left: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 10,),
                              child: Text(
                                title[index],
                                style: TextStyle(
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 30
                                        : width / 38,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only( left: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 30,),
                              width: Responsive.isSmallScreen(context)
                                  ? width / 1.5
                                  : width / 1.4,
                              child: Row(
                                children: [
                                  Container(
                                    width: Responsive.isSmallScreen(context)
                                        ? width / 1.5
                                        : width / 1.5,
                                    child: Text(age[index],
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: Responsive.isSmallScreen(
                                                context)
                                                ? width / 35
                                                : width / 38,
                                            color: Color(0xff979797),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins')),
                                  )
                                ],
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              );
            }));
  }
}
