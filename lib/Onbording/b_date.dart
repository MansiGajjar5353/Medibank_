import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_signup_page/Onbording/Gender.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'Responsive.dart';
//import 'package:intl/intl.dart';
//import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class b_date extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   // throw UnimplementedError();
    return b_dateState();
  }


}
class b_dateState extends State<b_date> {

//   late int selectedYear;
//
//   final List<int> yearsList = List<int>.generate(2024 - 1900, (index) => index + 1900);
//   void initState() {
//     super.initState();
//     selectedYear = yearsList[0]; // Set the initial value
//   }
//
//   final TextEditingController _userController = new TextEditingController();
// void _showSheet{
//   setState(() {
//     showModalBottomSheet(
//     context:context,
//     builder:(BuildContext context){
//     return SizedBox(
//       height:400,
//       child:ListView(children: [
//   DropdownButton<int>(
//   value: selectedYear,
//   items: yearsList.map((int year) {
//   return DropdownMenuItem<int>(
//   value: year,
//   child: Text(year.toString()),
//   );
//   }).toList(),
//   onChanged: (int year) {
//   setState(() {
//   selectedYear = year;
//   });
//   // Handle the selected value here
//   print(selectedYear);
//   },
//   ),
//   ),

//   ],
//
//
//   ),
//     );
//   },
//     );
//   });
// }
  late DateTime dateTime;
  List <String> month =['Jan','Fab','Mar','Apr','May','June','July','Aug','Sep','Oct','Nov','Dec'];
  int _focusedIndex = 0;
  List<int> data = [
    1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
  ];
  Widget _monthItemList(BuildContext context, int index){
    if(index == month.length)
      return Center(
        child: CircularProgressIndicator(),
      );
   return SizedBox(
     width:120,
     child:    Container(
         width:120,
         child:Column(
           children: [
             Container(
               color:Colors.white,
               width:100,
               height:50,
               child:Center(
                 child:Text('${month[index]}', style: TextStyle(fontSize: 15.0),),
               ),
             ),
           ],
         )
     ),

   ) ;
  }
  Widget _buildItemList(BuildContext context, int index){
    if(index ==  data.length)
      return Center(
        child: CircularProgressIndicator(),
      );

    return SizedBox(
      width:120,
  height: 120,
  child:    Container(
      width:120,
      child:Column(
        children: [
          Container(
            color:Colors.white,
            width:100,
            height:120,
            child:Center(
              child:Text('${data[index]}', style: TextStyle(fontSize: 40.0),),
            ),
          ),
        ],
      )
      ),
    );



  }
  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }


