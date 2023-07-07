import 'package:flutter/material.dart';

import 'Calories.dart';
import 'Responsive.dart';

class StepCount extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return StepCountState();
  }


}

class StepCountState extends State<StepCount>{
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
                      child: Text("Step Count ",
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

        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'You took an average of ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '2,260',
                            style: TextStyle(
                              color: Color(0xff24B445),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',),
                          ),
                        ],
                      ),
                    ),

                    RichText(
                      text: TextSpan(
                        text: 'steps ',
                        style: TextStyle(

                          color: Color(0xff24B445),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Today',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',),
                          ),
                        ],
                      ),
                    ),



                  ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top:20)),
            Container(
              height: 150,
              width: 150,
              child:Image(image: AssetImage('image/Stepss.png')),

            ),


            Container(
              margin: EdgeInsets.only(top: 20),
              height: 90,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Calories(),),);},
                    child: Column(
                      children: [
                       Stack(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff24B445).withOpacity(0.4),
                              ),
                            ),
                            Container(
                              height: 24,
                                margin: EdgeInsets.only(left: 11,top:10),
                                child: Image(image: AssetImage('image/Firee.png'))),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child:Text("31 kcal",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Poppins' ),),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 40,right: 40),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff24B445).withOpacity(0.4),
                            ),
                          ),

                          Container(
                              height: 24,
                              margin: EdgeInsets.only(left: 52,top:10),
                              child: Image(image: AssetImage('image/Place2.png'))),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child:Text("2 km",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Poppins' ),),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff24B445).withOpacity(0.4),
                            ),
                          ),
                          Container(
                              height: 24,
                              margin: EdgeInsets.only(left: 12,top:10),
                              child: Image(image: AssetImage('image/Clock1.png'))),

                        ],
                      ),


                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child:Text("50 min",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Poppins' ),),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Stack(
              children: [
                Center(
                  child: Container(
                   // margin: EdgeInsets.only(left:20,right: 20,top: 20),
                    child: Image(image: AssetImage('image/stat.png')),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Image(image: AssetImage('image/Daily.png')),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 120),
                    child: Image(image: AssetImage('image/StepVec.png')),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 200),
                    child: Image(image: AssetImage('image/Dates.png')),
                  ),
                )

              ],
            ),



          ],
        ),
      );
  }

}