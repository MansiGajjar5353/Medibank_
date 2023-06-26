import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/AddFamilymemberForm.dart';
import '../Onbording/Responsive.dart';
import 'ByMe.dart';
import 'ByThem.dart';
import 'PendingList.dart';
class FamilyAccess extends StatefulWidget {
  const FamilyAccess({Key? key}) : super(key: key);
  @override
  State<FamilyAccess> createState() => _FamilyAccessState();
}

class _FamilyAccessState extends State<FamilyAccess>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

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
        title: Text(
          "Dashboad",
          style: TextStyle(
            color: Colors.black,
            fontSize: Responsive.isSmallScreen(context)
                ? width / 20
                : width / 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Image(
              image: AssetImage('image/menuimg.png'),
              height: Responsive.isSmallScreen(context)
                  ? width / 10
                  : width / 10,
            ),
          )
        ],
        bottom: TabBar(
          indicator: ShapeDecoration(
              shape: UnderlineInputBorder(
                  borderSide:
                  BorderSide(color: Color(0xff24B445), width: 1))),

          // unselectedLabelColor: Colors.blue, // Color of the unselected tab label
          controller: controller,
          tabs: [
            Tab(
              child: Container(
                child: Text(
                  "By Them",
                  style: TextStyle(
                    color: Color(0xff4F555A),
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 32
                        : width / 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                margin: EdgeInsets.only(
                  left: Responsive.isSmallScreen(context)
                      ? width / 30
                      : width / 30,
                ),
                child: Text(
                  "By Me",
                  style: TextStyle(
                    color: Color(0xff4F555A),
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 32
                        : width / 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                margin: EdgeInsets.only(
                  left: Responsive.isSmallScreen(context)
                      ? width / 30
                      : width / 30,
                ),
                child: Text(
                  "Pending",
                  style: TextStyle(
                    color: Color(0xff4F555A),
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 32
                        : width / 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                width: 30,
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
      body:Stack(
        children: [
           TabBarView(
             controller: controller,
             children: [
               ByThem(),
               ByMe(),
               Pending(),
             ],
           ),
           Align(
             alignment: Alignment.bottomCenter,
             child: Container(
               margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/10 : width/10,right: Responsive.isSmallScreen(context)? width/10 : width/10,bottom: Responsive.isSmallScreen(context)? width/7 : width/12),

               width: Responsive.isSmallScreen(context)? width/2.5 : width/2.5,
               height: Responsive.isSmallScreen(context)? width/9 : width/15,

               child: ElevatedButton(
                 child: Text('Save', style: TextStyle( fontFamily:'Poppins',
                     fontSize:  Responsive.isSmallScreen(context)? width/ 25:width/50, fontWeight: FontWeight.w700),),
                 style: ElevatedButton.styleFrom(
                   primary: Color(0xFF24B445),
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(32.0)
                   ),
                 ),
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> AddFamilymemberForm()));
                 },
               ),
             ),
           )
         ],
      )



      // Container(
      //   margin: EdgeInsets.only(
      //       left:
      //       Responsive.isSmallScreen(context) ? width / 20 : width / 60,
      //       top: 20),
      //   child: RichText(
      //     text: TextSpan(
      //       text: 'Family ',
      //       style: TextStyle(
      //         color: Colors.black,
      //         fontSize: Responsive.isSmallScreen(context)
      //             ? width / 22
      //             : width / 22,
      //         fontFamily: 'Poppins',
      //         fontWeight: FontWeight.w600,
      //       ),
      //       children: <TextSpan>[
      //         TextSpan(
      //           text: 'Members Permission',
      //           style: TextStyle(
      //             fontSize: Responsive.isSmallScreen(context)
      //                 ? width / 22
      //                 : width / 22,
      //             color: Color(0xff24B445),
      //             fontWeight: FontWeight.w600,
      //             fontFamily: 'Poppins',
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

    );
  }
}
