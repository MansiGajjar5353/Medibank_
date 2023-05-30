import 'package:flutter/material.dart';
import 'Responsive.dart';
class LifestyleDashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LifestyleDashboardState();
  }

}

class LifestyleDashboardState extends State<LifestyleDashboard> {
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
     title: Text("Dashboard ",
       style: TextStyle(color: Color(0xff000000),
           fontSize: 18,
           fontWeight: FontWeight.w400,
           fontFamily: 'Poppins'),),
   ),

body: ListView(
children: [
  Center(
    child: Container(
      child: Stack(
        children: [
          Center(
            child: Image(image: AssetImage("image/Circles1.png"),
            height: Responsive.isSmallScreen(context)? width/2: width/3,),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                    child: Text("Excellent",
                    style: TextStyle(color: Color(0xff24B445), fontWeight: FontWeight.w400,),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text("80",
                      style: TextStyle(color: Color(0xff24B445),
                          fontWeight: FontWeight.w700,
                          fontSize: Responsive.isSmallScreen(context)? width/20 : width/50),

                    )),
                Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text("Lifestyle Score",
                      style: TextStyle(color: Color(0xff24B445),  fontWeight: FontWeight.w400,),)),

              ],
            ),
          ) ,

        ],
      ),

    ),
  ),


Center(
  child:   Container(
    margin: EdgeInsets.only(left:20, right: 20),
    child: Column(
      children: [
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(child: Text("BMI", style: TextStyle(color: Color(0xff000000).withOpacity(0.45)),)),
            Container(child: Text("0.0", style: TextStyle(color: Color(0xff000000).withOpacity(0.45)), )),
            
          ],
        ),
        Container(
          child: Image(image: AssetImage("image/Bmi1.png")),
        ),
        Container(
          child: Image(image: AssetImage("image/Bmi2.png")),
        ),


        Container(
          margin: EdgeInsets.only( top:20),
          height:90,
          decoration: BoxDecoration(
            color: Color(0xffF9F9F9),
            borderRadius: BorderRadius.circular(21),
          ),
          child:Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: Text("Underweight", style: TextStyle(color: Color(0xff4F555A).withOpacity(0.50), fontSize: 12, fontWeight: FontWeight.w400 ),)),
                    Container(margin: EdgeInsets.only(top: 5),
                        child: Text("Less than 18.5",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500 ),)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: Text("Normal", style: TextStyle(color: Color(0xff4F555A).withOpacity(0.50), fontSize: 12,fontWeight: FontWeight.w400 ))),
                    Container(margin: EdgeInsets.only(top: 5),child: Text("18.5-24.9", style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500 ),)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: Text("Overweight", style: TextStyle(color: Color(0xff4F555A).withOpacity(0.50), fontSize: 12,fontWeight: FontWeight.w400 ))),
                    Container(margin: EdgeInsets.only(top: 5),child: Text("25-29.9" ,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500 ),)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: Text("Obesity", style: TextStyle(color: Color(0xff4F555A).withOpacity(0.50), fontSize: 12, fontWeight: FontWeight.w400))),
                    Container(margin: EdgeInsets.only(top: 5),child: Text("30+" ,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500 ),)),
                  ],
                ),

              ],
            ),
          ),


        ),
      ],
    ),

  ),
),

