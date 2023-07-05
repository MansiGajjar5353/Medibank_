import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'Responsive.dart';


class HealthSummary extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return HealthSummaryState();
  }



}

class HealthSummaryState extends State<HealthSummary> {
  final tabs = [
    'Patient Information',
    'Emergency contact details',
    'Current health profile',
    'Lifestyle',
    'Diet & Nutrition',
    'Exercise',
    'Family History',
    'Dermatology / skin',
    'Abdominal / Digestive',

  ];


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
                Text("Patient Summary",
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
      body:Container(
          margin: EdgeInsets.only(top: 10),
          child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: tabs.length,
          itemBuilder: (BuildContext context, int index){
             return Container(
               height:50,
               margin: EdgeInsets.only(left: 30, right: 30),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                        child: Text(
                          tabs[index],
                          style: TextStyle(
                            color: Color(0xff4F555A).withOpacity(0.5),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                       ),
                       Container(
                         child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                child: InkWell(
                                  onTap: (){},
                                  child: Image(image: AssetImage("image/EditTab.png"), height: 18,),
                                ),
                              ),
                              Container(
                                child: InkWell(
                                  onTap: (){},
                                  child: Image(image: AssetImage("image/ADDD.png"), height: 18),
                                ),
                              ),
                            ],
                         ),
                       )

                     ],
                   ),

                   Container(
                     margin: EdgeInsets.only(top: 15),
                     height: 1,
                     color: Color(0xffE3E3E3),
                   )

                 ],
               ),
             );
          } )),
    );
  }
}