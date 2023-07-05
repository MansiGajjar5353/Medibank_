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
  final titles = ["Follow ups", "Follow ups", "Follow ups","Follow ups","Follow ups"];
  final Description = ["asdcfvghjukiyjt lkdfmklsdbn mjkiu87y6tr e fdsnh juki y7trf d", "asdcfvghjukiyjtyh7r65ewdsaxcv bn mjkiu87y6tr e fdsnh juki y7trf d", "asdcfvghjukiyjtyh7r65ewdsaxcv bn mjkiu87y6tr e fdsnh juki y7trf d", "asdcfvghjukiyjtyh7r65ewdsaxcv bn mjkiu87y6tr e fdsnh juki y7trf d", "asdcfvghjukiyjtyh7r65ewdsaxcv bn mjkiu87y6tr e fdsnh juki y7trf d"];
  final DoctoName = ["Amet minim ", "Amet minim ", "Amet minim ", "Amet minim ", "Amet minim "];

  final Date = ["27/8/2022", "27/8/2022", "27/8/2022", "27/8/2022", "27/8/2022"];
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
                      Text("Add Records ",
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
            body: ListView.builder(
                itemCount: Date.length,
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
                    child:Column(
                              children: [

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: Responsive.isSmallScreen(context)
                                          ? width / 2
                                          : width / 2.2,
                                      margin: EdgeInsets.only(left: 7),
                                      child: Text(
                                        titles[index],
                                        style: TextStyle(
                                            fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 30
                                                : width / 38,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 5,right: 5),
                                          child:  Image(
                                            image: AssetImage('image/EyeButton.png'),
                                            height: Responsive.isSmallScreen(context)
                                                ? width / 12
                                                : width / 20,
                                            width: Responsive.isSmallScreen(context)
                                                ? width / 12
                                                 : width / 20,
                                          ),
                                        ),

                                        Container(
                                          margin: EdgeInsets.only(left: 5,right: 5),
                                          child:  Image(
                                            image: AssetImage('image/EditButton.png'),
                                            height: Responsive.isSmallScreen(context)
                                                ? width / 12
                                                : width / 20,
                                            width: Responsive.isSmallScreen(context)
                                                ? width / 12
                                                : width / 20,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5,right: 10),
                                          child:  Image(
                                            image: AssetImage('image/DeleteButton.png'),
                                            height: Responsive.isSmallScreen(context)
                                                ? width / 12
                                                : width / 20,
                                            width: Responsive.isSmallScreen(context)
                                                ? width / 12
                                                : width / 20,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  padding:EdgeInsets.only(top:Responsive.isSmallScreen(context)? width/50: width/50),
                                  child: Container(
                                    height: 1.5,
                                    color: Color(0xffE4E8EE),

                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 7),
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Date  ",textAlign:TextAlign.left,

                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 30
                                                    : width / 38,
                                                color: Color(0xff929292),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      ),
                                      Container(
                                        child: Text(Date[index],
                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 30
                                                    : width / 38,
                                                color: Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 7),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text("Time  ",
                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 30
                                                    : width / 38,
                                                color: Color(0xff929292),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      ),
                                      Container(
                                        child: Text(time[index],
                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 30
                                                    : width / 38,
                                                color: Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 7),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text("Doctor  ",
                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 30
                                                    : width / 38,
                                                color: Color(0xff929292),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      ),
                                      Container(
                                        child: Text(DoctoName[index],
                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 30
                                                    : width / 38,
                                                color: Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 7),
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text("Drescription  ",
                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 30
                                                    : width / 38,
                                                color: Color(0xff929292),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      ),
                                      Expanded(

                                        child: Text(Description[index],

                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 30
                                                    : width / 38,
                                                color: Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 7),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text("Follow-ups for  ",
                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 30
                                                    : width / 38,
                                                color: Color(0xff929292),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      ),
                                      Container(
                                        child: Text(DoctoName[index],
                                            style: TextStyle(
                                                fontSize:
                                                Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 30
                                                    : width / 38,
                                                color: Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins')),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),

                  );
                })),
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
                    left:
                    Responsive.isSmallScreen(context) ? width / 10 : width / 10,
                    right:
                    Responsive.isSmallScreen(context) ? width / 10 : width / 10,
                    bottom:
                    Responsive.isSmallScreen(context) ? width / 7 : width / 10),
                width:
                Responsive.isSmallScreen(context) ? width / 2.0 : width / 2.0,
                height: Responsive.isSmallScreen(context) ? width / 9 : width / 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Color(0xff24B445),
                ),
                child: Icon(
                  Icons.add,
                  color: Color(0xff000000),
                  size: Responsive.isSmallScreen(context) ? width / 12 : width / 15,
                ),
              )),
        ),
      ],
    );
  }
}
