import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/Payment.dart';
import 'Responsive.dart';
import 'City.dart';
import 'Dashboard.dart';
import 'Welcome_Screen.dart';

class Plans extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PlansState();
  }

}

class PlansState extends State<Plans>{
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
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Welcome_Screen(),));
      // Perform navigation after the delay

    });
  }



  final TextEditingController _userController = new TextEditingController();


  void _erase(){
    setState(() {
      _userController.clear();
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
      body:Container(
        height: _mediaquery.size.height*1,
        child: ListView(
          children: [
         Center(
           child: Container(
        margin: EdgeInsets.only(left:0,top:10.0 ),
        //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
        child:RichText(
            text: TextSpan(
              text: 'Choose Your ',
              style: TextStyle(
                color: Colors.black,
                fontSize: Responsive.isSmallScreen(context)?width/16 : width/30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Plan',
                  style: TextStyle(
                    color: Color(0xff24B445),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',),
                ),
              ],
            ),
        ),
           ),
         ),

            Container(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child:Text("Amet minim mollit non deserunt ullamco est sit ",
                      style: new TextStyle(color:Color(0xff929292),
                        fontSize: Responsive.isSmallScreen(context)?width/30 : width/60,),
                    ),),

                  Container( child:Text("aliqua dolor do amet sint.",
                    style: new TextStyle(color:Color(0xff929292),
                      fontSize: Responsive.isSmallScreen(context)?width/30 : width/60,),
                  ),
                  ),
                ],
              ),
            ),








            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Padding(padding: EdgeInsets.only(top:60)),
                 Container(

                   child: InkWell(
     onTap:()=>{
    debugPrint("Inkwell pressed"),
    },
                    child: Container(
                       height: _mediaquery.size.height*0.13,
                       width: Responsive.isSmallScreen(context)?width/0.5:width/0.6,
                       margin: EdgeInsets.only(left:20,right: 20),
                       decoration: BoxDecoration(
                        color: Color(0xffF7F7F7),
                         borderRadius: BorderRadius.circular(20.0),
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Padding(padding: EdgeInsets.only(left:_mediaquery.size.width*0.01)),
                           Container(
                             width:Responsive.isSmallScreen(context)? width/5: width/9,
                             decoration: BoxDecoration(
                               // color: Colors.black,
                               image: DecorationImage(
                                 image: AssetImage('image/Plan1.png'),
                                 fit: BoxFit.scaleDown,

                                 // child:Text('Others'),
                               ), // backgroundImage: AssetImage('image/Other.png',),
                             ),
                           ),
                           Padding(padding: EdgeInsets.only(left: _mediaquery.size.width*0.02)),
                           Container(
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Individual Plan",
                                   style: TextStyle(
                                   color: Color(0xff000000),
                                   fontWeight: FontWeight.w500,
                                   fontFamily: 'Poppins',
                                   fontSize: Responsive.isSmallScreen(context)?width/22: width/60,
                                 ),),
                                 Text("Applied discount 200/-",
                                   style: TextStyle(
                                     color: Color(0xffA1A1A1),
                                     fontWeight: FontWeight.w500,
                                     fontFamily: 'Poppins',
                                     fontSize: Responsive.isSmallScreen(context)?width/40: width/60,
                                   ),),
                               ],
                             ),
                           ),
                           Padding(padding: EdgeInsets.only(left:15)),
                           Container(
                             child:Column(
                               crossAxisAlignment: CrossAxisAlignment.end,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 RichText(
                                   text: TextSpan(
                                     text: '800 ',
                                     style: TextStyle(
                                       color: Color(0xff24B445),
                                       fontSize:Responsive.isSmallScreen(context)? width/22 : width/60,
                                       fontFamily: 'Poppins',
                                       fontWeight: FontWeight.w400,
                                     ),
                                     children: <TextSpan>[
                                       TextSpan(
                                         text: 'INR',
                                         style: TextStyle(
                                           fontSize:Responsive.isSmallScreen(context)? width/30 : width/60,
                                           color: Colors.black,
                                           fontWeight: FontWeight.w400,
                                           fontFamily: 'Poppins',),
                                       ),
                                     ],
                                   ),
                                 ),
                                 Container(
                                   child: Text('Per Year',style: TextStyle(
                                     fontSize:Responsive.isSmallScreen(context)? width/50: width/60,
                                     color: Color(0xffBEBEBE),
                                     fontWeight: FontWeight.w500,
                                     fontFamily: 'Poppins',),),
                                 )

                               ],
                             ),
                           ),
                         ],
                       ),
                     ),

                   ),
                 ),






