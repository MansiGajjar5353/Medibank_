import 'package:flutter/material.dart';
import 'Responsive.dart';
import 'AddSymptoms.dart';
import 'Edit.dart';


class Symptoms extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SymptomsState();
  }

}

class SymptomsState extends State<Symptoms>{
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
        title: Text("Dashboard", style: TextStyle(color: Color(0xff000000),fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),
      ),
      body: ListView(
        children: [
          Container(
            child: Row(
              children: [
                Container(margin: EdgeInsets.only(left: 30),
                  child: RichText(
                    text: TextSpan(
                      text: 'All ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize:Responsive.isSmallScreen(context)? width/20 : width/30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Symptoms',
                          style: TextStyle(
                            fontSize:Responsive.isSmallScreen(context)? width/20 : width/30,
                            color: Color(0xff24B445),

                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.only(left:Responsive.isSmallScreen(context)? width/2.5 : width/60,),
                  child: InkWell(
                    onTap: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=> AddSymptoms(),),);},
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Color(0xffF9F9F9),
                      child:Icon(Icons.add,color: Colors.black,),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  margin: EdgeInsets.only(left:Responsive.isSmallScreen(context)? width/50 : width/60,top: 30),
                  height: 65,
                  width: Responsive.isSmallScreen(context) ? width/1.5 : width/1.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color(0xfff9f9f9),
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Anxiety',
                        style: TextStyle(

                          color: Colors.black,
                          fontSize:Responsive.isSmallScreen(context)? width/20 : width/30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '(3)',
                            style: TextStyle(
                              fontSize:Responsive.isSmallScreen(context)? width/20 : width/30,
                              color: Color(0xff24B445),
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Poppins',),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.only(left: 15,top: 30),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Edit(),),);
                    },
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Color(0xffF9F9F9),

                      child:Icon(Icons.remove_red_eye_sharp, color: Colors.green,),),
                    ),
                  ),


              ],
            ),
          ),



          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(margin: EdgeInsets.only(left:Responsive.isSmallScreen(context)? width/50 : width/60,top: 10),
                  height: 65,
                  width: Responsive.isSmallScreen(context) ? width/1.5 : width/1.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color(0xfff9f9f9),
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Anxiety',
                        style: TextStyle(

                          color: Colors.black,
                          fontSize:Responsive.isSmallScreen(context)? width/20 : width/30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '(2)',
                            style: TextStyle(
                              fontSize:Responsive.isSmallScreen(context)? width/20 : width/30,
                              color: Color(0xff24B445),
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Poppins',),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.only(left: 15,top: 10),
                  child: InkWell(
                    onTap: (){},
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Color(0xffF9F9F9),

                      child:Icon(Icons.remove_red_eye_sharp, color: Colors.green,),),
                  ),
                ),
              ],
            ),
          ),



          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(margin: EdgeInsets.only(left:Responsive.isSmallScreen(context)? width/50 : width/60,top: 10),
                  height: 65,
                  width: Responsive.isSmallScreen(context) ? width/1.5 : width/1.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color(0xfff9f9f9),
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Aggressiveness',
                        style: TextStyle(

                          color: Colors.black,
                          fontSize:Responsive.isSmallScreen(context)? width/20 : width/30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '(3)',
                            style: TextStyle(
                              fontSize:Responsive.isSmallScreen(context)? width/20 : width/30,
                              color: Color(0xff24B445),
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Poppins',),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.only(left: 15,top: 10),
                  child: InkWell(
                    onTap: (){},
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Color(0xffF9F9F9),

                      child:Icon(Icons.remove_red_eye_sharp, color: Colors.green,),),
                  ),
                ),
              ],
            ),
          ),


          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(margin: EdgeInsets.only(left:Responsive.isSmallScreen(context)? width/50 : width/60,top: 10),
                  height: 65,
                  width: Responsive.isSmallScreen(context) ? width/1.5 : width/1.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color(0xfff9f9f9),
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Carvings',
                        style: TextStyle(

                          color: Colors.black,
                          fontSize:Responsive.isSmallScreen(context)? width/20 : width/30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '(2)',
                            style: TextStyle(
                              fontSize:Responsive.isSmallScreen(context)? width/20 : width/30,
                              color: Color(0xff24B445),
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Poppins',),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.only(left: 15,top: 10),
                  child: InkWell(
                    onTap: (){},
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Color(0xffF9F9F9),

                      child:Icon(Icons.remove_red_eye_sharp, color: Colors.green,),),
                  ),
                ),
              ],
            ),
          ),


          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(margin: EdgeInsets.only(left:Responsive.isSmallScreen(context)? width/50 : width/60,top: 10),
                  height: 65,
                  width: Responsive.isSmallScreen(context) ? width/1.5 : width/1.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color(0xfff9f9f9),
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Burning eyes',
                        style: TextStyle(

                          color: Colors.black,
                          fontSize:Responsive.isSmallScreen(context)? width/20 : width/30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '(1)',
                            style: TextStyle(
                              fontSize:Responsive.isSmallScreen(context)? width/20 : width/30,
                              color: Color(0xff24B445),
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Poppins',),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.only(left: 15,top: 10),
                  child: InkWell(
                    onTap: (){},
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Color(0xffF9F9F9),

                      child:Icon(Icons.remove_red_eye_sharp, color: Colors.green,),),
                  ),
                ),
              ],
            ),
          ),



          Center(
            child: Container(
              height: _mediaquery.size.height*0.070,
              width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
              margin: EdgeInsets.only(top: _mediaquery.size.height*0.2),
              child: ElevatedButton(
                onPressed: () {

                },
                child: Image(image: AssetImage('image/AerrowRight.png'),
                    height: _mediaquery.size.height*0.04) ,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff24B445),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)
                  ),
                ),
              ),
            ),
          ),






        ],
      ),
    );
  }
}