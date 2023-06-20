import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/practice.dart';

class DocSummary extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return DocSummaryState();
  }
}

class DocSummaryState extends State<DocSummary>{
  List<Item> _data = generateItems();
  final tabs = [
    'Patient Information',
    'Emergency contact details',
    'Family History',
    'Family Illness',
    'Diet & Nutrition',
    'Lifestyle',
    'Advance History',
    'Diet & Nutrition',
    'Allergies',
    'Treatments',
    'Latest Medications',
    'Illness or Surgeries',

  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        title: Text("Summary for Doctor",
          style: TextStyle(color: Color(0xff000000),
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),),
      ),
      body:Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20,right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Details",  style: TextStyle(
                  color: Color(0xff4000000),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),),
                InkWell(
                    onTap: (){

                      },

                    child: Image(image: AssetImage("image/Arrow.png"), height: 20,)),

              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
             // margin: EdgeInsets.only(left: 20, right: 20),
              child: ExpansionPanelList(
                expandIconColor: Colors.transparent,
                elevation: 1,
                expandedHeaderPadding: EdgeInsets.all(0),
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    _data[index].isExpanded = !isExpanded;
                  });
                },

                children: _data.map<ExpansionPanel>((Item item) {
                  return ExpansionPanel(
                    canTapOnHeader: true,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                         title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(item.headerValue,style: TextStyle(
                                                    color: Color(0xff4F555A).withOpacity(0.5),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),),
                            Icon(
                              isExpanded ? Icons.minimize : Icons.add,
                            ),
                          ],
                        ),
                      );
                    },

                    body: ListTile(
                      title: Text(item.expandedValue),
                    ),

                    isExpanded: item.isExpanded,

                  );
                }).toList(),



              ),
            ),
          )

          // Container(
          //   margin: EdgeInsets.only(top: 20),
          //   height: _mediaquery.size.height*0.8,
          //   width: double.infinity,
          //   child: ListView.builder(
          //       shrinkWrap: true,
          //       scrollDirection: Axis.vertical,
          //       itemCount: tabs.length,
          //       itemBuilder: (BuildContext context, int index)
          //       {
          //         return Container(
          //           height:50,
          //           margin: EdgeInsets.only(left: 30, right: 30),
          //           child: Column(
          //             children: [
          //               Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     Container(
          //                       child: Text(
          //                         tabs[index],
          //                         style: TextStyle(
          //                           color: Color(0xff4F555A).withOpacity(0.5),
          //                           fontFamily: 'Poppins',
          //                           fontWeight: FontWeight.w400,
          //                         ),
          //                       ),
          //                     ),
          //
          //                     Container(
          //                       child: Row(
          //                         children: [
          //
          //                           Container(
          //                             child: InkWell(
          //                               onTap: (){
          //                                 if(index==0){
          //
          //                                 }
          //                                 else if (index==1){
          //
          //                                 }
          //
          //                               },
          //                               child: Image(image: AssetImage("image/ADDD.png"), height: 18),
          //                             ),
          //                           ),
          //                         ],
          //                       ),
          //                     )]
          //               ),
          //
          //               Container(
          //                 margin: EdgeInsets.only(top: 15),
          //                 height: 1,
          //                 color: Color(0xffE3E3E3),
          //
          //               )
          //
          //
          //             ],
          //           ),
          //         );
          //       }
          //   ),
          // ),

        ],

      )


    );
  }
}


class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(){
  return [
    Item(
      headerValue: 'Patient Information',
      expandedValue: 'No data found',
    ),
    Item(
      headerValue: 'Emergency contact details',
      expandedValue: 'No data found',
    ),
    Item(
      headerValue: 'Family History',
      expandedValue: 'No data found',
    ),
    Item(
      headerValue: 'Family Illness',
      expandedValue: 'No data found',
    ),
    Item(
      headerValue: 'Diet & Nutrition',
      expandedValue: 'No data found',
    ),
    Item(
      headerValue: 'Allergies',
      expandedValue: 'No data found',
    ),
    Item(
      headerValue: 'Treatments',
      expandedValue: 'No data found',
    ),
    Item(
      headerValue: 'Latest Medications',
      expandedValue: 'No data found',
    ),
    Item(
      headerValue: 'Illness or Surgeries',
      expandedValue: 'No data found',
    ),
  ];

}





//
// Container(
// margin: EdgeInsets.only(top: 10),
// child: ListView.builder(
// shrinkWrap: true,
// scrollDirection: Axis.vertical,
// itemCount: tabs.length,
// itemBuilder: (BuildContext context, int index)
// {
// return Container(
// height:50,
// margin: EdgeInsets.only(left: 30, right: 30),
// child: Column(
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Container(
// child: Text(
// tabs[index],
// style: TextStyle(
// color: Color(0xff4F555A).withOpacity(0.5),
// fontFamily: 'Poppins',
// fontWeight: FontWeight.w400,
// ),
// ),
// ),
//
// Container(
// child: Row(
// children: [
//
// Container(
// child: InkWell(
// onTap: (){},
// child: Image(image: AssetImage("image/ADDD.png"), height: 18),
// ),
// ),
// ],
// ),
// )]
// ),
//
// Container(
// margin: EdgeInsets.only(top: 15),
// height: 1,
// color: Color(0xffE3E3E3),
// )
//
//
// ],
// ),
// );
// }
// ),
//
//
// ),