Padding(padding: EdgeInsets.only(top: 20)),

                  Container(

                    child: InkWell(
                      onTap: ()=>
                      {
                        print("Inkwell pressed"),
                      },
                      child: Container(
                        height: _mediaquery.size.height*0.13,
                        width: Responsive.isSmallScreen(context)?width/0.5:width/0.6,
                        margin: EdgeInsets.only(left:20,right: 20),
                        decoration: BoxDecoration(
                          color: Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(left:_mediaquery.size.width*0.01)),

                            Container(
                              width:Responsive.isSmallScreen(context)? width/5: width/9,

                              decoration: BoxDecoration(
                                // color: Colors.black,
                                image: DecorationImage(
                                  image: AssetImage('image/Plan2.png'),
                                  fit: BoxFit.scaleDown,

                                  // child:Text('Others'),
                                ), // backgroundImage: AssetImage('image/Other.png',),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left:5)),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Family Plan", style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: Responsive.isSmallScreen(context)?width/22: width/60,
                                  ),),
                                  Text("Applied discount 200/-",
                                    style: TextStyle(
                                      color: Color(0xffA1A1A1),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: Responsive.isSmallScreen(context)?width/40: width/60,

                                    ),),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left:20)),
                            Container(
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: '1000 ',
                                      style: TextStyle(
                                        color: Color(0xff24B445),
                                        fontSize:Responsive.isSmallScreen(context)? width/22 : width/60,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'INR',
                                          style: TextStyle(
                                            fontSize:Responsive.isSmallScreen(context)? width/30 : width/60,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins',),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text('Per Year',style: TextStyle(
                                      fontSize:Responsive.isSmallScreen(context)? width/50: width/60,
                                      color: Color(0xffBEBEBE),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',),),
                                  )

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                  ),


                ],
              ),
            ),

          Padding(padding: EdgeInsets.only(top:126)),

            Container(
              margin: EdgeInsets.only(right: 20.0),
              padding: EdgeInsets.only(left:20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35), // set the border radius
                //border: Border.all(),
              ),
              child: TextField(
          controller: _userController,
                decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  filled: true,
                  fillColor: Color(0xffF9F9F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,),

                  hintText: "Enter Coupen Code",
                  suffixIcon: IconButton(icon:Icon(Icons.clear_sharp,color: Color(0xff4F555A).withOpacity(0.5),
                    size: 14,),
                    onPressed: _erase,),
                  hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),
                      fontSize: Responsive.isSmallScreen(context)? width/25 : width/60),

                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: _mediaquery.size.height*0.05)),

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

            // Container(
            //   child:Column(
            //     children: [
            //       Padding(padding: EdgeInsets.only(top:15)),
            //       ElevatedButton.icon(
            //         style: ElevatedButton.styleFrom(
            //           backgroundColor: Color(0xff24B445),
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(32.0)
            //           ),
            //
            //         ),
            //         onPressed: (){
            //
            // Navigator.push(context, MaterialPageRoute(builder: (context)=> Welcome_Screen(),));
            //
            //         },
            //
            //         icon: Container(
            //           margin: EdgeInsets.only(left:10),
            //           width: 80,
            //           child: Icon(
            //             Icons.arrow_forward,
            //             size: 30,
            //             color: Colors.black,
            //           ),
            //         ), label: Text(""),
            //       ),
            //     ],
            //   ),
            // ),


          ],
        ),
      ),
    );
  }
}
