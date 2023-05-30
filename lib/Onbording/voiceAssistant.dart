import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/DashBoardd.dart';
import 'Responsive.dart';

class voiceAssistant extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return voiceAssistantState();
  }

}
class voiceAssistantState extends State<voiceAssistant>{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
  return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.white,
  elevation: 0,

  title: Text("Voice Assistant", style: TextStyle(color: Color(0xff000000),fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),
),
    
    body:ListView(
      children: [
        Container(
          margin: EdgeInsets.only(left: 21, right: 21, top: 20),
            child: Center(child: Text("Transform your voice into a powerful tool for screen control with the simple tap of the mic, empowering you to operate your devices without lifting a finger.",
              textAlign: TextAlign.justify,
      style: TextStyle(
      fontSize: Responsive.isSmallScreen(context)? 12: 15,
    ),
    )),),

        Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:30),
                child:
                Image(image: AssetImage('image/A1.png'), height: Responsive.isSmallScreen(context)? width/1.9 : width/2.2, ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text("Tap mic and speack",style: TextStyle(fontSize: Responsive.isSmallScreen(context)? width/30 : width/60),),
                ),
              ),
            ],
          ),
        ),

        Center(
          child: Container(
            margin: EdgeInsets.only(top:20),
            child: Text("You can use command as follows",   style: TextStyle(
              fontSize: Responsive.isSmallScreen(context)? 12: 15,
              fontWeight: FontWeight.w500,
            ),),
          ),
        ),

     Center(
     child:  Row(
       mainAxisAlignment: MainAxisAlignment.center,
         children: [


           Container(
             margin: EdgeInsets.only(top:_mediaquery.size.height*0.05),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(children: [
                   Image(image: AssetImage("image/Avoice1.png"), width: Responsive.isSmallScreen(context)? width/15 : width/20,),
                   Padding(padding: EdgeInsets.only(left: 5)),
                   Text("Add", style: TextStyle(
                     color: Color(0xff24B445),
                     fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,
                     fontWeight: FontWeight.w500,
                   ),),
                 ],),
                 Padding(padding: EdgeInsets.only(top: 20)),
                 Row(children: [
                   Image(image: AssetImage("image/Update1.png", ),width: Responsive.isSmallScreen(context)? width/15 : width/20,),
                   Padding(padding: EdgeInsets.only(left: 5)),
                   Text("Update", style: TextStyle(
                     color: Color(0xff24B445),
                     fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,
                     fontWeight: FontWeight.w500,
                   ),),

                 ],),
               ],
             ),
           ),

           Container(
             margin: EdgeInsets.only(top:_mediaquery.size.height*0.05,  left: _mediaquery.size.width*0.08),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(children: [
                   Image(image: AssetImage("image/Viewvoice1.png"),width: Responsive.isSmallScreen(context)? width/15 : width/20,),
                   Padding(padding: EdgeInsets.only(left: 5)),
                   Text("View", style: TextStyle(
                     color: Color(0xff24B445),
                     fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,
                     fontWeight: FontWeight.w500,
                   ),),

                 ],),
                 Padding(padding: EdgeInsets.only(top: 20)),
                 Row(children: [
                   Image(image: AssetImage("image/trash1.png"), width: Responsive.isSmallScreen(context)? width/15 : width/20,),
                   Padding(padding: EdgeInsets.only(left: 5)),
                   Text("Remove", style: TextStyle(
                     color: Color(0xff24B445),
                     fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,
                     fontWeight: FontWeight.w500,
                   ),),

                 ],),
               ],
             ),
           ),






         ],

       )
     ),


        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(top: _mediaquery.size.height*0.2),
            // height: Responsive.isMediumScreen(context)?_mediaquery.size.height*0.20 : _mediaquery.size.height*0.08,
            width: _mediaquery.size.width*0.85,

            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> DashBoardd(),));
                  },
                  child: Container(
                    margin: EdgeInsets.only( top:_mediaquery.size.width*0.02, bottom:_mediaquery.size.width*0.02,),
                    child: Column(
                      children: [
                        Image(image: AssetImage("image/Home2.png"),
                          width: Responsive.isSmallScreen(context)? width/18 : width/50,),

                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.only(left:_mediaquery.size.width*0.2, right:_mediaquery.size.width*0.2, top:_mediaquery.size.width*0.02, bottom:_mediaquery.size.width*0.02, ),
                    child: Image(image: AssetImage('image/Records.png'),   width: Responsive.isSmallScreen(context)? width/18 : width/50,),
                  ),
                ),


                  Container(
                    margin: EdgeInsets.only( top:_mediaquery.size.width*0.02,bottom:_mediaquery.size.width*0.02, ),
                    child: Column(
                      children: [
                        Image(image: AssetImage('image/Mic1.png'),
                          width: Responsive.isSmallScreen(context)? width/18 : width/50,),

                        Text("Mic", style: TextStyle(
                            fontFamily: "Poppins",
                            //   height: Responsive.isSmallScreen(context)? 0.82 : 0.82,
                            fontSize:Responsive.isSmallScreen(context)? width/50 : width/100,
                            color: Color(0xff24B445) ),),
                      ],
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