import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'Responsive.dart';
class AccessCode extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return AccessCodeState();
  }


}

class AccessCodeState  extends State<AccessCode>{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

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
                )),

            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Dashboard ",
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
      body: ListView(
children: [
  Container(
    margin: EdgeInsets.only(left:_mediaquery.size.width*0.09, top: 10),
  child: Text("Please enter the code provided by the doctor", style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45), fontSize: 12, fontWeight: FontWeight.w400),),
  ),
  Container(
    margin: EdgeInsets.only(left:_mediaquery.size.width*0.09,right:_mediaquery.size.width*0.09, top:12),
    width: Responsive.isSmallScreen(context) ? width/0.2 : width/0.3,
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

        hintText: "Enter Code",
        hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5)),

      ),
    ),
  ),

  Container(
    margin: EdgeInsets.only(left:_mediaquery.size.width*0.09, top:12),
    child: Text("Valid Upto", style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45), fontSize: 12, fontWeight: FontWeight.w400),),
  ),

  Container(
    margin:EdgeInsets.only(left:_mediaquery.size.width*0.09,top: 12),
    child: Row(
      children: [
        Container(
          width: Responsive.isSmallScreen(context) ? width/1.39 : width/1.5,
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

              hintText: "Date",
              hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 10,top: 12)),
        Container(
          child:CircleAvatar(
            radius: Responsive.isSmallScreen(context) ? width/17 : width/35,
            backgroundColor: Color(0xffF9F9F9),
            child:Icon(Icons.calendar_today_outlined, color: Color(0xff4F555A).withOpacity(0.5),),
          ),),
      ],
    ),
  ),


  Container(
    margin: EdgeInsets.only(top: 12, left:_mediaquery.size.width*0.09,),
    child: Row(
      children: [
        Container(
          width: Responsive.isSmallScreen(context) ? width/1.72 : width/1.5,
          height: 55,
          child: TextField(
//
            decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              filled: true,
              fillColor: Color(0xffF9F9F9),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide.none,),

              hintText: "10:12",
              hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 10)),
        Container(
          child:CircleAvatar(
            radius: Responsive.isSmallScreen(context) ? width/17 : width/35,
            backgroundColor: Color(0xffF9F9F9),
            child:Text("AM",
                style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5),)),
          ),),
        Padding(padding: EdgeInsets.only(left: 10)),
        Container(
          child:CircleAvatar(
            radius: Responsive.isSmallScreen(context) ? width/17 : width/35,
            backgroundColor: Color(0xffF9F9F9),
            child:Text("PM", style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5),)),
          ),),
      ],),
  ),
Padding(padding: EdgeInsets.only(top: _mediaquery.size.height*0.45)),
  Center(
    child: Container(
      height: _mediaquery.size.height*0.070,
      width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
      margin: EdgeInsets.only(top: _mediaquery.size.height*0.011),
      child: ElevatedButton(
        onPressed: () {

        },
        child: Image(image: AssetImage('image/AerrowRight.png'),
            height: _mediaquery.size.height*0.04) ,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff24B445),
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