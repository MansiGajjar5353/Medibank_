import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/DetailsAboutFoundation.dart';
import 'package:project_signup_page/Dashbord/LifeStyleEdit.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';


class Donation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DonationState();


  }

}

class DonationState extends State<Donation>{
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
      Navigator.push(context,MaterialPageRoute(builder: (context)=>LifeStyleEdit(),));
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
        title: Text("Donate",
          style: TextStyle(color: Color(0xff212426),fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),

      ),

      body: ListView(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only( top: 10),
              width: Responsive.isSmallScreen(context) ? width / 1.2 : width /
                  2,
              height: 55,
              child: TextField(
//
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 20, vertical: 15),
                  filled: true,
                  fillColor: Color(0xffF9F9F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,),

                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Color(0xff4F555A).withOpacity(0.5),
                  hintStyle: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.5)),

                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Category",
                  style: TextStyle(color: Color(0xff212426),
                      fontSize: Responsive.isSmallScreen(context)? width/25 : width/60,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'), ),

                Image(image: AssetImage("image/Filter.png"), width:Responsive.isSmallScreen(context)? width/25 : width/60,),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffF9F9F9),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Color(0xffF1F1F1),)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      Image(image: AssetImage("image/blood1.png"), width:Responsive.isSmallScreen(context)? width/25 : width/60,),
                      Padding(padding: EdgeInsets.all(5)),
                      Text("Blood",
                        style: TextStyle(color: Color(0xff212426),
                            fontSize: Responsive.isSmallScreen(context)? width/25 : width/60,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'), ),
                      Padding(padding: EdgeInsets.all(5)),
                    ],
                  ),
                ),

                Container(
                  //margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Color(0xffF1F1F1),)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      Image(image: AssetImage("image/platelet.png"), width:Responsive.isSmallScreen(context)? width/25 : width/60,),
                      Padding(padding: EdgeInsets.all(5)),
                      Text("Platelete",
                        style: TextStyle(color: Color(0xff212426),
                            fontSize: Responsive.isSmallScreen(context)? width/25 : width/60,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'), ),
                      Padding(padding: EdgeInsets.all(5)),
                    ],
                  ),
                ),

                Container(
                  //margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Color(0xffF1F1F1),)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      Image(image: AssetImage("image/sperm1.png"), width:Responsive.isSmallScreen(context)? width/25 : width/60,),
                      Padding(padding: EdgeInsets.all(5)),
                      Text("Sperm",
                        style: TextStyle(color: Color(0xff212426),
                            fontSize: Responsive.isSmallScreen(context)? width/25 : width/60,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'), ),
                      Padding(padding: EdgeInsets.all(5)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Center(
              child: Stack(
                children: [
                  Center(
                    child: Image(image: AssetImage("image/DonatingBlood1.png"),
                      width:Responsive.isSmallScreen(context)? width/1.2 :width/1.5,),
                  ),
                  Transform.translate(offset: Offset(0,80),
                    child:Center(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsAboutFoundation(),));
                      },
                      child: Container(
                        height: 98,
                        width:Responsive.isSmallScreen(context)? width/1.4 :width/1.7,
                       decoration: BoxDecoration(
                         boxShadow: <BoxShadow>[
                           BoxShadow(
                               color: Color(0xffD2D2D2).withOpacity(0.25),
                               blurRadius: 19.0,
                               offset: Offset(0.0, 0.10)
                           )
                         ],
                         borderRadius: BorderRadius.circular(20),
                         color: Color(0xffFFFFFF),
                       ),


                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                   width:Responsive.isSmallScreen(context)? width/1.98 :width/2.8,
                                  child: Text(
                                    softWrap:true,
                                    "Lorem ipsum dolor sit amet consectetur.",
                                    style: TextStyle(color: Color(0xff212426),
                                        fontSize: Responsive.isSmallScreen(context)? width/35 : width/60,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Container(
                                  width:Responsive.isSmallScreen(context)? width/1.98 :width/2.8,
                                  child: Row(
                                    children: [
                                    Text("Join Us  ",
                                      style: TextStyle(color: Color(0xff2CB74C),
                                          fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins'),
                                    ),
                                      Text("Donate Blood",
                                        style: TextStyle(color: Color(0xff000000),
                                            fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              child: Image(
                                image:AssetImage("image/Group52.png"), width:40,


                              ),
                            ),

                          ],
                        ),



                      ),
                    ),




                  ),
),
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 60),
            child: Center(
              child: Stack(
                children: [
                  Center(
                    child: Image(image: AssetImage("image/Bdonation2.png"),
                      width:Responsive.isSmallScreen(context)? width/1.2 :width/1.5,),
                  ),
                  Transform.translate(offset: Offset(0,80),
                    child:Center(
                      child: Container(
                        height: 98,
                        width:Responsive.isSmallScreen(context)? width/1.4 :width/1.7,
                        decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Color(0xffD2D2D2).withOpacity(0.25),
                                blurRadius: 19.0,
                                offset: Offset(0.0, 0.10)
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFFFFFF),
                        ),


                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width:Responsive.isSmallScreen(context)? width/1.98 :width/2.8,
                                  child: Text(
                                    softWrap:true,
                                    "Lorem ipsum dolor sit amet consectetur.",
                                    style: TextStyle(color: Color(0xff212426),
                                        fontSize: Responsive.isSmallScreen(context)? width/35 : width/60,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Container(
                                  width:Responsive.isSmallScreen(context)? width/1.98 :width/2.8,
                                  child: Row(
                                    children: [
                                      Text("Join Us  ",
                                        style: TextStyle(color: Color(0xff2CB74C),
                                            fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins'),
                                      ),
                                      Text("Donate Blood",
                                        style: TextStyle(color: Color(0xff000000),
                                            fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              child: Image(
                                image:AssetImage("image/Group52.png"), width:40,
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
          ),

          Container(
            margin: EdgeInsets.only(top: 60),
            child: Center(
              child: Stack(
                children: [
                  Center(
                    child: Image(image: AssetImage("image/DonatingBlood1.png"),
                      width:Responsive.isSmallScreen(context)? width/1.2 :width/1.5,),
                  ),
                  Transform.translate(offset: Offset(0,80),
                    child:Center(
                      child: Container(
                        height: 98,
                        width:Responsive.isSmallScreen(context)? width/1.4 :width/1.7,
                        decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Color(0xffD2D2D2).withOpacity(0.25),
                                blurRadius: 19.0,
                                offset: Offset(0.0, 0.10)
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFFFFFF),
                        ),


                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width:Responsive.isSmallScreen(context)? width/1.98 :width/2.8,
                                  child: Text(
                                    softWrap:true,
                                    "Lorem ipsum dolor sit amet consectetur.",
                                    style: TextStyle(color: Color(0xff212426),
                                        fontSize: Responsive.isSmallScreen(context)? width/35 : width/60,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Container(
                                  width:Responsive.isSmallScreen(context)? width/1.98 :width/2.8,
                                  child: Row(
                                    children: [
                                      Text("Join Us  ",
                                        style: TextStyle(color: Color(0xff2CB74C),
                                            fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins'),
                                      ),
                                      Text("Donate Blood",
                                        style: TextStyle(color: Color(0xff000000),
                                            fontSize: Responsive.isSmallScreen(context)? width/28 : width/60,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              child: Image(
                                image:AssetImage("image/Group52.png"), width:40,
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
          ),

        ],

      ),

    );
  }
}