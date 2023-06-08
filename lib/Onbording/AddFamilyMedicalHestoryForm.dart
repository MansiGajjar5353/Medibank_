import 'package:flutter/material.dart';
import 'Responsive.dart';
class AddFamilyMedicalForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddFamilyMedicalFormState();
  }
}

class _AddFamilyMedicalFormState extends State<AddFamilyMedicalForm> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        title: Text("Add Family Medical History ", style:  TextStyle(color: Colors.black,  fontSize:Responsive.isSmallScreen(context)? width/20 : width/34, fontFamily: 'Poppins',fontWeight: FontWeight.w400,),),

      ),

      body:Stack(
        children: [
          ListView(
            children: [
              Container(margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/46 : width/90,right: Responsive.isSmallScreen(context)? width/46 : width/90,top:1),
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: 'Note: minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. ',
                    style: TextStyle(
                      color: Color(0xff929292),
                      fontSize:Responsive.isSmallScreen(context)? width/40 : width/54,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),

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
                                hintText: "Select Member",
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
                                Icons.arrow_drop_down_outlined,
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
                                hintText: "Living/Deceased",
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
                                Icons.arrow_drop_down_outlined,
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
                                  hintText: "Major illness/ cause of death",
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
                                  hintText: "Age",
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
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/10 : width/10,right: Responsive.isSmallScreen(context)? width/10 : width/10,bottom: Responsive.isSmallScreen(context)? width/7 : width/12),

              width: Responsive.isSmallScreen(context)? width/2.5 : width/2.5,
              height: Responsive.isSmallScreen(context)? width/9 : width/15,

              child: ElevatedButton(
                child: Text('Save', style: TextStyle( fontFamily:'Poppins',
                    fontSize:  Responsive.isSmallScreen(context)? width/ 25:width/50, fontWeight: FontWeight.w700),),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF24B445),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)
                  ),
                ),
                onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> AddFamilyMedicalForm()));
                },
              ),
            ),
          )
        ],
      ),
    );
  }

}

