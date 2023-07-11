import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';

import 'Responsive.dart';

class EditSymptoms extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EditSymptomsState();
  }
}

class EditSymptomsState extends State<EditSymptoms> {
  String SYMPTOMS = "Back Pain";
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
    List<String> Symptoms = [
      'Back Pain',
      'Black Stools',
      'Blackhead',
      'DarkUrin',
      'Dizziness',
      'Dry Eyes',
      'Dry Mouth',
      'Dry Skin'
    ];
    TextEditingController _symptomsController = TextEditingController();
    _symptomsController.text = SYMPTOMS;
    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
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
                      "Dashboard ",
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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            child: RichText(
              text: TextSpan(
                text: 'Edit ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Responsive.isSmallScreen(context)
                      ? width / 20
                      : width / 40,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Symptoms',
                    style: TextStyle(
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 40,
                      color: Color(0xff24B445),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    "Symptoms date",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 25
                          : width / 50,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.5
                            : width / 2,
                        height: 55,
                        child: TextField(
                          controller:dateController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Date",
                            hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.5),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
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
                        child:
                        Container(
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xffF9F9F9),
                            child: Icon(
                              Icons.calendar_today_outlined,
                              color: Color(0xff4F555A).withOpacity(0.5),
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    "Select symptom",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  child: InkWell(
                    onTap: () {
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
                                          itemCount: Symptoms.length,
                                          itemBuilder: (context, index) {
                                            final year = Symptoms[index];
                                            final isSelectedYear = year == SYMPTOMS;

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
                                                  SYMPTOMS = year;
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
                    child: Container(
                      margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 40,
                        top: Responsive.isSmallScreen(context)
                            ? width / 30
                            : width / 60,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)
                                ? width / 1.4
                                : width / 1.3,
                            height: Responsive.isSmallScreen(context)
                                ? width / 8
                                : width / 8,
                            child: TextField(
                              controller: _symptomsController,
                              decoration: InputDecoration(
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                                filled: true,
                                fillColor: Color(0xffF9F9F9),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "Select Member",
                                hintStyle: TextStyle(
                                  color: Color(0xff4F555A).withOpacity(0.4 ),
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              style: TextStyle(
                                color: Color(0xff000000).withOpacity(0.4),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          Container(
                            width: Responsive.isSmallScreen(context)
                                ? width / 10
                                : width / 10,
                            height: Responsive.isSmallScreen(context)
                                ? width / 10
                                : width / 10,
                            margin: EdgeInsets.only(
                              right: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 20,
                              bottom: Responsive.isSmallScreen(context)
                                  ? width / 50
                                  : width / 15,
                            ),
                            alignment: Alignment.centerRight,
                            child: CircleAvatar(
                              radius: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 35,
                              backgroundColor: Color(0xffF9F9F9),
                              child: Icon(
                                Icons.arrow_drop_down_outlined,
                                color: Color(0xff4F555A).withOpacity(0.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                width:
                    Responsive.isSmallScreen(context) ? width / 1.2 : width / 2,
                height: 55,
                child: TextField(
//
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    filled: true,
                    fillColor: Color(0xffF9F9F9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "200",
                    hintStyle:
                        TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    "Add Details",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.2
                      : width / 2,
                  height: 200,
                  child: TextField(
//
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 20, top: 10, bottom: 90),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Add details(optional)",
                      hintStyle: TextStyle(
                        color: Color(0xff4F555A).withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 15)),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff24B445),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                  ),
                  onPressed: () {},
                  icon: Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 80,
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  label: Text(""),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
