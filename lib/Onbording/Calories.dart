import 'package:flutter/material.dart';
import 'Responsive.dart';
class Calories extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CaloriesState();
  }
  
  
}

class CaloriesState extends State<Calories>{
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
                      child: Text("Calories  ",
                        style: TextStyle(color: Color(0xff000000),
                            fontSize: Responsive.isSmallScreen(context)? width/20: width/30,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'),),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),


        body:ListView(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:EdgeInsets.only(left: 20),
                  child: Text("Your daily calorie Burn chart",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff3E423A),
                    fontFamily: 'Poppins'

                  ),),
                ),
                Container(
                  margin:EdgeInsets.only(left: 20),
                  child: Text("Lorem ipsum dolor sit amet consectetur. Tellus vel sapien eget fermentum ultricies",
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffBBBBBB),
                      fontFamily: 'Poppins'
                    ),),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top:10),
            height:_mediaquery.size.height*0.05,
            width:Responsive.isSmallScreen(context)? width/0.5 : width/0.2,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap:(){},
                  child: Container(
                    width:60,

                    child:Center(
                      child: Text("Weekly",style: TextStyle(
                        color: Color(0xff000000).withOpacity(0.5),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.only(left: 25,right: 25),
                    width:60,


                    child:Center(
                      child: Text("Today",style: TextStyle(
                        color: Color(0xff24B445),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width:70,

                    child:Center(
                      child: Text("Monthly",style: TextStyle(
                        color: Color(0xff000000).withOpacity(0.5),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Center(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 1,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xffF6F6F6),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                  //  margin: EdgeInsets.only(right: 5),
                    height: 1,
                    width: 55,
                    decoration: BoxDecoration(
                      color: Color(0xff24B445),
                    ),
                  ),
                ),
              ],
            ),
          ),

  Container(margin: EdgeInsets.only(top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Container(
          child: Image(image: AssetImage("image/Calendar.png")),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          width: 320,
          child: Image(image: AssetImage("image/Dates2.png")),
        ),
      ],
    ),
  ),
          
          
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 150,
            height: 200,
            child: Image(image: AssetImage("image/Cal2.png")),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 160,
                  height:180,
                  child:Stack(
                    children: [
                      Image(image: AssetImage('image/Min1.png'),),
                      Column(
                        children: [
                          Stack(children: [
                            Container(
                                margin: EdgeInsets.only(top: 22),
                                height:40,child: Image(image: AssetImage("image/Circle1.png"))),
                            Container(
                              margin: EdgeInsets.only(top: 26,left: 5),
                              height: 30,
                              child:Image(image: AssetImage("image/Fire3.png")),
                            )
                          ],),
                          Container(
                            margin:EdgeInsets.only(top: 20),child: Text(
                            "Avg Burned",
                            style: TextStyle(
                              color: Color(0xff3E423A),
                              fontSize: 15,
                            ),
                          ),),
                          Container(

                            margin: EdgeInsets.only(top: 10),
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                  text: '430 ',
                                  style: TextStyle(color: Color(0xff9D9D9D),fontSize: 20, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Kcal',
                                      style: TextStyle(
                                        fontSize:15,
                                        color: Color(0xff9D9D9D),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins',),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ),
                        ],
                      )
                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 160,
                  height:180,
                  child:Stack(
                    children: [
                      Image(image: AssetImage('image/Min1.png'),),
                      Column(
                        children: [
                          Stack(children: [
                            Container(
                                margin: EdgeInsets.only(top: 22),
                                height:40,child: Image(image: AssetImage("image/Circle1.png"))),
                            Container(
                              margin: EdgeInsets.only(top: 29,left: 7.5),
                              height: 24,
                              child:Image(image: AssetImage("image/Vec2.png")),
                            )
                          ],),
                          Container(
                            margin:EdgeInsets.only(top: 20),child: Text(
                            "Goal",
                            style: TextStyle(
                              color: Color(0xff3E423A),
                              fontSize: 15,
                            ),
                          ),),
                          Container(

                            margin: EdgeInsets.only(top: 10),
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                  text: '700 ',
                                  style: TextStyle(color: Color(0xff9D9D9D),fontSize: 20, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Kcal',
                                      style: TextStyle(
                                        fontSize:15,
                                        color: Color(0xff9D9D9D),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins',),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ),
                        ],
                      )
                    ],
                  ),

                ),
              ],
            ),
          ),











        ],
      )
    );
  }

}