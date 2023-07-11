import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';

import '../Onbording/Responsive.dart';

class TestFollowUpsForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TestFollowUpsFormState();
  }
}

class _TestFollowUpsFormState extends State<TestFollowUpsForm> {
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
      appBar: AppBar(
        toolbarHeight: 100, // default is 56

        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          }, padding: EdgeInsets.only(top: 40),
          icon: const BackButtonIcon(),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(padding: EdgeInsets.only(right: 30),
                child: Center(
                  child: Image(image: AssetImage("image/MedibankLOGO.png",),
                      width: Responsive.isSmallScreen(context)? width/2.3: width/4),
                )),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Test Follow ups",
                  style: TextStyle(color: Color(0xff000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),),
                InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));},
                  child: Image(image: AssetImage("image/DashboardImage.png"),
                    height: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 40,
                    top: Responsive.isSmallScreen(context)
                        ? width / 30
                        : width / 100,),
                  child: Text(
                    "Date",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
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
                          controller:dateController,
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 20),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Date",
                            hintStyle: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4 ),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: TextStyle(
                            color: Color(0xff000000).withOpacity(0.4),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        async {
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
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 20,
                    top: Responsive.isSmallScreen(context)
                        ? width / 30
                        : width / 500,),
                  child: Text(
                    "Time",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 60,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: Responsive.isSmallScreen(context)
                              ? width / 1.1
                              : width / 1.1,
                          height: Responsive.isSmallScreen(context)
                              ? width / 8
                              : width / 8,
                          child: TextField(
//
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20),
                              filled: true,
                              fillColor: Color(0xffF9F9F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "12.00AM",
                              hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.4),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 20
                                    : width / 26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 20,
                    top: Responsive.isSmallScreen(context)
                        ? width / 30
                        : width / 100,),
                  child: Text(
                    "Test Type",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child:Container(
                    margin: EdgeInsets.only(
                      top: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 60,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: Responsive.isSmallScreen(context)
                              ? width / 1.1
                              : width / 1.1,
                          height: Responsive.isSmallScreen(context)
                              ? width / 8
                              : width / 8,
                          child: TextField(
//
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20),
                              filled: true,
                              fillColor: Color(0xffF9F9F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Test Name",
                              hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.4),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 20
                                    : width / 26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 40,
                    top: Responsive.isSmallScreen(context)
                        ? width / 30
                        : width / 100,),
                  child: Text(
                    "Select Doctor",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
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
//
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 20),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Select Doctor",
                            hintStyle: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4 ),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: TextStyle(
                            color: Color(0xff000000).withOpacity(0.4),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
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
                            Icons.arrow_drop_down,
                            color: Color(0xff4F555A).withOpacity(0.5),
                          ),
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
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 40,
                    top: Responsive.isSmallScreen(context)
                        ? width / 30
                        : width / 100,),
                  child: Text(
                    "Follow Ups",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
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
//
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 20),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Select",
                            hintStyle: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4 ),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: TextStyle(
                            color: Color(0xff000000).withOpacity(0.4),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
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
                            Icons.arrow_drop_down,
                            color: Color(0xff4F555A).withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
//           Container(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(
//                     left: Responsive.isSmallScreen(context)
//                         ? width / 20
//                         : width / 20,
//                     right: Responsive.isSmallScreen(context)
//                         ? width / 20
//                         : width / 20,
//                     top: Responsive.isSmallScreen(context)
//                         ? width / 30
//                         : width / 100,),
//                   child: Text(
//                     "Clinic Name",
//                     style: TextStyle(
//                       color: Color(0xff4F555A).withOpacity(0.4),
//                       fontSize: Responsive.isSmallScreen(context)
//                           ? width / 20
//                           : width / 26,
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Container(
//                     margin: EdgeInsets.only(
//                       top: Responsive.isSmallScreen(context)
//                           ? width / 40
//                           : width / 60,
//                     ),
//                     alignment: Alignment.center,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           width: Responsive.isSmallScreen(context)
//                               ? width / 1.1
//                               : width / 1.1,
//                           height: Responsive.isSmallScreen(context)
//                               ? width / 8
//                               : width / 8,
//                           child: TextField(
// //
//                             decoration: InputDecoration(
//                               contentPadding: EdgeInsets.symmetric(
//                                   horizontal: 20),
//                               filled: true,
//                               fillColor: Color(0xffF9F9F9),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(45),
//                                 borderSide: BorderSide.none,
//                               ),
//                               hintText: "Clinic Name",
//                               hintStyle: TextStyle(
//                                 color: Color(0xff4F555A).withOpacity(0.4),
//                                 fontSize: Responsive.isSmallScreen(context)
//                                     ? width / 20
//                                     : width / 26,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                             style: TextStyle(
//                               color: Color(0xff4F555A).withOpacity(0.4),
//                               fontSize: Responsive.isSmallScreen(context)
//                                   ? width / 20
//                                   : width / 26,
//                               fontFamily: 'Poppins',
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(
//                 left:
//                 Responsive.isSmallScreen(context) ? width / 20 : width / 20,
//                 right:
//                 Responsive.isSmallScreen(context) ? width / 20 : width / 20,
//                 top: 10),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   width: Responsive.isSmallScreen(context)
//                       ? width / 1.1
//                       : width / 1.1,
//                   height:
//                   Responsive.isSmallScreen(context) ? width / 10 : width / 8,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.green,
//                       width: 1.0,
//                     ),
//                     borderRadius: BorderRadius.circular(45),
//                   ),
//                   child: Center(
//                     child: Text(
//                       "Choose File",
//                       style: TextStyle(
//                         color: Color(0xff979797),
//                         fontSize: Responsive.isSmallScreen(context)
//                             ? width / 24
//                             : width / 24,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
          Container(
            margin: EdgeInsets.only(
                left:
                Responsive.isSmallScreen(context) ? width / 10 : width / 10,
                right:
                Responsive.isSmallScreen(context) ? width / 10 : width / 10,
                top:
                Responsive.isSmallScreen(context) ? width / 20 : width / 20,
                bottom:
                Responsive.isSmallScreen(context) ? width / 7 : width / 7),
            width:
            Responsive.isSmallScreen(context) ? width / 1.3 : width / 1.3,
            height: Responsive.isSmallScreen(context) ? width / 8 : width / 8,
            child: ElevatedButton(
              child: Text(
                'Submit',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 25
                        : width / 25,
                    fontWeight: FontWeight.w900),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF24B445),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45)),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
