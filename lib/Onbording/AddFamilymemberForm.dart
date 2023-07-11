import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_signup_page/Dashbord/AddFamilyMemberDialog.dart';
import 'Responsive.dart';

class AddFamilymemberForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddFamilymemberFormState();
  }
}

class _AddFamilymemberFormState extends State<AddFamilymemberForm> {
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
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        title: Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.black,
            fontSize:
                Responsive.isSmallScreen(context) ? width / 24 : width / 34,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left:
                        Responsive.isSmallScreen(context) ? width / 20 : width / 20,
                    top: 20),
                child: RichText(
                  text: TextSpan(
                    text: 'Add Family ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 22
                          : width / 28,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Members Details',
                        style: TextStyle(
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 22
                              : width / 28,
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
                      margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 20,
                        top: Responsive.isSmallScreen(context)
                            ? width / 30
                            : width / 100,
                      ),
                      child: Text(
                        "Date Of Birth",
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
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                        top: Responsive.isSmallScreen(context)
                            ? width / 40
                            : width / 60,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

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
                                  ? width / 1.1
                                  : width / 1.1,
                              height: Responsive.isSmallScreen(context)
                                  ? width / 8
                                  : width / 8,
                              child: TextField(
                                enabled: false,
                                controller: dateController,
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                                  filled: true,
                                  fillColor: Color(0xffF9F9F9),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(45),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: "dd/mm/yyyy",
                                  hintStyle: TextStyle(
                                    color: Color(0xff4F555A).withOpacity(0.5),
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 20
                                        : width / 26,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  suffixIcon: IconButton(
                                    padding: EdgeInsets.only(right:  Responsive.isSmallScreen(context)
                                        ? width / 20
                                        : width / 26,),
                                    icon: Icon(
                                      Icons.calendar_today_outlined,
                                      color: Color(0xff4F555A).withOpacity(0.5),
                                      size: Responsive.isSmallScreen(context)
                                          ? width / 25
                                          : width / 30,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                style: TextStyle(
                                  color: Color(0xff4F555A).withOpacity(0.5),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 26,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
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
                            : width / 100,
                      ),
                      child: Text(
                        "UserName",
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
                      alignment: Alignment.center,
                      margin: EdgeInsets.only( top: Responsive.isSmallScreen(context)
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
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                                filled: true,
                                fillColor: Color(0xffF9F9F9),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "Username",
                                hintStyle: TextStyle(
                                  color: Color(0xff4F555A).withOpacity(0.5),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 26,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                                suffixIcon: IconButton(
                                  padding: EdgeInsets.only(right: 20),
                                  icon: Icon(
                                    Icons.calendar_today_outlined,
                                    color: Color(0xff4F555A).withOpacity(0.5),
                                    size: Responsive.isSmallScreen(context)
                                        ? width / 25
                                        : width / 30,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              style: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.5),
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
                  ],
                ),
              ),

            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/10 : width/10,right: Responsive.isSmallScreen(context)? width/10 : width/10,bottom: Responsive.isSmallScreen(context)? width/7 : width/12),

              width: Responsive.isSmallScreen(context)? width/2.5 : width/2.5,
              height: Responsive.isSmallScreen(context)? width/9 : width/15,

              child: ElevatedButton(
                child: Text('Find Member', style: TextStyle( fontFamily:'Poppins',
                    fontSize:  Responsive.isSmallScreen(context)? width/ 25:width/50, fontWeight: FontWeight.w700),),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF24B445),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)
                  ),
                ),
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AddFamilyMemberDialog(),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
