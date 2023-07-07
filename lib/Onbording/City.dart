import 'package:flutter/material.dart';
import 'Responsive.dart';
import 'Select_Username.dart';

class City extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CityState();  }


}

class CityState extends State<City>{
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
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Select_Username(),));
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
        toolbarHeight: Responsive.isSmallScreen(context)? width/10: width/10,

        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green, size: Responsive.isSmallScreen(context)? width/20: width/25,),
        title: Center(
          child: Container(padding: EdgeInsets.only(right: 30),
              child: Image(image: AssetImage("image/MedibankLOGO.png",),
                  width: Responsive.isSmallScreen(context)? width/2.3: width/4)),
        ),
        //  margin: EdgeInsets.only( top:20.0),
      ),
      body: Container(
        height: _mediaquery.size.height*1,
        child: ListView(
          children: [

            Container(
            //  height: _mediaquery.size.height*0.13,
              margin: EdgeInsets.only( top:20.0),
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

                          child: Text("Personal ",style: new TextStyle( color: Colors.black,
                              fontSize: Responsive.isSmallScreen(context)? width/15 : width/30,
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





            Center(
              child: Container(
                margin: EdgeInsets.only(left:0,top:50.0 ),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child:RichText(
                  text: TextSpan(
                    text: 'What is your ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Responsive.isSmallScreen(context)? width/16: width/30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'City',
                        style: TextStyle(
                          color: Color(0xff24B445),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',

                        ),
                      ),
                      TextSpan(
                        text: '?',
                      ),
                    ],
                  ),
                ),
                // child:Text("We need to verify your Number?",style: new TextStyle(height:0.90,color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

              ),
            ),

            Container(
              child:Column(
                children: [
                  Container(
                    child:Text("Amet minim mollit non deserunt ullamco est sit ",
                      style: new TextStyle(color:Color(0xff929292),
                        fontSize: Responsive.isSmallScreen(context)? width/32:width/60,),
                    ),),

                  Container( child:Text("aliqua dolor do amet sint.",
                    style: new TextStyle(color:Color(0xff929292),
                      fontSize: Responsive.isSmallScreen(context)? width/32:width/60,),
                  ),
                  ),
                ],
              ),
            ),






            Center(
              child: Stack(
                children: [
                  Transform.translate(offset: Offset(0,-35),
                    child:SizedBox(
                      height: _mediaquery.size.height*0.6,
                      width:428,
                      child: Image.asset(
                        "image/India.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    ),

              //    Padding(padding: EdgeInsets.only(left:20,right: 20, top:20),),
                  Container(
                    margin: EdgeInsets.only(right: 20.0,top:40.0,),
                    padding: EdgeInsets.only(left:20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35), // set the border radius
                      //border: Border.all(),
                    ),
                    child: TextField(
                      decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide.none,),

                        hintText: "Ahmedabad",
                        hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),fontSize: Responsive.isSmallScreen(context)? width/23 : width/60)
               ,

                      ),
                    ),
                  ),






                   Container(
                     margin: EdgeInsets.only(top: _mediaquery.size.height*0.4),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Center(
                            child: Container(
                              margin: EdgeInsets.only(top: _mediaquery.size.height*0.02),
                              child:Text('2/10 Questions',
                                style: TextStyle(color:Color(0xffB0B2B5),
                                    fontSize: Responsive.isSmallScreen(context)? width/25:width/60),),
                            ),
                          ),


                      Center(
                        child:Container(
                          margin: EdgeInsets.only(top: _mediaquery.size.height*0.02),
                          child:Row(
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
                        ),
                      ),
                         Center(
                           child: Container(
                             height: _mediaquery.size.height*0.070,
                             width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
                             margin: EdgeInsets.only(top: _mediaquery.size.height*0.02),
                             child:ElevatedButton(
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

                     // Center(
                     //    child: Container(
                     //      margin: EdgeInsets.only(top: _mediaquery.size.height*0.01),
                     //      child: ElevatedButton.icon(
                     //        style: ElevatedButton.styleFrom(
                     //          backgroundColor: Color(0xff24B445),
                     //          shape: RoundedRectangleBorder(
                     //              borderRadius: BorderRadius.circular(32.0)
                     //          ),
                     //
                     //        ),
                     //        onPressed: ()  {
                     //          Navigator.push(context, MaterialPageRoute(builder: (contex)=> Select_Username(),));
                     //        },
                     //        icon: Container(
                     //          margin: EdgeInsets.only(left:10),
                     //          width: 80,
                     //          child: Icon(
                     //            Icons.arrow_forward,
                     //            size: 30,
                     //            color: Colors.black,
                     //          ),
                     //        ), label: Text(""),
                     //      ),
                     //    ),
                     //  ),

                       ],
                     ),
                   ),

                ],
              ),
            ),














          ],
        ),
      )
    );
  }


}