@override
void initstate() {
  dateTime = DateTime.now();
  super.initState();
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
        buttonColor = Colors.green; // Change the color back to the original value
        isButtonPressed = false;
      });
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Gender(),));
      // Perform navigation after the delay

    });
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
      ),

      body:
      Container(
        height: _mediaquery.size.height*1,
        child: ListView(
     //   shrinkWrap: true,
          children: [
            Container(
             // height: _mediaquery.size.height*0.13,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          margin:EdgeInsets.only(left:25),

                          child: Text("Personal ",style: new TextStyle( color: Colors.black,  fontSize: Responsive.isSmallScreen(context)? width/15 : width/30,
                              fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                        ),

                        Container(
                          margin:EdgeInsets.only(left:25),
                          //margin: EdgeInsets.only(left:30,),
                          child:Text("Information ",style: new TextStyle(height:0.90,color: Colors.green, fontSize: Responsive.isSmallScreen(context)? width/15 : width/30, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                        ),

                        Container(
                          margin:EdgeInsets.only(left:25),
                          child: Text("Note: minim mollit non deserunt ullamco ",style:new TextStyle( color: Color(0xff929292), fontSize: Responsive.isSmallScreen(context)? width/46 : width/60, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                        ),

                        Container(
                          margin:EdgeInsets.only(left:25),
                          child: Text("est sit aliqua dolor do amet sint. ",style:new TextStyle( color: Color(0xff929292), fontSize: Responsive.isSmallScreen(context)? width/46 : width/60, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                        ),
                      ],
                    ), ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child:Column(
                      children: [

                        Container(
                          child: Image.asset('image/perso.png',height: _mediaquery.size.height*0.089),
                        ),



                        Container(
                          margin: EdgeInsets.only(top: _mediaquery.size.height*0.01),
                          child:RichText(
                            text: TextSpan(
                              text: 'category ',
                              style: TextStyle(
                                color: Color(0xff929292),
                                fontSize: Responsive.isSmallScreen(context)?width/35 : width/60,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '4/12',
                                  style: TextStyle(
                                    color: Color(0xff24B445),
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 50)),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("What do we celebrate your", style: TextStyle(
                    color: Colors.black,
                    fontSize: Responsive.isSmallScreen(context)? width/19: width/30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),),


                  RichText(
                    text: TextSpan(
                      text: 'Birthday ',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: Responsive.isSmallScreen(context)? width/19: width/30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0.99,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


            //
            // Center(
            //   child: Container(
            //     margin: EdgeInsets.only(left:50,top:50.0 ),
            //    // Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
            //     child:RichText(
            //       text: TextSpan(
            //         text: 'What do we celebrate your ',
            //         style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 20,
            //           fontFamily: 'Poppins',
            //           fontWeight: FontWeight.w400,
            //         ),
            //         children: <TextSpan>[
            //           TextSpan(
            //             text: 'Birthday',
            //             style: TextStyle(
            //               color: Color(0xff24B445),
            //               fontWeight: FontWeight.w400,
            //               fontFamily: 'Poppins',
            //
            //             ),
            //           ),
            //           TextSpan(
            //             text: '.',
            //           ),
            //         ],
            //       ),
            //     ),
            //     // child:Text("We need to verify your Number?",style: new TextStyle(height:0.90,color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),
            //
            //   ),
            // ),

            Container(
              child: Column(
                children: [
                  Container(
                    child: Text("Amet minim mollit non deserunt ullamco est sit ",
                      style: new TextStyle(
                          color: Color(0xff929292),
                        fontSize: Responsive.isSmallScreen(context)? width/32:width/60,),

                    ),),

                  Container(child: Text("aliqua dolor do amet sint.",
                    style: new TextStyle(color: Color(0xff929292), fontSize: Responsive.isSmallScreen(context)? width/32:width/60,),
                  ),
                  ),

                ],
              ),
            ),




Column(
 children: [
    SizedBox(
    width: 280,
  height: 120,

   // scrollDirection: Axis.horizontal,

    // child:    CupertinoDatePicker(
    //
    //     initialDateTime: DateTime.now(),
    //     minimumDate: DateTime(1900),
    //     maximumDate: DateTime.now(),
    //     mode: CupertinoDatePickerMode.date,
    //     dateOrder: DatePickerDateOrder.dmy,
    //     onDateTimeChanged: (date){
    //       setState(()async {
    //         dateTime = date;
    //       });
    //
    //     })
    // ),

   child:Container(
     height:_mediaquery.size.height*20,
width: Responsive.isSmallScreen(context)? width/10 : width/90,
     child: Column(mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Expanded(
               child:
               ScrollSnapList(itemBuilder: _buildItemList,
                 itemSize: 120,
                 dynamicItemSize: true,

                  onReachEnd: (){
                  print("done");
                  }, itemCount: data.length, onItemFocus: _onItemFocus,
               )
           ),
         ],
     ),
   ),

    ),
  ]
),
            Column(
                children: [
                  SizedBox(
                    width: 280,
                    height: 50,

                    child:Container(
                      height: 50,
                      width: 400,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child:
                              ScrollSnapList(itemBuilder: _monthItemList,
                                itemSize: 120,
                                dynamicItemSize: true,

                                onReachEnd: (){
                                  print("done");
                                }, itemCount: month.length, onItemFocus: _onItemFocus,
                              )
                          ),
                        ],
                      ),
                    ),

                  ),
                ]
            ),




Container(
  child:   InkWell(
    onTap: (){print('Hey');},
    child:Container(
        child:Column(
          children: [
          AspectRatio(aspectRatio: 14/ 2, child: FittedBox(fit:
        BoxFit.contain,
          child: Image(image: AssetImage('image/BabyBorn.png')),),),
            Padding(padding: EdgeInsets.only(top:5)),
            Container(
              child:Text("You were born on",
                style: TextStyle(fontSize: Responsive.isSmallScreen(context)?width/25: width/30,
                  color: Color(0xff929292)),),
            ),

          ],
        ),
    ),
  ),
),


Center(
  child:   Container(
    width:100,
    height:25,
    margin: EdgeInsets.only(right: 20.0),
    padding: EdgeInsets.only(left:20.0),

    child: Center(
        child: TextField(
   //   controller: _userController,
        decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        filled: true,
        fillColor: Colors.white,
   border: OutlineInputBorder(
  //  borderRadius: BorderRadius.circular(35),
   borderSide: BorderSide.none,),
        hintText: "1999",
        hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w700))
        ),
    ),

  ),
),





            Padding(padding: EdgeInsets.only(top:10)),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(

                  child:Text('2/10 Questions', style: TextStyle(color:Color(0xffB0B2B5),
                      fontSize: Responsive.isSmallScreen(context)? width/25:width/60),),
                ),
                Padding(padding: EdgeInsets.only(top:15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(left:9)),
                    CircleAvatar(
                      backgroundColor: Color(0xffD9D9D9),
                      radius:4,
                    ),
                    Padding(padding: EdgeInsets.only(left:7)),
                    CircleAvatar(
                      backgroundColor: Color(0xff24B445),
                      radius:5,
                    ),
                    Padding(padding: EdgeInsets.only(left:7)),
                    CircleAvatar(
                      backgroundColor: Color(0xffD9D9D9),
                      radius:4,
                    ),
                  ],
                ),
             //   Padding(padding: EdgeInsets.only(top:15)),
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
                // ElevatedButton.icon(
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Color(0xff24B445),
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(32.0)
                //     ),
                //
                //   ),
                //   onPressed: () {
                //     log("Hello");
                //     Navigator.push(context, MaterialPageRoute(builder: (contex)=> Gender(),));
                //   },
                //
                //   icon: Container(
                //     margin: EdgeInsets.only(left:10),
                //     width: 80,
                //     child: Icon(
                //       Icons.arrow_forward,
                //       size: 30,
                //       color: Colors.black,
                //     ),
                //   ), label: Text(""),
                // ),

              ],
            ),




          ],
        ),
      ),
    );
  }
}



