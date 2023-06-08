import 'package:flutter/material.dart';
import 'Responsive.dart';
class AddInsurance extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddInsuranceState();
  }
}

class AddInsuranceState extends State<AddInsurance> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    return Scaffold(
        appBar:  AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.green),
          title: Text("Add Insurance", style: TextStyle(color: Color(0xff000000),fontSize:Responsive.isSmallScreen(context)? width/20 : width/20, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),
        ),
        body: ListView(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,top: 20),
                    child: Text("Insurance company Name",
                      style: TextStyle(color: Color(0xff212426),
                      fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w400, ),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,right: Responsive.isSmallScreen(context)? width/20 : width/20,top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: Responsive.isSmallScreen(context)? width/1.1 : width/1.1,
                          height: Responsive.isSmallScreen(context)? width/9.3 : width/9.3,
                          child: TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal:10),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color:Color(0xff24B445), width: 1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Color(0x1F0A0A0A), width:1),
                              ),
                              hintText: "Company Name",
                              hintStyle: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                            ),
                            style: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)? width/2.4 : width/2.4,
                            margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/50 : width/50),
                            child: Text("Policy date",
                              style: TextStyle(color: Color(0xff212426),
                                fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w400,),),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/50 : width/50 ),
                            width: Responsive.isSmallScreen(context)? width/2.4 : width/2.4,
                            height: Responsive.isSmallScreen(context)? width/9.3 : width/9.3,
                            child: TextField(
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color:Color(0xff24B445), width: 1),
                                ),

                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Color(0x1F0A0A0A), width:1),
                                ),
                                suffixIcon: IconButton(padding: EdgeInsets.only(right: Responsive.isSmallScreen(context)? width/30 : width/30),icon:Icon(Icons.calendar_today_outlined,color: Color(0xff4F555A).withOpacity(0.5),
                                  size: Responsive.isSmallScreen(context)? width/22 : width/28,), onPressed: () {  },
                                ),
                                hintText: "Policy Date",
                                hintStyle: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),

                              ),
                              style: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)? width/2.4 : width/2.4,
                            margin:EdgeInsets.only(right: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/50 : width/50),
                            child: Text("Policy date ",
                              style: TextStyle(color: Color(0xff212426),
                                fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w400, ),),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin:EdgeInsets.only(right: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/50 : width/50 ),
                            width: Responsive.isSmallScreen(context)? width/2.4 : width/2.4,
                            height: Responsive.isSmallScreen(context)? width/9.3 : width/9.3,
                            child: TextField(
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color:Color(0xff24B445), width: 1),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Color(0x1F0A0A0A), width:1),
                                ),
                                suffixIcon: IconButton(padding: EdgeInsets.only(right: Responsive.isSmallScreen(context)? width/30 : width/30),icon:Icon(Icons.calendar_today_outlined,color: Color(0xff4F555A).withOpacity(0.5),
                                  size: Responsive.isSmallScreen(context)? width/22 : width/28,), onPressed: () {  },
                                ),
                                hintText: "Expiry Date",

                                hintStyle: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                              ),
                              style: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,top: 20),
                    child: Text("Select file",
                      style: TextStyle(color: Color(0xff212426),
                        fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w400, ),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,right: Responsive.isSmallScreen(context)? width/20 : width/20,top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: Responsive.isSmallScreen(context)? width/1.1 : width/1.1,
                          height: Responsive.isSmallScreen(context)? width/9.3 : width/9.3,

                          child: TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal:10),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color:Color(0xff24B445), width: 1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Color(0x1F0A0A0A), width:1),
                              ),
                              suffixIcon: Padding(
                                  padding: EdgeInsets.all(15), child: Text('BROWSER',style: TextStyle(color:Color(0xff24B445), fontSize:Responsive.isSmallScreen(context)? width/35 : width/40, fontFamily: 'Poppins',fontWeight: FontWeight.w600,),),),
                              hintText: "Select",
                              hintStyle: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                            ),
                            style: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,top: 20),
                    child: Text("Policy Number",
                      style: TextStyle(color: Color(0xff212426),
                        fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w400, ),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,right: Responsive.isSmallScreen(context)? width/20 : width/20,top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: Responsive.isSmallScreen(context)? width/1.1 : width/1.1,
                          height: Responsive.isSmallScreen(context)? width/9.3 : width/9.3,
                          child: TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal:10),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color:Color(0xff24B445), width: 1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Color(0x1F0A0A0A), width:1),
                              ),
                              hintText: "Policy Number",
                              hintStyle: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                            ),
                            style: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)? width/2.4 : width/2.4,
                            margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/50 : width/50),
                            child: Text("Premium",
                              style: TextStyle(color: Color(0xff212426),
                                fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w400,),),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/50 : width/50 ),
                            width: Responsive.isSmallScreen(context)? width/2.4 : width/2.4,
                            height: Responsive.isSmallScreen(context)? width/9.3 : width/9.3,
                            child: TextField(
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color:Color(0xff24B445), width: 1),
                                ),

                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Color(0x1F0A0A0A), width:1),
                                ),

                                hintText: "0.0",
                                hintStyle: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),

                              ),
                              style: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)? width/2.4 : width/2.4,
                            margin:EdgeInsets.only(right: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/50 : width/50),
                            child: Text("Insurance covered",
                              style: TextStyle(color: Color(0xff212426),
                                fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w400, ),),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin:EdgeInsets.only(right: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/50 : width/50 ),
                            width: Responsive.isSmallScreen(context)? width/2.4 : width/2.4,
                            height: Responsive.isSmallScreen(context)? width/9.3 : width/9.3,
                            child: TextField(
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color:Color(0xff24B445), width: 1),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Color(0x1F0A0A0A), width:1),
                                ),

                                hintText: "0.0",

                                hintStyle: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                              ),
                              style: TextStyle(color:Color(0xff979797), fontSize:Responsive.isSmallScreen(context)? width/24 : width/24, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  Container(
                    margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/10 : width/10,right: Responsive.isSmallScreen(context)? width/10 : width/10,top: Responsive.isSmallScreen(context)? width/7 : width/7,bottom: Responsive.isSmallScreen(context)? width/7 : width/7),
                    width: Responsive.isSmallScreen(context)? width/1.3 : width/1.3,
                    height: Responsive.isSmallScreen(context)? width/9.5 : width/9.5,
                    child: ElevatedButton(
                      child: Text('Submit', style: TextStyle( fontFamily:'Poppins',
                          fontSize:  Responsive.isSmallScreen(context)? width/ 25:width/25, fontWeight: FontWeight.w900),),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF24B445),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                  ),
                ],

              ),
            ),
          ],
        ),
    );
  }

}

