import 'package:flutter/material.dart';
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
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.green),
            title: Text(
              "Report Validation",
              style: TextStyle(
                color: Colors.black,
                fontSize:
                    Responsive.isSmallScreen(context) ? width / 20 : width / 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            actions: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage('image/menu.png'),
                  height: Responsive.isSmallScreen(context)
                      ? width / 10
                      : width / 10,
                ),
              )
            ],
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
                      text: 'List of ',
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
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                    right: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 30,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: TextField(
//
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(
                              left: Responsive.isSmallScreen(context)
                                  ? width / 30
                                  : width / 30,
                              right: Responsive.isSmallScreen(context)
                                  ? width / 45
                                  : width / 45),
                          icon: Icon(
                            Icons.search,
                            color: Color(0xff4F555A).withOpacity(0.5),
                            size: Responsive.isSmallScreen(context)
                                ? width / 15
                                : width / 22,
                          ),
                          onPressed: () {},
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        filled: true,
                        fillColor: Color(0xffF9F9F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Enter your keyword",
                        hintStyle: TextStyle(
                          color: Color(0xff4F555A).withOpacity(0.5),
                          fontSize: Responsive.isSmallScreen(context)
                              ? width / 28
                              : width / 32,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
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
                              ? width / 10
                              : width / 10,
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
                                        ? width / 35
                                        : width / 35,
                                  ),
                                  child: Text(
                                    name[index],
                                    style: TextStyle(
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 34
                                                : width / 42,
                                        color: Color(0x80004075),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: Responsive.isSmallScreen(context)
                                        ? width / 35
                                        : width / 35,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: Responsive.isSmallScreen(context)
                                        ? width / 20
                                        : width / 30,
                                    right: Responsive.isSmallScreen(context)
                                        ? width / 20
                                        : width / 30,
                                    top: Responsive.isSmallScreen(context)
                                        ? width / 80
                                        : width / 90,
                                    bottom: Responsive.isSmallScreen(context)
                                        ? width / 80
                                        : width / 90,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff24B445)),
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                        fontSize:
                                            Responsive.isSmallScreen(context)
                                                ? width / 34
                                                : width / 42,
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins'),
                                  ),
                                )
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
