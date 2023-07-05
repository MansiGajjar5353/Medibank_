import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'Responsive.dart';
class EditSymptoms extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EditSymptomsState();
  }
}

class EditSymptomsState extends State<EditSymptoms> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100, // default is 56

        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          }, padding: EdgeInsets.only(top: 40),
          icon: const BackButtonIcon(),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(padding: EdgeInsets.only(right: 30),
                child: Center(
                  child: Image(image: AssetImage("image/MedibankLOGO.png",),
                      width: Responsive.isSmallScreen(context)? width/2.3: width/4),
                )),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dashboard ",
                  style: TextStyle(color: Color(0xff000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),),
                InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));},
                  child: Image(image: AssetImage("image/DashboardImage.png"),
                    height: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      body:ListView(
        children: [

          Container(margin: EdgeInsets.only(left: 30),
            child: RichText(
              text: TextSpan(
                text: 'Edit ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize:Responsive.isSmallScreen(context)? width/20 : width/40,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Symptoms',
                    style: TextStyle(
                      fontSize:Responsive.isSmallScreen(context)? width/20 : width/40,
                      color: Color(0xff24B445),

                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',),
                  ),
                ],
              ),
            ),
          ),

          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(margin:EdgeInsets.only(left: 30,top: 20),
                  child: Text("Symptoms date",
                    style: TextStyle(color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize:Responsive.isSmallScreen(context)? width/25 : width/50,
                      fontWeight: FontWeight.w400, ),),
                ),
                Container(
                  margin:EdgeInsets.only(left: 30,top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/1.5 : width/2,
                        height: 55,
                        child: TextField(
//
                          decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide.none,),

                            hintText: "09 Dec",
                            hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        child:CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xffF9F9F9),
                          child:Icon(Icons.calendar_today_outlined, color: Color(0xff4F555A).withOpacity(0.5),),
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),



          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(margin:EdgeInsets.only(left: 30,top: 20),
                  child: Text("Select symptom", style: TextStyle(color: Color(0xff4F555A).withOpacity(0.4),fontSize: 14,fontWeight: FontWeight.w400, ),),
                ),
                Container(
                  margin:EdgeInsets.only(left: 30,top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/1.5 : width/2,
                        height: 55,

                        child: TextField(
//
                          decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide.none,),

                            hintText: "Anxiety",
                            hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),fontSize: 16,fontWeight: FontWeight.w400),

                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        child:CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xffF9F9F9),
                          child:Icon(Icons.arrow_drop_down, color: Color(0xff4F555A).withOpacity(0.5),),
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left:30,right: 30, top:10),
                width: Responsive.isSmallScreen(context)? width/1.2 : width/2,
                height: 55,
                child: TextField(
//
                  decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    filled: true,
                    fillColor: Color(0xffF9F9F9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none,),

                    hintText: "200",
                    hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5)),

                  ),
                ),
              ),
            ],
          ),



          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(margin:EdgeInsets.only(left: 30,top: 20),
                  child: Text("Add Details", style: TextStyle(color: Color(0xff4F555A).withOpacity(0.4),fontSize: 14,fontWeight: FontWeight.w400, ),),
                ),
                Container(
                  margin: EdgeInsets.only(left:30,right: 30, top:10),
                  width: Responsive.isSmallScreen(context)? width/1.2 : width/2,
                  height: 200,
                  child: TextField(
//
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, top: 10,bottom: 90),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,),

                      hintText: "Add details(optional)",
                      hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), ),

                    ),
                  ),
                ),

              ],


            ),
          ),


          Container(
            margin: EdgeInsets.only(top:10),

            child:Column(
              children: [
                Padding(padding: EdgeInsets.only(top:15)),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff24B445),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)
                    ),

                  ),
                  onPressed: (){



                  },

                  icon: Container(
                    margin: EdgeInsets.only(left:10),
                    width: 80,
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.black,
                    ),
                  ), label: Text(""),
                ),
              ],
            ),
          ),







        ],
      ),
    );
  }

}

