import 'package:flutter/material.dart';
import 'Responsive.dart';
class Oxygen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OxygenState();

  }


}

class OxygenState extends State<Oxygen>{
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
        title: Text("Oxygen Level ", style: TextStyle(color: Color(0xff000000),fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),

      ),

      body: ListView(
        children: [
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
                    margin: EdgeInsets.only(right: 5),
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
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            height:150,
            width:362,
            decoration: BoxDecoration(
              color: Color(0xffF7F7F7),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top:20),
                    child: Text("Avg Oxygen Level",
                      style: TextStyle(color: Color(0xff212426),
                          fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 15),)
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 63,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:Center(
                    child: RichText(
                      text: TextSpan(
                        text: '96',
                        style: TextStyle(color: Color(0xff24B445),fontSize: 32, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
                        children: <TextSpan>[
                          TextSpan(
                            text: '%',
                            style: TextStyle(
                              fontSize:15,
                              color: Color(0xff24B445),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],

            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20,left: 13),
            width: 10,
            height:15,
            child:Image(image: AssetImage('image/110%1.png'),),

          ),
          Container(
            margin: EdgeInsets.only(top: 5,left: 15),
            width: 8,
            height:8,
            child:Image(image: AssetImage('image/Art1.png'),),

          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 100,
            height:110,
            child:Image(image: AssetImage('image/Oxy1.png'),),

          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            width: 80,
            height:15,
            child:Image(image: AssetImage('image/BP2.png'),),

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
                              child:Image(image: AssetImage("image/Sleep.png")),
                            )
                          ],),
                          Container(
                            margin:EdgeInsets.only(top: 20),child: Text(
                            "Normal",
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
                                  text: '92 ',
                                  style: TextStyle(color: Color(0xff9D9D9D),fontSize: 20, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '%',
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
                              child:Image(image: AssetImage("image/Fire3.png")),
                            )
                          ],),
                          Container(
                            margin:EdgeInsets.only(top: 20),child: Text(
                            "High",
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
                                  text: '120 ',
                                  style: TextStyle(color: Color(0xff9D9D9D),fontSize: 20, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Bpm',
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
      ),
    );
  }

}