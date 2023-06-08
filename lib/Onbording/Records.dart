import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'Responsive.dart';

class Records extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return RecordsState();
  }


}

class RecordsState extends State<Records>{

  void performActionForIndex(BuildContext context, int index) {

    if (index == 0) {
     // All();


    } else if (index ==1){
      // Perform a generic action for other indices
      print('Performing generic action for index $index');
    }else if (index ==2){
      // Perform a generic action for other indices
      print('Performing generic action for index $index');
    }else if (index ==3){
      // Perform a generic action for other indices
      print('Performing generic action for index $index');
    }else if (index ==4){
      // Perform a generic action for other indices
      print('Performing generic action for index $index');
    }else if (index ==5){
      // Perform a generic action for other indices
      print('Performing generic action for index $index');
    }
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);

    List<String> tabs = [
      'All',
      'Lab Report',
      'Prescription',
      'Hospitalization',
      'Report Validation',
      'Treatments',
      'Other',
    ];
    int currentIndex = 0;
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0,
       title: Text("Medical Records",
         style: TextStyle(color: Color(0xff000000),
             fontSize: 18,
             fontWeight: FontWeight.w400,
             fontFamily: 'Poppins'),),
     ),
      body:
     ListView(
        children: [
          Container(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tabs.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                performActionForIndex(context, index);
                },
                    child: Text(tabs[index]),
                  ),
                );
              },
            ),
          ),
         Container(
            margin: EdgeInsets.only(left: 20),
            child: Text("Sort by:Last7 Days",
              style: TextStyle(color: Color(0xff808080),
                  fontSize: 11, fontWeight: FontWeight.w400),),
          ),


          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            height: Responsive.isSmallScreen(context)?_mediaquery.size.height*0.88: _mediaquery.size.height*1.5,
            decoration: BoxDecoration(

              color: Color(0xffF7F7F7),
              borderRadius: BorderRadius.circular(8),

            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Container(
                  margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                  height: Responsive.isSmallScreen(context)?_mediaquery.size.height*0.20:_mediaquery.size.height*0.32,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),

                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          children: [
                            Container(
                              //height: Responsive.isSmallScreen(context)? _mediaquery.size.height*0.1 :_mediaquery.size.height*0.10,
                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                              child: Image(image: AssetImage('image/Report1.png')),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 22,
                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                              decoration: BoxDecoration(
                                color: Color(0xffDEF4E3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(child: Text("24 Jan",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xff24B445),
                                    fontSize: 10, fontWeight: FontWeight.w500),)),
                            ),
                          ],
                        ),
                      ),
                      Column(
mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)? width/1.61 : width/1.22,
                            margin: EdgeInsets.only(left: 20, top: 10),
                            child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Container(child: Text("Blood Report",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                      fontWeight: FontWeight.w500),)),
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                  child: Container(
                                  margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/9 : width/18),
                                    height: 25,
                                    width: Responsive.isSmallScreen(context)? width/5 : width/10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(color: Color(0xff24B445)),
                                    ),
                                    child: Center(child:
                                    Text("Support", textAlign: TextAlign.center,
                                      style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),)),
                                  ),
                                  ),
                                  ),

                              ],
                            ),
                          ),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                            children: [
                              Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                child: Text("Upload on",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                    fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                    fontWeight: FontWeight.w400),
                                ),
                              ),
                              Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                  fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                  fontWeight: FontWeight.w400),),
                              Text("24/01/2023 ,10:54 AM", style: TextStyle(color: Color(0xff000000),
                                  fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                  fontWeight: FontWeight.w400),),
                            ],
                          )),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("No of Pages",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("2", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(
                                    width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("Type",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("Scanned", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("Verification:",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("Verified", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(
                            width: Responsive.isSmallScreen(context)? width/1.50 : width/1.20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                     margin: EdgeInsets.only(left: 10,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Color(0xff24B445)),
                                      ),
                                      child: Center(child:
                                      Text("Verify", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),


                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Color(0xff24B445)),
                                      ),
                                      child: Center(child:
                                      Text("View", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Colors.red),
                                      ),
                                      child: Center(child:
                                      Text("Hide", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Colors.red),
                                      ),
                                      child: Center(child:
                                      Text("Delete", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ),




                Container(
                  margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                  height: Responsive.isSmallScreen(context)?_mediaquery.size.height*0.20:_mediaquery.size.height*0.32,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),

                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          children: [
                            Container(
                              //height: Responsive.isSmallScreen(context)? _mediaquery.size.height*0.1 :_mediaquery.size.height*0.10,
                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                              child: Image(image: AssetImage('image/Report1.png')),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 22,
                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                              decoration: BoxDecoration(
                                color: Color(0xffDEF4E3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(child: Text("24 Jan",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xff24B445),
                                    fontSize: 10, fontWeight: FontWeight.w500),)),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)? width/1.61 : width/1.22,
                            margin: EdgeInsets.only(left: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Container(child: Text("Blood Report",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                      fontWeight: FontWeight.w500),)),
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/9 : width/18),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/5 : width/10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Color(0xff24B445)),
                                      ),
                                      child: Center(child:
                                      Text("Support", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("Upload on",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("24/01/2023 ,10:54 AM", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("No of Pages",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("2", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(
                                    width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("Type",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("Scanned", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("Verification:",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("Verified", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(
                            width: Responsive.isSmallScreen(context)? width/1.50 : width/1.20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 10,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Color(0xff24B445)),
                                      ),
                                      child: Center(child:
                                      Text("Verify", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),


                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Color(0xff24B445)),
                                      ),
                                      child: Center(child:
                                      Text("View", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Colors.red),
                                      ),
                                      child: Center(child:
                                      Text("Hide", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Colors.red),
                                      ),
                                      child: Center(child:
                                      Text("Delete", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ),

                Container(
                  margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                  height: Responsive.isSmallScreen(context)?_mediaquery.size.height*0.20:_mediaquery.size.height*0.32,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),

                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          children: [
                            Container(
                              //height: Responsive.isSmallScreen(context)? _mediaquery.size.height*0.1 :_mediaquery.size.height*0.10,
                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                              child: Image(image: AssetImage('image/Report1.png')),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 22,
                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                              decoration: BoxDecoration(
                                color: Color(0xffDEF4E3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(child: Text("24 Jan",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xff24B445),
                                    fontSize: 10, fontWeight: FontWeight.w500),)),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)? width/1.61 : width/1.22,
                            margin: EdgeInsets.only(left: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Container(child: Text("Blood Report",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                      fontWeight: FontWeight.w500),)),
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/9 : width/18),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/5 : width/10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Color(0xff24B445)),
                                      ),
                                      child: Center(child:
                                      Text("Support", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("Upload on",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("24/01/2023 ,10:54 AM", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("No of Pages",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("2", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(
                                    width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("Type",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("Scanned", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("Verification:",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("Verified", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(
                            width: Responsive.isSmallScreen(context)? width/1.50 : width/1.20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 10,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Color(0xff24B445)),
                                      ),
                                      child: Center(child:
                                      Text("Verify", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),


                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Color(0xff24B445)),
                                      ),
                                      child: Center(child:
                                      Text("View", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Colors.red),
                                      ),
                                      child: Center(child:
                                      Text("Hide", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Colors.red),
                                      ),
                                      child: Center(child:
                                      Text("Delete", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ),

                Container(
                  margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                  height: Responsive.isSmallScreen(context)?_mediaquery.size.height*0.20:_mediaquery.size.height*0.32,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),

                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          children: [
                            Container(
                              //height: Responsive.isSmallScreen(context)? _mediaquery.size.height*0.1 :_mediaquery.size.height*0.10,
                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                              child: Image(image: AssetImage('image/Report1.png')),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 22,
                              width: Responsive.isSmallScreen(context)? width/8 : width/15,
                              decoration: BoxDecoration(
                                color: Color(0xffDEF4E3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(child: Text("24 Jan",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xff24B445),
                                    fontSize: 10, fontWeight: FontWeight.w500),)),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)? width/1.61 : width/1.22,
                            margin: EdgeInsets.only(left: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Container(child: Text("Blood Report",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                      fontWeight: FontWeight.w500),)),
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: Responsive.isSmallScreen(context)?width/9 : width/18),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/5 : width/10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Color(0xff24B445)),
                                      ),
                                      child: Center(child:
                                      Text("Support", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("Upload on",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("24/01/2023 ,10:54 AM", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("No of Pages",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("2", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(
                                    width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("Type",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("Scanned", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(  margin: EdgeInsets.only(left: 20,top: 1),
                              child: Row(
                                children: [
                                  Container(width:Responsive.isSmallScreen(context)? width/5 : width/10,
                                    child: Text("Verification:",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                        fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                        fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Text(":",style: TextStyle(color: Color(0xff24B445).withOpacity(0.5),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                  Text("Verified", style: TextStyle(color: Color(0xff000000),
                                      fontSize: Responsive.isSmallScreen(context)? width/50 : width/60,
                                      fontWeight: FontWeight.w400),),
                                ],
                              )),
                          Container(
                            width: Responsive.isSmallScreen(context)? width/1.50 : width/1.20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 10,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Color(0xff24B445)),
                                      ),
                                      child: Center(child:
                                      Text("Verify", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),


                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Color(0xff24B445)),
                                      ),
                                      child: Center(child:
                                      Text("View", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Colors.red),
                                      ),
                                      child: Center(child:
                                      Text("Hide", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,top: 5),
                                      height: 25,
                                      width: Responsive.isSmallScreen(context)? width/7: width/8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Colors.red),
                                      ),
                                      child: Center(child:
                                      Text("Delete", textAlign: TextAlign.center,
                                        style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),)),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ),
























              ],
            ),
          )
        ],
      ),





//
//
//      ListView(
//
//        children: [
//               Container(
//           height: 70,
//            child: new Row(
//              children: <Widget>[
//                new Flexible(
//                  child: new CustomScrollView(
//                    shrinkWrap: true,
//                    scrollDirection: Axis.horizontal,
//                    slivers: <Widget>[
//                      new SliverPadding(
//                        padding: const EdgeInsets.all(20.0),
//                        sliver: new SliverList(
//                          delegate: new SliverChildListDelegate(
//                            <Widget>[
//
//
//
//
//                              //  Container(
//                              //    margin:EdgeInsets.only(right:10),
//                              //    child: InkWell(onTap:(){print("All");},
//                              //        child: Text('All', style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
//                              //        fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                              //  ),
//                              // Container(
//                              //   margin:EdgeInsets.only(right:10),
//                              //   child: InkWell(onTap:(){},
//                              //       child: Text('Lab Report', style: TextStyle(color: Color(0xff000000).withOpacity(0.5), fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                              // ),
//                              // Container(
//                              //   margin:EdgeInsets.only(right:10),
//                              //   child: InkWell(onTap:(){},
//                              //       child: Text('Prescription', style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
//                              //           fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                              // ),
//                              // Container(
//                              //   margin:EdgeInsets.only(right:10),
//                              //   child: InkWell(onTap:(){},
//                              //       child: Text('Hospitalization', style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
//                              //           fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                              // ),
//                              // Container(
//                              //   margin:EdgeInsets.only(right:10),
//                              //   child: InkWell(onTap:(){},
//                              //       child: Text('Report Validation', style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
//                              //           fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                              // ),
//                              // Container(
//                              //   margin:EdgeInsets.only(right:10),
//                              //   child: InkWell(onTap:(){},
//                              //       child: Text('Treatments', style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
//                              //           fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                              // ),
//                              // Container(
//                              //   margin:EdgeInsets.only(right:10),
//                              //   child: InkWell(onTap:(){},
//                              //       child: Text('Other', style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
//                              //           fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                              // ),
//                            ],
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          ),
//
//
//

//
//
//
//
//        ],
//
//      ),

   );
  }
}

// class All {
//
//   setState(BuildContext context){
//     double width = MediaQuery.of(context).size.width;
//
//
//
//     ListView(
//       children: [
//
//          Container(
//                                 margin:EdgeInsets.only(right:10),
//                                 child: InkWell(onTap:(){print("All");},
//                                     child: Text('All', style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
//                                     fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                               ),
//                              Container(
//                                margin:EdgeInsets.only(right:10),
//                                child: InkWell(onTap:(){},
//                                    child: Text('Lab Report', style: TextStyle(color: Color(0xff000000).withOpacity(0.5), fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                              ),
//                              Container(
//                                margin:EdgeInsets.only(right:10),
//                                child: InkWell(onTap:(){},
//                                    child: Text('Prescription', style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
//                                        fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                              ),
//                              Container(
//                                margin:EdgeInsets.only(right:10),
//                                child: InkWell(onTap:(){},
//                                    child: Text('Hospitalization', style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
//                                        fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                              ),
//                              Container(
//                                margin:EdgeInsets.only(right:10),
//                                child: InkWell(onTap:(){},
//                                    child: Text('Report Validation', style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
//                                        fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                              ),
//                              Container(
//                                margin:EdgeInsets.only(right:10),
//                                child: InkWell(onTap:(){},
//                                    child: Text('Treatments', style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
//                                        fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                              ),
//                              Container(
//                                margin:EdgeInsets.only(right:10),
//                                child: InkWell(onTap:(){},
//                                    child: Text('Other', style: TextStyle(color: Color(0xff000000).withOpacity(0.5),
//                                        fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),)),
//                              ),
//
//
//
//
//
//       ],
//     );
//   }
// }


