import 'package:flutter/material.dart';
import '../Dashbord/Dashbord.dart';
import 'DashBoardd.dart';
import 'Responsive.dart';
import 'Dashboard.dart';

class Welcome_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Welcome_ScreenState();
  }

}

class Welcome_ScreenState extends State<Welcome_Screen>{
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
      Navigator.push(context,MaterialPageRoute(builder: (context)=>BottomNavBarApp(),));
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
      body: Container(
        height: _mediaquery.size.height*1,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text("Welcome,",style: new TextStyle( color: Colors.black,
                      fontSize:Responsive.isSmallScreen(context)? width/16: width/60,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),),
                ),
                Container(
                  child: Text("Prathvi Bharatwala ",
                    style: new TextStyle( color: Color(0xff24B445),
                        fontSize:Responsive.isSmallScreen(context)? width/16: width/60,
                        fontWeight: FontWeight.w400,fontFamily: 'Poppins'),),
                ),
                Padding(padding: EdgeInsets.only(top: _mediaquery.size.height*0.02)),
                Container(
                  child: Text("Now you can track your health", style: new TextStyle(
                    color:Color(0xff929292),
                    fontSize: Responsive.isSmallScreen(context)? width/23 : width/60,
                    fontWeight: FontWeight.w400,
                  ),),
                ),

                Container(
                  child: Text("records with ease !", style: new TextStyle(
                    color:Color(0xff929292),
                    fontSize: Responsive.isSmallScreen(context)? width/23 : width/60,
                    fontWeight: FontWeight.w400,
                  ),),
                ),

              ],
            ),

Padding(padding: EdgeInsets.only(top: _mediaquery.size.height*0.04)),
          Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Row(

              mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: _mediaquery.size.width*0.09,
                    width: _mediaquery.size.width*0.09,

                    child: Image(image: AssetImage('image/Email1.png')),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),),
                  Container(child: Text("Amet minim mollit non deserunt ullamco est\nsit aliqua dolor do amet sint.",
                    style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:Color(0xff929292),
                    fontSize: Responsive.isSmallScreen(context)? width/36 : width/50,
                  ),),),

                ],
              ),
              Padding(padding: EdgeInsets.only(top: _mediaquery.size.height*0.015)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: _mediaquery.size.width*0.09,
                    width: _mediaquery.size.width*0.09,
                    child: Image(image: AssetImage('image/file3.png')),
                  ),
                  Padding(padding: EdgeInsets.only(left:10)),
                  Container(child: Text("Amet minim mollit non deserunt ullamco est\nsit aliqua dolor do amet sint.",style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:Color(0xff929292),
                    fontSize: Responsive.isSmallScreen(context)? width/36 : width/50,
                  ),),),

                ],
              ),
              Padding(padding: EdgeInsets.only(top: _mediaquery.size.height*0.015)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: _mediaquery.size.width*0.09,
                    width: _mediaquery.size.width*0.09,

                    child: Image(image: AssetImage('image/Heart1.png')),
                  ),
                  Padding(padding: EdgeInsets.only(left:10)),
                  Container(child: Text("Amet minim mollit non deserunt ullamco est\nsit aliqua dolor do amet sint.",style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color:Color(0xff929292),
                    fontSize: Responsive.isSmallScreen(context)? width/36 : width/50,
                  ),),),

                ],
              ),
            ],

          ),

          Stack(
            children: [

              // MyApp(),
// Container(
//   height:_mediaquery.size.height*0.5,
//   width:Responsive.isSmallScreen(context)? width/1 : width/1,
//   color: ,
// ),
                // aspectRatio: 16 /16,
            Container(
                margin: EdgeInsets.only(top: _mediaquery.size.height*0.05),
                height:_mediaquery.size.height*0.5,
              width:Responsive.isSmallScreen(context)? width/1 : width/1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('image/Welcome1.png'),

                  ),
              ),
              ),


