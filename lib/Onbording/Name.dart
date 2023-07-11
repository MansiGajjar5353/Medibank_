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
  String GENDER = "Female";
  String BLOOD = "A+";
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
    List<String> Gender = [
      'Male',
      'Female',
    ];
    TextEditingController _relationsheepController = TextEditingController();
    _relationsheepController.text = GENDER;


    List<String> Blood = [
      'A+',
      'A-',
      'B+',
      'B-',
      'AB+',
      'AB-',
      'O+',
      'O-'
    ];
    TextEditingController _bloodController = TextEditingController();
    _bloodController.text = BLOOD;



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
                                      builder: (context, child) {
                                        return Theme(
                                          data: Theme.of(context).copyWith(
                                            colorScheme: ColorScheme.light(
                                                primary: Color(0xff24B445), // header background color
                                                onPrimary: Color(0xffFFFFFF), // header text color
                                                onSurface: Color(0Xff000000)
                                            ),
                                            textButtonTheme: TextButtonThemeData(
                                              style: TextButton.styleFrom(
                                                  foregroundColor: Color(0xff24B445)
                                              ),
                                            ),
                                          ),
                                          child: child!,
                                        );
                                      },
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

                              InkWell(
                                onTap: ()
                                {
                                  showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25)),
                                      ),
                                      backgroundColor: Colors.white,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                            height: Responsive.isSmallScreen(context)
                                                ? width / 2
                                                : width / 90,
                                            child: ListView(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    top: Responsive.isSmallScreen(context)
                                                        ? width / 30
                                                        : width / 30,
                                                  ),
                                                  child: Text(
                                                    'Choose',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xff000000),
                                                      fontWeight: FontWeight.w700,
                                                      fontSize:
                                                      Responsive.isSmallScreen(context)
                                                          ? width / 20
                                                          : width / 50,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                      top: Responsive.isSmallScreen(context)
                                                          ? width / 30
                                                          : width / 30,
                                                    ),
                                                    width: double.infinity,
                                                    child: ListView.builder(
                                                      physics: ClampingScrollPhysics(),
                                                      scrollDirection: Axis.vertical,
                                                      shrinkWrap: true,
                                                      itemCount: Gender.length,
                                                      itemBuilder: (context, index) {
                                                        final year = Gender[index];
                                                        final isSelectedYear = year == GENDER;

                                                        return ListTile(
                                                          title: Column(
                                                            children: [
                                                              Container(
                                                                alignment: Alignment.topLeft,
                                                                child: Text(
                                                                  ' $year',
                                                                  style: TextStyle(
                                                                    fontFamily: 'Poppins',
                                                                    fontWeight: isSelectedYear
                                                                        ? FontWeight.w700
                                                                        : FontWeight.w500,
                                                                    fontSize: Responsive
                                                                        .isSmallScreen(
                                                                        context)
                                                                        ? width / 24
                                                                        : width / 26,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                padding: EdgeInsets.only(
                                                                  top: Responsive
                                                                      .isSmallScreen(
                                                                      context)
                                                                      ? width / 30
                                                                      : width / 30,
                                                                ),
                                                                child: Container(
                                                                  height: 1.5,
                                                                  color: Color(0xffE4E8EE),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          onTap: () {
                                                            setState(() {
                                                              GENDER = year;
                                                              Navigator.of(context).pop();
                                                            });
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ));
                                      });
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: Responsive.isSmallScreen(context)
                                            ? width / 20
                                            : width / 40,

                                      ),
                                      child: Container(
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
                                                GENDER,
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
                                    ),
                                  ],
                                ),
                              ),

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
                                  'Blood Group',
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

                              InkWell(
                                onTap: ()
                                {
                                  showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25)),
                                      ),
                                      backgroundColor: Colors.white,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                            height: Responsive.isSmallScreen(context)
                                                ? width / 2
                                                : width / 90,
                                            child: ListView(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    top: Responsive.isSmallScreen(context)
                                                        ? width / 30
                                                        : width / 30,
                                                  ),
                                                  child: Text(
                                                    'Choose',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xff000000),
                                                      fontWeight: FontWeight.w700,
                                                      fontSize:
                                                      Responsive.isSmallScreen(context)
                                                          ? width / 20
                                                          : width / 50,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                      top: Responsive.isSmallScreen(context)
                                                          ? width / 30
                                                          : width / 30,
                                                    ),
                                                    width: double.infinity,
                                                    child: ListView.builder(
                                                      physics: ClampingScrollPhysics(),
                                                      scrollDirection: Axis.vertical,
                                                      shrinkWrap: true,
                                                      itemCount: Blood.length,
                                                      itemBuilder: (context, index) {
                                                        final year = Blood[index];
                                                        final isSelectedYear = year == BLOOD;

                                                        return ListTile(
                                                          title: Column(
                                                            children: [
                                                              Container(
                                                                alignment: Alignment.topLeft,
                                                                child: Text(
                                                                  ' $year',
                                                                  style: TextStyle(
                                                                    fontFamily: 'Poppins',
                                                                    fontWeight: isSelectedYear
                                                                        ? FontWeight.w700
                                                                        : FontWeight.w500,
                                                                    fontSize: Responsive
                                                                        .isSmallScreen(
                                                                        context)
                                                                        ? width / 24
                                                                        : width / 26,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                padding: EdgeInsets.only(
                                                                  top: Responsive
                                                                      .isSmallScreen(
                                                                      context)
                                                                      ? width / 30
                                                                      : width / 30,
                                                                ),
                                                                child: Container(
                                                                  height: 1.5,
                                                                  color: Color(0xffE4E8EE),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          onTap: () {
                                                            setState(() {
                                                              BLOOD = year;
                                                              Navigator.of(context).pop();
                                                            });
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ));
                                      });
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(
                                          left: Responsive.isSmallScreen(context)
                                              ? width / 20
                                              : width / 40,

                                        ),
                                        child: Container(
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
                                                  BLOOD,
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
                                    ),
                                  ],
                                ),
                              ),

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
