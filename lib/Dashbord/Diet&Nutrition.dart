import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/practice.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

import 'Dashbord.dart';
import 'Exersize.dart';
class DietNutrition extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DietNutritionState();
  }

}

class DietNutritionState extends State<DietNutrition>{

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
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Exercise(),));
      // Perform navigation after the delay

    });
  }







  List<bool> _selections = [false, false, false];

  List<Widget> _icons = [
    Image.asset('image/Unckecked.png'),
    Image.asset('image/Checked.png'),
  ];
  bool _isChecked = false;

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
        title: Center(
          child: Container(padding: EdgeInsets.only(right: 30),
              child: Image(image: AssetImage("image/MedibankLOGO.png",),
                  width: Responsive.isSmallScreen(context)? width/2.3: width/4)),
        ),
        //                margin: EdgeInsets.only(left:0,top:10.0 ),

      ),

      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(

                    margin: EdgeInsets.only(left: 20,top: 10),
                    child: RichText(
                      text: TextSpan(
                        text: 'Diet & ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: Responsive.isSmallScreen(context)?width/16 : width/30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Nutrition',
                            style: TextStyle(
                              color: Color(0xff24B445),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(

                child: Column(
                    children: [
                      Container(
      margin: EdgeInsets.only(top: 5, right: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(blurRadius: 0, color: Color(0xffCECECE), spreadRadius: 2)],
                        ),
                        child: CircleAvatar(
                        radius: 40,
                          backgroundColor: Colors.transparent,
                          child: Image.asset('image/Diet.png',height: 50,),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 5, right: 20),
                        child: RichText(textAlign: TextAlign.start,
                          text: TextSpan(
                            text: 'Category 1',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: Responsive.isSmallScreen(context)?width/30 : width/60,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '/1',
                                style: TextStyle(
                                  color: Color(0xff24B445),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',),
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

          Center(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Text("Please charterize your current diet, decribing your type",
              style: TextStyle(
                color: Color(0xff4F555A).withOpacity(0.45),
                fontSize: Responsive.isSmallScreen(context)? width/35: width/40,
                fontFamily: "Poppins",

              ),),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 30,right: 30,top: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: Responsive.isSmallScreen(context)? width/3: width/4,
                  child: Text("Food Items",
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: Responsive.isSmallScreen(context)?width/25 : width/40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      child: Image.asset("image/Lunch.png", height: _mediaquery.size.height*0.04,),
                    ),
                    Container(
                      child: Text("Lunch",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: Responsive.isSmallScreen(context)?width/35 : width/45,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Image.asset("image/Breakfast.png", height: _mediaquery.size.height*0.04,),
                    ),
                    Container(
                      child: Text("Breackfast",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: Responsive.isSmallScreen(context)?width/35 : width/45,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Image.asset("image/Dinner.png", height: _mediaquery.size.height*0.04,),
                    ),
                    Container(
                      child: Text("Dinner",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: Responsive.isSmallScreen(context)?width/35 : width/45,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            height: 1,
            color: Color(0xffF1F1F1),
          ),
          Column(
            children: [
              Container(
                height: _mediaquery.size.height*0.10,
                margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                decoration: BoxDecoration(
                  color: Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/3: width/4,
                       // margin: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset("image/Wheat.png",height: _mediaquery.size.height*0.05,),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text("Wheat",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                              color: Color(0xff4F555A).withOpacity(0.45),
                              fontSize: Responsive.isSmallScreen(context)? width/25: width/40,
                              fontFamily: "Poppins",

                            ),)
                          ],
                        ),
                      ),

                      ImageCheckbox(),
                      ImageCheckbox(),
                      ImageCheckbox(),


                      // for (int i = 0; i < _selections.length; i++)
                      //   Checkbox(
                      //     value: _selections[i],
                      //     onChanged: (bool? value) {
                      //       setState(() {
                      //         _selections[i] = value ?? false;
                      //       });
                      //     },
                      //     activeColor: Colors.white, // Change the fill color when checkbox is checked
                      //     checkColor: Colors.green,
                      //     // Change the checkmark color
                      //     side: BorderSide(color: Colors.green),
                      //
                      //   ),


                    ],
                  ),
                ),
              ),
              Container(
                height: _mediaquery.size.height*0.10,
                margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                decoration: BoxDecoration(
                  color: Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/3: width/4,
                        // margin: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset("image/Lunch.png",height: _mediaquery.size.height*0.05,),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text("Eggs",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff4F555A).withOpacity(0.45),
                                fontSize: Responsive.isSmallScreen(context)? width/25: width/40,
                                fontFamily: "Poppins",

                              ),)
                          ],
                        ),
                      ),

                      ImageCheckbox(),
                      ImageCheckbox(),
                      ImageCheckbox(),


                      // for (int i = 0; i < _selections.length; i++)
                      //   Checkbox(
                      //     value: _selections[i],
                      //     onChanged: (bool? value) {
                      //       setState(() {
                      //         _selections[i] = value ?? false;
                      //       });
                      //     },
                      //     activeColor: Colors.white, // Change the fill color when checkbox is checked
                      //     checkColor: Colors.green,
                      //     // Change the checkmark color
                      //     side: BorderSide(color: Colors.green),
                      //
                      //   ),


                    ],
                  ),
                ),
              ),
              Container(
                height: _mediaquery.size.height*0.10,
                margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                decoration: BoxDecoration(
                  color: Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/3: width/4,
                        // margin: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset("image/Rice.png",height: _mediaquery.size.height*0.05,),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text("Rice",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff4F555A).withOpacity(0.45),
                                fontSize: Responsive.isSmallScreen(context)? width/25: width/40,
                                fontFamily: "Poppins",

                              ),)
                          ],
                        ),
                      ),

                      ImageCheckbox(),
                      ImageCheckbox(),
                      ImageCheckbox(),


                      // for (int i = 0; i < _selections.length; i++)
                      //   Checkbox(
                      //     value: _selections[i],
                      //     onChanged: (bool? value) {
                      //       setState(() {
                      //         _selections[i] = value ?? false;
                      //       });
                      //     },
                      //     activeColor: Colors.white, // Change the fill color when checkbox is checked
                      //     checkColor: Colors.green,
                      //     // Change the checkmark color
                      //     side: BorderSide(color: Colors.green),
                      //
                      //   ),


                    ],
                  ),
                ),
              ),
              Container(
                height: _mediaquery.size.height*0.10,
                margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                decoration: BoxDecoration(
                  color: Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/3: width/4,
                        // margin: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset("image/Veg.png",height: _mediaquery.size.height*0.05,),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text("Veggies",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff4F555A).withOpacity(0.45),
                                fontSize: Responsive.isSmallScreen(context)? width/25: width/40,
                                fontFamily: "Poppins",

                              ),)
                          ],
                        ),
                      ),

                      ImageCheckbox(),
                      ImageCheckbox(),
                      ImageCheckbox(),


                      // for (int i = 0; i < _selections.length; i++)
                      //   Checkbox(
                      //     value: _selections[i],
                      //     onChanged: (bool? value) {
                      //       setState(() {
                      //         _selections[i] = value ?? false;
                      //       });
                      //     },
                      //     activeColor: Colors.white, // Change the fill color when checkbox is checked
                      //     checkColor: Colors.green,
                      //     // Change the checkmark color
                      //     side: BorderSide(color: Colors.green),
                      //
                      //   ),


                    ],
                  ),
                ),
              ),
              Container(
                height: _mediaquery.size.height*0.10,
                margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                decoration: BoxDecoration(
                  color: Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/3: width/4,
                        // margin: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset("image/Lunch.png",height: _mediaquery.size.height*0.05,),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text("Wheat",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff4F555A).withOpacity(0.45),
                                fontSize: Responsive.isSmallScreen(context)? width/25: width/40,
                                fontFamily: "Poppins",

                              ),)
                          ],
                        ),
                      ),

                      ImageCheckbox(),
                      ImageCheckbox(),
                      ImageCheckbox(),


                      // for (int i = 0; i < _selections.length; i++)
                      //   Checkbox(
                      //     value: _selections[i],
                      //     onChanged: (bool? value) {
                      //       setState(() {
                      //         _selections[i] = value ?? false;
                      //       });
                      //     },
                      //     activeColor: Colors.white, // Change the fill color when checkbox is checked
                      //     checkColor: Colors.green,
                      //     // Change the checkmark color
                      //     side: BorderSide(color: Colors.green),
                      //
                      //   ),


                    ],
                  ),
                ),
              ),
              Container(
                height: _mediaquery.size.height*0.10,
                margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                decoration: BoxDecoration(
                  color: Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/3: width/4,
                        // margin: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset("image/Nonveg.png",height: _mediaquery.size.height*0.05,),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text("Non-Veg",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff4F555A).withOpacity(0.45),
                                fontSize: Responsive.isSmallScreen(context)? width/25: width/40,
                                fontFamily: "Poppins",

                              ),)
                          ],
                        ),
                      ),

                      ImageCheckbox(),
                      ImageCheckbox(),
                      ImageCheckbox(),


                      // for (int i = 0; i < _selections.length; i++)
                      //   Checkbox(
                      //     value: _selections[i],
                      //     onChanged: (bool? value) {
                      //       setState(() {
                      //         _selections[i] = value ?? false;
                      //       });
                      //     },
                      //     activeColor: Colors.white, // Change the fill color when checkbox is checked
                      //     checkColor: Colors.green,
                      //     // Change the checkmark color
                      //     side: BorderSide(color: Colors.green),
                      //
                      //   ),


                    ],
                  ),
                ),
              ),
              Container(
                height: _mediaquery.size.height*0.10,
                margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                decoration: BoxDecoration(
                  color: Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/3: width/4,
                        // margin: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset("image/Wheat.png",height: _mediaquery.size.height*0.05,),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text("Wheat",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff4F555A).withOpacity(0.45),
                                fontSize: Responsive.isSmallScreen(context)? width/25: width/40,
                                fontFamily: "Poppins",

                              ),)
                          ],
                        ),
                      ),

                      ImageCheckbox(),
                      ImageCheckbox(),
                      ImageCheckbox(),


                      // for (int i = 0; i < _selections.length; i++)
                      //   Checkbox(
                      //     value: _selections[i],
                      //     onChanged: (bool? value) {
                      //       setState(() {
                      //         _selections[i] = value ?? false;
                      //       });
                      //     },
                      //     activeColor: Colors.white, // Change the fill color when checkbox is checked
                      //     checkColor: Colors.green,
                      //     // Change the checkmark color
                      //     side: BorderSide(color: Colors.green),
                      //
                      //   ),


                    ],
                  ),
                ),
              ),

Padding(padding: EdgeInsets.only(top: 30)),
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

              Padding(padding: EdgeInsets.only(top: 20)),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Skip to ",
                      style: TextStyle(
                        color: Color(0xffACADAC),
                        fontSize: Responsive.isSmallScreen(context)?width/30 : width/45,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));},
                      child: Text("Dashboard",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: Responsive.isSmallScreen(context)?width/30 : width/45,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 20)),

            ],

          ),


        ],
      ),

    );
  }

}





class ImageCheckbox extends StatefulWidget {
  @override
  _ImageCheckboxState createState() => _ImageCheckboxState();
}

class _ImageCheckboxState extends State<ImageCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Image.asset(
          _isChecked ? 'image/Checked.png' : 'image/Unckecked.png',
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
