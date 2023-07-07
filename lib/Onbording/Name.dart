import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_signup_page/Dashbord/FaimlyAccess.dart';
import 'package:project_signup_page/Dashbord/VaccinationHistory.dart';
import 'package:project_signup_page/Onbording/AddFamilymemberForm.dart';
import 'package:project_signup_page/Onbording/EditProfile.dart';
import 'package:project_signup_page/Onbording/FamilyMedicalHestoryList.dart';
import 'package:project_signup_page/Onbording/Faq.dart';
import 'package:project_signup_page/Onbording/FitnessData.dart';
import 'package:project_signup_page/Onbording/InsuranceHestory.dart';
import 'package:project_signup_page/Onbording/Setting.dart';
import 'package:project_signup_page/Onbording/VaccinationForm.dart';
import 'Responsive.dart';
import 'Dash.dart';
import 'DoctorsZone.dart';
import 'Symptoms.dart';

class Name extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NameState();
  }
}

class NameState extends State<Name> {
  final dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  //late String month;
  late String month;
  late String date;
  late String year;

  @override
  void initState() {
    month = "Month";
    date = "Date";
    year = "Year";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   iconTheme: IconThemeData(
      //       color: Colors.green,
      //       size: Responsive.isSmallScreen(context) ? width / 12 : width / 25),
      //   title: Text(
      //     "Basic Info",
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize:
      //           Responsive.isSmallScreen(context) ? width / 20 : width / 24,
      //       fontFamily: 'Poppins',
      //       fontWeight: FontWeight.w400,
      //     ),
      //   ),
      //   actions: [
      //     Align(
      //       alignment: Alignment.centerRight,
      //       child: IconButton(
      //         padding: EdgeInsets.only(
      //             right: Responsive.isSmallScreen(context)
      //                 ? width / 20
      //                 : width / 26),
      //         icon: Image.asset(
      //           'image/correct.png',
      //           height:
      //               Responsive.isSmallScreen(context) ? width / 12 : width / 25,
      //           width:
      //               Responsive.isSmallScreen(context) ? width / 12 : width / 25,
      //         ),
      //         onPressed: () {
      //           // Add your notifications icon onPressed functionality here
      //         },
      //       ),
      //     )
      //   ],
      // ),
      appBar: AppBar(
        toolbarHeight: Responsive.isSmallScreen(context)? width/5: width/8.2,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green,
          size: Responsive.isSmallScreen(context)? width/20: width/25,),
        leading: Align(
          alignment: Alignment.bottomLeft,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Image.asset('image/dialog_cancel.png',height:Responsive.isSmallScreen(context) ? width / 24: width / 10,
              width: Responsive.isSmallScreen(context) ? width / 24 : width / 10 ,),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(padding: EdgeInsets.only(right: 30),
                child: Center(
                  child: Image(image: AssetImage("image/MedibankLOGO.png",),
                      width: Responsive.isSmallScreen(context)? width/2.3: width/4),
                )),

            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Basic Info ",
                      style: TextStyle(color: Color(0xff000000),
                          fontSize: Responsive.isSmallScreen(context)? width/20: width/30,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),),
                  ),
                  InkWell(
                    onTap: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));
                    },
                    child: Image(image: AssetImage("image/correct.png"),
                      height:  Responsive.isSmallScreen(context)? width/15: width/30,
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),

      body: Container(
        height: _mediaquery.size.height * 1,
        child: ListView(
          children: [
            Padding(
                padding: EdgeInsets.only(top: _mediaquery.size.height * 0.02)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    right: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    top: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                  ),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(
                      Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                    ),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Name',
                                style: TextStyle(
                                  color: Color(0xff949494),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 26
                                      : width / 40,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Prathvi bharatwala',
                                  hintStyle: TextStyle(
                                    color: Color(0xff212426),
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 24
                                        : width / 28,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                style: TextStyle(
                                  color: Color(0xff212426),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 24
                                      : width / 28,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    right: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    top: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                  ),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(
                      Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Birthday',
                                style: TextStyle(
                                  color: Color(0xff949494),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 26
                                      : width / 40,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      month,
                                      style: TextStyle(
                                        color: Color(0xff212426),
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 26
                                                : width / 40,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.arrow_drop_down_outlined,
                                      color: Color(0xff4F555A),
                                    ),
                                  ),
                                ],
                              ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    date,
                                    style: TextStyle(
                                      color: Color(0xff212426),
                                      fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 26
                                              : width / 40,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Color(0xff4F555A),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(

                          margin: EdgeInsets.only(
                            top: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 30,

                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Birth Year',
                                  style: TextStyle(
                                    color: Color(0xff949494),
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 26
                                        : width / 40,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(

                                  right: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 30,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        year,
                                        style: TextStyle(
                                          color: Color(0xff212426),
                                          fontSize:
                                              Responsive.isSmallScreen(context)
                                                  ? width / 26
                                                  : width / 40,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_drop_down_outlined,
                                        color: Color(0xff4F555A),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final DateTime? picked = await showDatePicker(
                                      context: context,
                                      initialDate: selectedDate,
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2100));
                                  if (picked != null && picked != selectedDate) {
                                    setState(() {
                                      selectedDate = picked;
                                      dateController.text =
                                          DateFormat('yyyy-MM-dd')
                                              .format(selectedDate);
                                      month = DateFormat('MMMM')
                                          .format(selectedDate); // Extract month
                                      date = DateFormat('d').format(selectedDate);
                                      year = DateFormat('yyyy')
                                          .format(selectedDate); // Extract day

                                      // Use the month and day strings as needed
                                      print('Month: $month');
                                      print('Day: $date');
                                    });
                                  }
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                    right: Responsive.isSmallScreen(context)
                                        ? width / 20
                                        : width / 30,
                                  ),
                                  alignment: Alignment.centerRight,
                                  child: Image(
                                    image: AssetImage('image/basic_edit.png'),
                                    height: Responsive.isSmallScreen(context)
                                        ? width / 20
                                        : width / 26,
                                    width: Responsive.isSmallScreen(context)
                                        ? width / 20
                                        : width / 26,
                                  ),
                                ),
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    right: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    top: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                  ),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(
                      Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Gender',
                                  style: TextStyle(
                                    color: Color(0xff949494),
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 26
                                        : width / 40,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: Responsive.isSmallScreen(context)
                                      ? width / 9
                                      : width / 30,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Female',
                                        style: TextStyle(
                                          color: Color(0xff212426),
                                          fontSize:
                                              Responsive.isSmallScreen(context)
                                                  ? width / 26
                                                  : width / 40,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_drop_down_outlined,
                                        color: Color(0xff4F555A),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
