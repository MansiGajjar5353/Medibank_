import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class TreatmentsForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return TreatmentsFormState();
  }


}

class TreatmentsFormState extends State<TreatmentsForm>{
  Color imageColor = Color(0xff4F555A).withOpacity(0.5);
  Color buttonColor = Colors.black; // Initial color of the button
  bool isButtonPressed = false;

  String FOLLOUP = "0";

  void handleButtonPress() {
    setState(() {
      buttonColor = Colors.green; // Change the color to your desired value
      isButtonPressed = true;
    });

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        buttonColor = Colors.green; // Change the color back to the original value
        isButtonPressed = false;
      });

    });
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    List<String> FollowUp = [
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6'
    ];
    TextEditingController _followController = TextEditingController();
    _followController.text = FOLLOUP;
    void dispose() {

      _followController.dispose();
      super.dispose();
    }
    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Responsive.isSmallScreen(context)? width/5: width/8.2,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green, size: Responsive.isSmallScreen(context)? width/20: width/25,),
        leading: Align(
          alignment: Alignment.bottomLeft,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const BackButtonIcon(
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(padding: EdgeInsets.only(right: 30),
                child: Center(
                  child: Image(image: AssetImage("image/MedibankLOGO.png",),
                      width: Responsive.isSmallScreen(context)? width/2.3: width/4),
                )
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Treatments",
                      style: TextStyle(color: Color(0xff000000),
                          fontSize: Responsive.isSmallScreen(context)? width/20: width/30,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),),
                  ),
                  InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));},
                    child: Image(image: AssetImage("image/DashboardImage.png"),
                      height:  Responsive.isSmallScreen(context)? width/15: width/30,
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),

      body:ListView(
        children: [

          Container(margin: EdgeInsets.only(left: 30),
            child: RichText(
              text: TextSpan(
                text: 'Enter ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize:Responsive.isSmallScreen(context)? width/20 : width/40,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Treatments',
                    style: TextStyle(
                      fontSize:Responsive.isSmallScreen(context)? width/20 : width/40,
                      color: Color(0xff24B445),

                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',),
                  ),
                ],
              ),
            ),
          ),

          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(margin:EdgeInsets.only(left: 30,top: 20),
                  child: Text("Date",
                    style: TextStyle(color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize:Responsive.isSmallScreen(context)? width/25 : width/50,fontWeight: FontWeight.w400, ),),
                ),
                Container(
                  margin:EdgeInsets.only(left: 30,top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/1.5 : width/2,
                        height: 55,
                        child: TextField(
//
                          decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide.none,),

                            hintText: "Date",
                            hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        child:CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xffF9F9F9),
                          child:Icon(Icons.calendar_today_outlined, color: Color(0xff4F555A).withOpacity(0.5),),
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
                Container(margin:EdgeInsets.only(left: 30,top: 20),
                  child: Text("Select Doctor", style: TextStyle(color: Color(0xff4F555A).withOpacity(0.4),fontSize: 14,fontWeight: FontWeight.w400, ),),
                ),
                Container(
                  margin:EdgeInsets.only(left: 30,top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/1.5 : width/2,
                        height: 55,

                        child: TextField(
//
                          decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide.none,),

                            hintText: "Select Doctor",
                            hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),fontSize: 16,fontWeight: FontWeight.w400),

                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        child:CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xffF9F9F9),
                          child: Image(image: AssetImage("image/DropDown.png"),height: 18,),
                          //child:Icon(Icons.arrow_drop_down, color: Color(0xff4F555A).withOpacity(0.5),),
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                margin: EdgeInsets.only(left:30,right: 30, top:10),
                width: Responsive.isSmallScreen(context)? width/1.2 : width/2,
                height: 55,
                child: TextField(
//
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    filled: true,
                    fillColor: Color(0xffF9F9F9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none,),

                    hintText: "Treatment",
                    hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5)),

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
                  margin: EdgeInsets.only(left:30,right: 30, top:10),
                  width: Responsive.isSmallScreen(context)? width/1.2 : width/2,
                  height: 55,
                  child: TextField(
//
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,),
                      hintText: "Medication",
                      hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), ),
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
                  margin:EdgeInsets.only(left: 30,top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/1.5 : width/2,
                        height: 55,

                        child: TextField(
//
                          decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide.none,),

                            hintText: "Select File",
                            hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),fontSize: 16,fontWeight: FontWeight.w400),

                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        child:CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xffF9F9F9),
                          child: Image(image: AssetImage("image/UPFile.png"),height: 18,),
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
                Container(margin:EdgeInsets.only(left: 30,top: 20),
                  child: Text("Follow up (After)", style: TextStyle(color: Color(0xff4F555A).withOpacity(0.4),fontSize: 14,fontWeight: FontWeight.w400, ),),
                ),
                Container(
                  child: InkWell(
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
                                    ? width / 1
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
                                          itemCount: FollowUp.length,
                                          itemBuilder: (context, index) {
                                            final year = FollowUp[index];
                                            final isSelectedYear = year == FOLLOUP;

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
                                                  FOLLOUP = year;
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
                    child:
                    Container(
                      margin:EdgeInsets.only(left: 30,top: 10),
                      child: Row(
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)? width/1.5 : width/2,
                            height: 55,

                            child: TextField(
                              controller: _followController,
                              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                filled: true,
                                fillColor: Color(0xffF9F9F9),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(35),
                                  borderSide: BorderSide.none,),

                                hintText: "0",
                                hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),fontSize: 16,fontWeight: FontWeight.w400),

                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            child:CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xffF9F9F9),
                              child: Image(image: AssetImage("image/DropDown.png"),height: 18,),
                              //child:Icon(Icons.arrow_drop_down, color: Color(0xff4F555A).withOpacity(0.5),),
                            ),),
                        ],
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),

          Center(
            child: Container(
              height: _mediaquery.size.height*0.070,
              width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
              margin: EdgeInsets.only(top: _mediaquery.size.height*0.02),
              child: ElevatedButton(
                onPressed:handleButtonPress,
                child: Image.asset('image/AerrowRight.png',
                    color: isButtonPressed? Colors.black:imageColor,
                    height: _mediaquery.size.height*0.04) ,
                style: ElevatedButton.styleFrom(
                  backgroundColor:isButtonPressed ? buttonColor : Color(0xffF9F9F9),
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