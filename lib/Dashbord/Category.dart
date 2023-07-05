import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Onbording/AddFamilyMedicalHestoryForm.dart';
import 'package:sizer/sizer.dart';

import '../Onbording/Responsive.dart';

class CategoryList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CategoryListState();
  }
}

class _CategoryListState extends State<CategoryList> {
  final image = [
    "image/skinnew.png",
    "image/lungsnew.png",
    "image/kidneynew.png",
    "image/endocrinenew.png",
    "image/neurologynew.png",
    "image/musclenew.png",
    "image/bossnew.png",
    "image/womannew.png"
  ];
  final name = [
    "Dermatology / Skin",
    "Lungs Problem",
    "Genital / Urinal",
    "Endocrine",
    "Neurological",
    "Muscle Problem",
    "For Men",
    "For Women"
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Stack(
      children: [
        Scaffold(
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
                    Text("Categories ",
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 20,
                      top: 20),
                  child: RichText(
                    text: TextSpan(
                      text: 'Select Your',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 22
                            : width / 28,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Category',
                          style: TextStyle(
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 22
                                : width / 28,
                            color: Color(0xff24B445),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(bottom: Responsive.isSmallScreen(context)?width/10:width/20),
                      child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: image.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GridTile(
                          child: GestureDetector(
                        onTap: () {
                          // Handle item tap
                        },
                        child: Container(
                          height: Responsive.isSmallScreen(context)
                              ? width / 13
                              : width / 13,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(
                              left: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 35,
                              right: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 35,
                              top: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF9F9F9)),
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(
                                      top: Responsive.isSmallScreen(context)
                                          ? width / 20
                                          : width / 25,
                                    ),
                                    child: Image.asset(
                                      image[index],
                                      height: Responsive.isSmallScreen(context)
                                          ? width / 7
                                          : width / 15,
                                    )),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: Responsive.isSmallScreen(context)
                                        ? width / 30
                                        : width / 30,
                                  ),
                                  child: Text(
                                    name[index],
                                    style: TextStyle(
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 30
                                                : width / 38,
                                        color: Color(0x80004075),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ));
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      childAspectRatio: 1, // Ratio of item's width to height
                    ),
                  )),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
