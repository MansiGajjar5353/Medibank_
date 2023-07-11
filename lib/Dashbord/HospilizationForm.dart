import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

import 'PatientBilling.dart';

class TabData {
  String title;
  String description;

  TabData(this.title, this.description);
}

class HospilizationForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HospilizationFormState();
  }
}

class HospilizationFormState extends State<HospilizationForm> {
  final AddmidateController = TextEditingController();
  final DisdateController = TextEditingController();
  bool isDisabled = false;
  DateTime AddmiselectedDate = DateTime.now();
  DateTime DisselectedDate = DateTime.now();

  //late String month;
  late String Addmimonth;
  late String Addmidate;
  late String Addmiyear;

  late String DissAddmimonth;
  late String DissAddmidate;
  late String DissAddmiyear;

  @override
  void initState() {
    Addmimonth = "Month";
    Addmidate = "Date";
    Addmiyear = "Year";

    DissAddmimonth = "Month";
    DissAddmidate = "Date";
    DissAddmiyear = "Year";
    super.initState();
  }
  List<TabData> tabs = [
    TabData('Patient Record', 'Description for Tab 1'),
    TabData('Patient Biling', 'Description for Tab 2'),
  ];
  int currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
      //
      // Navigator.push(context,MaterialPageRoute(builder: (context)=>BottomNavBarApp(),));
      // Perform navigation after the delay
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double width = MediaQuery.of(context).size.width;

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
                      "Hospilization ",
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
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 1,
            color: Color(0xffE4E8EE),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 119,
                    height: 26,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff24B445)),
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff24B445).withOpacity(0.5),
                    ),
                    child: Center(
                      child: Text(
                        "Patient Record",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 13.5,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PatientBilling(),
                        ));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 119,
                    height: 26,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color(0xff858585).withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffF4F4F4),
                    ),
                    child: Center(
                      child: Text(
                        "Patient Biling",
                        style: TextStyle(
                          color: Color(0xff858585).withOpacity(0.5),
                          fontSize: 13.5,
                        ),
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
                      initialDate: AddmiselectedDate,
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100));
                  if (picked != null && picked != AddmiselectedDate) {
                    setState(() {
                      AddmiselectedDate = picked;
                      AddmidateController.text =
                          DateFormat('yyyy-MM-dd')
                              .format(AddmiselectedDate);
                      Addmimonth= DateFormat('MMMM')
                          .format(AddmiselectedDate); // Extract month
                      Addmidate = DateFormat('d').format(AddmiselectedDate);
                      Addmiyear = DateFormat('yyyy')
                          .format(AddmiselectedDate); // Extract day

                      // Use the month and day strings as needed
                      print('Month: $Addmimonth');
                      print('Day: $Addmidate');
                    });
                  }
                },
                child:
                Container(

                  margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                  width:
                  Responsive.isSmallScreen(context) ? width / 1.2 : width / 2,
                  height: 55,
                  child: TextField(
                    enabled: false,
                    controller: AddmidateController,
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Admission date",
                      hintStyle:
                      TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ),
                ),
              ),

            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      initialDate: DisselectedDate,
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100));
                  if (picked != null && picked != DisselectedDate) {
                    setState(() {
                      DisselectedDate = picked;
                      DisdateController.text =
                          DateFormat('yyyy-MM-dd')
                              .format(DisselectedDate);
                      DissAddmimonth = DateFormat('MMMM')
                          .format(DisselectedDate); // Extract month
                      DissAddmidate = DateFormat('d').format(DisselectedDate);
                      DissAddmiyear = DateFormat('yyyy')
                          .format(DisselectedDate); // Extract day

                      // Use the month and day strings as needed
                      print('Month: $DissAddmimonth');
                      print('Day: $DissAddmidate');
                    });
                  }
                },
                child:
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                  width:
                  Responsive.isSmallScreen(context) ? width / 1.2 : width / 2,
                  height: 55,
                  child: TextField(
                    enabled: false,
                    controller: DisdateController,
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Discharge date",
                      hintStyle:
                      TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ),
                ),
              ),

            ],
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

                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    filled: true,
                    fillColor: Color(0xffF9F9F9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Hospital name",
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
                    "Select Doctor",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: 14,
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
//
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Select Doctor",
                            hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.5),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xffF9F9F9),
                          child: Image(
                            image: AssetImage("image/DropDown.png"),
                            height: 18,
                          ),
                          //child:Icon(Icons.arrow_drop_down, color: Color(0xff4F555A).withOpacity(0.5),),
                        ),
                      ),
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
                  margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.2
                      : width / 2,
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
                      hintText: "chief complaints",
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.2
                      : width / 2,
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
                      hintText: "diagnosis",
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.2
                      : width / 2,
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
                      hintText: "Treatments given",
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    "Upload Reports",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: 14,
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
//
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Select File",
                            hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.5),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xffF9F9F9),
                          child: Image(
                            image: AssetImage("image/Upload.png"),
                            height: 20,
                          ),
                          //child:Icon(Icons.upload_rounded, color: Color(0xff4F555A).withOpacity(0.5),),
                        ),
                      ),
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
                    "Upload x-ray/mri",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: 14,
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
//
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Select File",
                            hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.5),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xffF9F9F9),
                          child: Image(
                            image: AssetImage("image/Upload.png"),
                            height: 20,
                          ),
                          //child:Icon(Icons.upload_rounded, color: Color(0xff4F555A).withOpacity(0.5),),
                        ),
                      ),
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
                    "Upload discharge summary",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: 14,
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
//
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Select File",
                            hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.5),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xffF9F9F9),
                          child: Image(
                            image: AssetImage("image/Upload.png"),
                            height: 20,
                          ),
                          //child:Icon(Icons.upload_rounded, color: Color(0xff4F555A).withOpacity(0.5),),
                        ),
                      ),
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
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.8
                            : width / 2,
                        height: 55,
                        child: TextField(
//
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Medicine name",
                            hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.5),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            suffixIcon: Image.asset(
                              "image/DropDown.png",
                              scale: 5,
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 4
                            : width / 6,
                        height: 55,
                        child: TextField(
//
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Freq/Day",
                            hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.5),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20, right: 20)),
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 50,
                  child: Image(image: AssetImage("image/AddButton.png")),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              height: _mediaquery.size.height * 0.070,
              width:
                  Responsive.isSmallScreen(context) ? width / 2.5 : width / 3.5,
              margin: EdgeInsets.only(top: _mediaquery.size.height * 0.02),
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
        ],
      ),
    );
  }
}