Container(
  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
        onTap:(){},
        child: Container(
          height: 46,
          width: Responsive.isSmallScreen(context)? width/2.4 : width/4,
          decoration: BoxDecoration(
            color: Color(0xff24B445),
            borderRadius: BorderRadius.circular(50),
          ),
        child: Center(
          child: Text(
            "Edit Your Diet",
            style: TextStyle(color: Color(0xffFFFFFF), fontWeight: FontWeight.w400, fontSize: 14),
          ),
        ),

        ),
      ),
      InkWell(
        onTap:(){},
        child: Container(
          height: 46,
          width: Responsive.isSmallScreen(context)? width/2.4: width/4,
          decoration: BoxDecoration(
            color: Color(0xff24B445),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              "Edit Your Habits",
              style: TextStyle(color: Color(0xffFFFFFF), fontWeight: FontWeight.w400, fontSize: 14),
            ),
          ),

        ),
      ),
    ],
  ),
),

  Container(
    margin: EdgeInsets.only(left: 20, right:20, top:10),
    height: 500,
    decoration: BoxDecoration(
      color: Color(0xffF9F9F9),
      borderRadius: BorderRadius.circular(21),
    ),
    child: ListView(
      children: [
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             margin:EdgeInsets.only(left:20,top:20,bottom: 20),
             child: Text("Weight(kgs)",
               style: TextStyle(fontSize:Responsive.isSmallScreen(context)? width/28: width/60, fontFamily: 'Poppins', fontWeight: FontWeight.w400, color: Color(0xff4F555A).withOpacity(0.5),),),
           ),
           Container(
             margin: EdgeInsets.only(left:20, right: 20),
             height: 1.5,
             decoration: BoxDecoration(color: Color(0xffE3E3E3)),
           ),
           Container(
             margin:EdgeInsets.only(left:20,top:10,bottom: 20),
             child: Text("Height (Feet inches)",
               style: TextStyle(fontSize:Responsive.isSmallScreen(context)? width/28: width/60, fontFamily: 'Poppins', fontWeight: FontWeight.w400, color: Color(0xff4F555A).withOpacity(0.5),),),
           ),
           Container(
             margin: EdgeInsets.only(left:20, right: 20),
             height: 1.5,
             decoration: BoxDecoration(color: Color(0xffE3E3E3)),
           ),
           Container(
             margin:EdgeInsets.only(left:20,top:10,bottom: 20),
             child: Text("Current BMI",
               style: TextStyle(fontSize:Responsive.isSmallScreen(context)? width/28: width/60, fontFamily: 'Poppins', fontWeight: FontWeight.w400, color: Color(0xff4F555A).withOpacity(0.5),),),
           ),
           Container(
             margin: EdgeInsets.only(left:20, right: 20),
             height: 1.5,
             decoration: BoxDecoration(color: Color(0xffE3E3E3)),
           ),
           Container(
             margin:EdgeInsets.only(left:20,top:10,bottom: 20),
             child: Text("Water intake per day (liters)",
               style: TextStyle(fontSize:Responsive.isSmallScreen(context)? width/28: width/60, fontFamily: 'Poppins', fontWeight: FontWeight.w400, color: Color(0xff4F555A).withOpacity(0.5),),),
           ),
           Container(
             margin: EdgeInsets.only(left:20, right: 20),
             height: 1.5,
             decoration: BoxDecoration(color: Color(0xffE3E3E3)),
           ),
           Container(
             margin:EdgeInsets.only(left:20,top:10,bottom: 20),
             child: Text("Set New Activity Target",
               style: TextStyle(fontSize:Responsive.isSmallScreen(context)? width/23: width/55,
                 fontFamily: 'Poppins',
                 fontWeight: FontWeight.w500,
                 color: Color(0xff24B445)),),
           ),
         ],
        ),

        Column(
          children: [
            Row(
              children: [
                Text(
                  'Name:',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: 10.0), // Add some spacing between label and TextField
                Expanded(
                  child: TextField(
                    // Add your TextField properties here
                  ),
                ),
              ],
            ),
            // Add more rows for other fields
          ],
        ),

      ],
    ),
  ),












  // Container(
  //   height: 500,
  //     decoration: BoxDecoration(
  //       color: Color(0xffF9F9F9),
  //
  //     ),
  //   child: ListView(
  //     children: [
  //       Container(
  //         margin: EdgeInsets.only(left: 20, right: 20),
  //         height:50,
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Container(
  //               height:30,
  //                 width: 30,
  //                 child: Text("Weight(Kgs)")),
  //             Container(
  //               margin: EdgeInsets.only(left: 20),
  //               height:30,
  //               width: 50,
  //               child: Expanded(
  //                 child: TextField(
  //                     decoration: InputDecoration(
  //
  //                         hintText: '72',
  //                         border: InputBorder.none
  //                     )
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //
  //     ],
  //   ),
  //
  // ),




















  // Container(
  //   margin: EdgeInsets.only(left:20, right: 20, top:20),
  //   height: _mediaquery.size.height*0.5,
  // decoration: BoxDecoration(
  //   color: Color(0xffF9F9F9),
  //     borderRadius: BorderRadius.circular(21),
  // ),
  //   child: Column(
  //     children: [
  //       Row(
  //
  //        children: [
  //
  //          TextField(
  //            decoration: InputDecoration(
  //              fillColor: Color(0xffFFFFFF),
  //              labelText: "Hello",
  //              hintText: "72",
  //
  //              enabledBorder: OutlineInputBorder(
  //                borderSide: const BorderSide(width: 3, color: Colors.blue),
  //                borderRadius: BorderRadius.circular(15),
  //            ),
  //
  //
  //              focusedBorder: OutlineInputBorder(
  //                borderSide: const BorderSide(width: 3, color: Colors.red),
  //                borderRadius: BorderRadius.circular(15),
  //
  //              ),
  //
  //
  //
  //
  //          ),
  //
  //
  //
  //          ),
  //
  //          // TextField(
  //          //
  //          //   decoration: InputDecoration(
  //          //     //contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  //          //     filled: true,
  //          //     fillColor: Color(0xffF9F9F9),
  //          //     border: OutlineInputBorder(
  //          //       borderRadius: BorderRadius.circular(10),
  //          //       borderSide: BorderSide.none,),
  //          //
  //          //     hintText: "72",
  //          //     suffixIcon: IconButton(icon:Icon(Icons.clear_sharp,color: Color(0xff4F555A).withOpacity(0.5),
  //          //       size: 14,),
  //          //       onPressed: (){}),
  //          //     hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5),
  //          //         fontSize: Responsive.isSmallScreen(context)? width/25 : width/60),
  //          //
  //          //   ),
  //          // ),
  //        ],
  //       )
  //
  //     ],
  //   ),
  // ),






















],

),




 );
  }
}