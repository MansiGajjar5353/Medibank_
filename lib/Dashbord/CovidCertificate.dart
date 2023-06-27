import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/AddFamilyMedicalHestoryForm.dart';
import 'package:sizer/sizer.dart';
import '../Onbording/Responsive.dart';

class CovidCertificateList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CovidCertificateListState();
  }
}

class _CovidCertificateListState extends State<CovidCertificateList> {
  final titles = ["List 1", "List 2", "List 3"];
  final title = ["Father", "Mother", "Sister", "Borther", "Uncle"];
  final age = ["43", "45", "55", "80", "90"];
  final illness = [
    "Daibetic",
    "Stroke",
    "Daibetic",
    "Stroke",
    "Daibetic",
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Stack(
      children: [
        Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.green),
              title: Text(
                "Covid Certificate ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Responsive.isSmallScreen(context)
                      ? width / 18
                      : width / 26,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            body: ListView.builder(
                itemCount: title.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 40,
                        right: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 40,
                        top: Responsive.isSmallScreen(context)
                            ? width / 30
                            : width / 50),
                    padding:
                    EdgeInsets.only(left: 5, right: 5, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF7F7F7),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image(
                              image: AssetImage('image/certification.png'),
                              height: Responsive.isSmallScreen(context)
                                  ? width / 8
                                  : width / 17,
                              width: Responsive.isSmallScreen(context)
                                  ? width / 10
                                  : width / 17,
                            ),
                           Container(
                             width: Responsive.isSmallScreen(context)
                                 ? width / 1.7
                                 : width /2.0,
                             child:  Column(
                               children: [
                                 Container(
                                   margin: EdgeInsets.only(left: 10),
                                   alignment: Alignment.topLeft,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Container(

                                         alignment: Alignment.topLeft,
                                         child: Text("DOSE: ",
                                             style: TextStyle(
                                                 fontSize:
                                                 Responsive.isSmallScreen(
                                                     context)
                                                     ? width / 32
                                                     : width / 40,
                                                 color: Color(0xff929292),
                                                 fontWeight: FontWeight.w400,
                                                 fontFamily: 'Poppins')),
                                       ),
                                       Container(
                                         child: Text(age[index],
                                             style: TextStyle(
                                                 fontSize:
                                                 Responsive.isSmallScreen(
                                                     context)
                                                     ? width / 32
                                                     : width / 40,
                                                 color: Color(0xff000000),
                                                 fontWeight: FontWeight.w400,
                                                 fontFamily: 'Poppins')),
                                       )
                                     ],
                                   ),
                                 ),
                                 Container(
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Container(
                                         margin: EdgeInsets.only(left: 10),
                                         width: Responsive.isSmallScreen(context)
                                             ? width / 1.8
                                             : width /2.2,
                                         child: RichText(
                                           text: TextSpan(
                                             text:
                                             'Lorem ipsum dolor sit amet consectetur.',
                                             style: TextStyle(
                                               color: Color(0xff000000),
                                               fontSize: Responsive.isSmallScreen(context)
                                                   ? width / 32
                                                   : width / 40,
                                               fontFamily: 'Poppins',
                                               fontWeight: FontWeight.w400,
                                             ),
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 )
                               ],
                             ),
                           )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          alignment: Alignment.centerRight,
                          child: Column(
                            children: [
                              Container(

                                padding: EdgeInsets.only(
                                  left: Responsive.isSmallScreen(context)
                                      ? width / 30
                                      : width / 40,
                                  right: Responsive.isSmallScreen(context)
                                      ? width / 30
                                      : width / 40,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Color(0x1A000000), width: 1),
                                  color: Color(0x1A000000),
                                ),
                                child: Text("Viewhn",
                                    style: TextStyle(
                                        fontSize:
                                        Responsive.isSmallScreen(context)
                                            ? width / 28
                                            : width / 34,
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins')),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  );
                })),
        Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddFamilyMedicalForm()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(
                    left:
                    Responsive.isSmallScreen(context) ? width / 10 : width / 10,
                    right:
                    Responsive.isSmallScreen(context) ? width / 10 : width / 10,
                    bottom:
                    Responsive.isSmallScreen(context) ? width / 7 : width / 10),
                width:
                Responsive.isSmallScreen(context) ? width / 2.0 : width / 2.0,
                height: Responsive.isSmallScreen(context) ? width / 9 : width / 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Color(0xff24B445),
                ),
                child: Icon(
                  Icons.add,
                  color: Color(0xff000000),
                  size: Responsive.isSmallScreen(context) ? width / 12 : width / 15,
                ),
              )),
        ),
      ],
    );
  }
}
