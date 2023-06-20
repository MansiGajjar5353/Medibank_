import 'package:flutter/material.dart';

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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        title: Text("Patient Summary",
          style: TextStyle(color: Color(0xff000000),
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),),
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