// Container(
//     width:Responsive.isSmallScreen(context)? width/1 : width/1,
//   Center(
//     child: Image(image: AssetImage("image/Welcome1.png"),
//      width:Responsive.isSmallScreen(context)? width/1 : width/1.2),
//   ),

              Container(
                margin: EdgeInsets.only(top:_mediaquery.size.height*0.15),
                child:Column
              (
                  mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child:Text(
                    "Other Benifits",
                    style: TextStyle(
                      color: Color(0xff24B445),
                      fontWeight: FontWeight.w500,
                      fontSize: Responsive.isSmallScreen(context)? width/22 :width/60,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 36,
                        width:Responsive.isSmallScreen(context)? width/3 : width/6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35), // set the border radius
                          color: Color(0xffFFFFFF),
                        ),
                        child:Center(
                          child: Text("health management",  style: TextStyle(
                            color: Color(0xff555555),
                            fontWeight: FontWeight.w400,
                            fontSize: Responsive.isSmallScreen(context)? width/40 : width/60,
                          ),),
                        ),

                      ),
                      Padding(padding:EdgeInsets.only(left:10)),
                      Container(
                        height: 36,
                        width:Responsive.isSmallScreen(context)? width/3 : width/6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35), // set the border radius
                          color: Color(0xffFFFFFF),
                        ),
                        child:Center(
                          child: Text("fitness activities",  style: TextStyle(
                            color: Color(0xff555555),
                            fontWeight: FontWeight.w400,
                            fontSize: Responsive.isSmallScreen(context)? width/40 : width/60,
                          ),),
                        ),

                      ),

                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 36,
                        width:Responsive.isSmallScreen(context)? width/2.4 : width/6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35), // set the border radius
                          color: Color(0xffFFFFFF),
                        ),
                        child:Center(
                          child: Text("Analyitics around your health",  style: TextStyle(
                            color: Color(0xff555555),
                            fontWeight: FontWeight.w400,
                            fontSize: Responsive.isSmallScreen(context)? width/40 : width/60,
                          ),),
                        ),

                      ),
                      Padding(padding:EdgeInsets.only(left:10)),
                      Container(
                        height: 36,
                        width:Responsive.isSmallScreen(context)? width/2.4 : width/6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35), // set the border radius
                          color: Color(0xffFFFFFF),
                        ),
                        child:Center(
                          child: Text("Family health management",  style: TextStyle(
                            color: Color(0xff555555),
                            fontWeight: FontWeight.w400,
                            fontSize: Responsive.isSmallScreen(context)? width/40 : width/60,
                          ),),
                        ),

                      ),

                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 36,
                        width:Responsive.isSmallScreen(context)? width/3 : width/6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35), // set the border radius
                          color: Color(0xffFFFFFF),
                        ),
                        child:Center(
                          child: Text("health management",  style: TextStyle(
                            color: Color(0xff555555),
                            fontWeight: FontWeight.w400,
                            fontSize: Responsive.isSmallScreen(context)? width/40 : width/60,
                          ),),
                        ),

                      ),
                      Padding(padding:EdgeInsets.only(left:10)),
                      Container(
                        height: 36,
                        width:Responsive.isSmallScreen(context)? width/2.4 : width/6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35), // set the border radius
                          color: Color(0xffFFFFFF),
                        ),
                        child:Center(
                          child: Text("Family health management",  style: TextStyle(
                            color: Color(0xff555555),
                            fontWeight: FontWeight.w400,
                            fontSize: Responsive.isSmallScreen(context)? width/40 : width/60,
                          ),),
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
                // Container(
                //
                //   child:Column(
                //     children: [
                //       Padding(padding: EdgeInsets.only(top: _mediaquery.size.height*0.04)),
                //
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
                //           Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard(),));
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

              )

            ],


          ),




























          ],

        ),
      ),
    );
  }


}


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Curved Container Example',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Curved Container Example'),
//         ),
//         body: Container(
//           color: Colors.blue,
//           child: ClipPath(
//             clipper: CustomShapeClipper(),
//             child: Container(
//               color: Colors.white,
//               height: 200.0,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }





class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Curved Container Example'),
        ),
        body: Container(
          color: Colors.blue,
          child: ClipPath(
            clipper: CustomClipperShape(),
            child: Container(
              color: Colors.white,
              height: 200.0,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomClipperShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 50,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
