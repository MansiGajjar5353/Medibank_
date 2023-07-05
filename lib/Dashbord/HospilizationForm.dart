import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';


import 'PatientBilling.dart';
class TabData {
  String title;
  String description;

  TabData(this.title, this.description);
}


class HospilizationForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HospilizationFormState();
  }

}

class HospilizationFormState extends State<HospilizationForm> {
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
    double width = MediaQuery
        .of(context)
        .size
        .width;

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
                Text("Hospilization ",
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
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => PatientBilling(),));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 119,
                    height: 26,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xff858585).withOpacity(0.5)),
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

          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
                    2,
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    filled: true,
                    fillColor: Color(0xffF9F9F9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none,),

                    hintText: "Admission date",
                    hintStyle: TextStyle(
                        color: Color(0xff4F555A).withOpacity(0.5)),

                  ),
                ),
              ),
            ],
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
                    2,
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
                      borderSide: BorderSide.none,),

                    hintText: "Discharge date",
                    hintStyle: TextStyle(
                        color: Color(0xff4F555A).withOpacity(0.5)),

                  ),
                ),
              ),
            ],
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
                    2,
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
                      borderSide: BorderSide.none,),

                    hintText: "Hospital name",
                    hintStyle: TextStyle(
                        color: Color(0xff4F555A).withOpacity(0.5)),

                  ),
                ),
              ),
            ],
          ),


          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(margin: EdgeInsets.only(left: 30, top: 20),
                  child: Text("Select Doctor", style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.4),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,),),
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
                              borderSide: BorderSide.none,),

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
                            height: 18,),
                          //child:Icon(Icons.arrow_drop_down, color: Color(0xff4F555A).withOpacity(0.5),),
                        ),),
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
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,),
                      hintText: "chief complaints",
                      hintStyle: TextStyle(
                        color: Color(0xff4F555A).withOpacity(0.5),),
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
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,),
                      hintText: "diagnosis",
                      hintStyle: TextStyle(
                        color: Color(0xff4F555A).withOpacity(0.5),),
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
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,),
                      hintText: "Treatments given",
                      hintStyle: TextStyle(
                        color: Color(0xff4F555A).withOpacity(0.5),),
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
                Container(margin: EdgeInsets.only(left: 30, top: 20),
                  child: Text("Upload Reports", style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.4),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,),),
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
                              borderSide: BorderSide.none,),

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
                            image: AssetImage("image/Upload.png"), height: 20,),
                          //child:Icon(Icons.upload_rounded, color: Color(0xff4F555A).withOpacity(0.5),),
                        ),),
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
                Container(margin: EdgeInsets.only(left: 30, top: 20),
                  child: Text("Upload x-ray/mri", style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.4),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,),),
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
                              borderSide: BorderSide.none,),

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
                            image: AssetImage("image/Upload.png"), height: 20,),
                          //child:Icon(Icons.upload_rounded, color: Color(0xff4F555A).withOpacity(0.5),),
                        ),),
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
                Container(margin: EdgeInsets.only(left: 30, top: 20),
                  child: Text("Upload discharge summary", style: TextStyle(
                    color: Color(0xff4F555A).withOpacity(0.4),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,),),
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
                              borderSide: BorderSide.none,),

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
                            image: AssetImage("image/Upload.png"), height: 20,),
                          //child:Icon(Icons.upload_rounded, color: Color(0xff4F555A).withOpacity(0.5),),
                        ),),
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
                              borderSide: BorderSide.none,),

                            hintText: "Medicine name",
                            hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.5),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            suffixIcon: Image.asset(
                              "image/DropDown.png", scale: 5,),
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
                              borderSide: BorderSide.none,),

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
              width: Responsive.isSmallScreen(context) ? width / 2.5 : width /
                  3.5,
              margin: EdgeInsets.only(top: _mediaquery.size.height * 0.02),
              child: ElevatedButton(
                onPressed: handleButtonPress,
                child: Image.asset('image/AerrowRight.png',
                    color: isButtonPressed ? Colors.black : imageColor,
                    height: _mediaquery.size.height * 0.04),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isButtonPressed ? buttonColor : Color(
                      0xffF9F9F9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

