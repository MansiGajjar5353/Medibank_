import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/AddFamilymemberForm.dart';
import 'AddFamilyMedicalHestoryForm.dart';
import 'Responsive.dart';
class EditFamilyMedicalForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EditFamilyMedicalFormState();
  }
}

class _EditFamilyMedicalFormState extends State<EditFamilyMedicalForm> {
  String LIVING = "Living";
  String RELATIONSHEEP = "Father";
  @override
  Widget build(BuildContext context) {
    List<String> LivingDeceased = [
      'Living',
      'Deceased',
    ];
    List<String> RelationSheep = [
      'Father',
      'Mother',
      'Sister',
      'Brother',
      'Son',
      'Doughter',
      'Uncle',
      'Aunty'
    ];
    TextEditingController _relationsheepController = TextEditingController();
    _relationsheepController.text = RELATIONSHEEP;

    TextEditingController _livingController = TextEditingController();
    _livingController.text = LIVING;
    double width = MediaQuery.of(context).size.width;
    @override
    void dispose() {
      _livingController.dispose();
      _relationsheepController.dispose();
      super.dispose();
    }

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Responsive.isSmallScreen(context)? width/5: width/8.2,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green, size: Responsive.isSmallScreen(context)? width/20: width/25,),
        leading: Align(
          alignment: Alignment.bottomLeft,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const BackButtonIcon(
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(padding: EdgeInsets.only(right: 30),
                child: Center(
                  child: Image(image: AssetImage("image/MedibankLOGO.png",),
                      width: Responsive.isSmallScreen(context)? width/2.3: width/4),
                )),

            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Edit Family Medical History ",
                      style: TextStyle(color: Color(0xff000000),
                          fontSize: Responsive.isSmallScreen(context)? width/22: width/30,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 35
                        : width / 90,
                    right: Responsive.isSmallScreen(context)
                        ? width / 35
                        : width / 90,
                    top: 1),
                alignment: Alignment.center,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                    'Note: minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. ',
                    style: TextStyle(
                      color: Color(0xff929292),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 38
                          : width / 54,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                        ),
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                              height: Responsive.isSmallScreen(context)
                                  ? width / 1
                                  : width / 90,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: Responsive.isSmallScreen(context)
                                          ? width / 30
                                          : width / 30,
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
                                                left: Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 30
                                                    : width / 30,
                                                right: Responsive.isSmallScreen(
                                                    context)
                                                    ? width / 45
                                                    : width / 45),
                                            icon: Icon(
                                              Icons.search,
                                              color: Color(0xff4F555A)
                                                  .withOpacity(0.5),
                                              size: Responsive.isSmallScreen(
                                                  context)
                                                  ? width / 18
                                                  : width / 18,
                                            ),
                                            onPressed: () {},
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 15),
                                          filled: true,
                                          fillColor: Color(0xffF9F9F9),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(45),
                                            borderSide: BorderSide.none,
                                          ),
                                          hintText: "Search....",
                                          hintStyle: TextStyle(
                                            color: Color(0xff4F555A)
                                                .withOpacity(0.5),
                                            fontSize: Responsive.isSmallScreen(
                                                context)
                                                ? width / 28
                                                : width / 32,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: Responsive.isSmallScreen(context)
                                            ? width / 30
                                            : width / 30,
                                      ),
                                      width: double.infinity,
                                      child: ListView.builder(
                                        physics: ClampingScrollPhysics(),
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        itemCount: RelationSheep.length,
                                        itemBuilder: (context, index) {
                                          final year = RelationSheep[index];
                                          final isSelectedYear =
                                              year == RELATIONSHEEP;

                                          return ListTile(
                                            title: Column(
                                              children: [
                                                Container(

                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    ' $year',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight: isSelectedYear
                                                          ? FontWeight.w700
                                                          : FontWeight.w500,
                                                      fontSize: Responsive
                                                          .isSmallScreen(
                                                          context)
                                                          ? width / 26
                                                          : width / 26,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    top: Responsive
                                                        .isSmallScreen(
                                                        context)
                                                        ? width / 30
                                                        : width / 30,
                                                  ),
                                                  child: Container(
                                                    height: 1.5,
                                                    color: Color(0xffE4E8EE),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            onTap: () {
                                              setState(() {
                                                RELATIONSHEEP = year;
                                                Navigator.of(context).pop();
                                              });
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ));
                        });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 40,
                          top: Responsive.isSmallScreen(context)
                              ? width / 40
                              : width / 60,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 4,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextField(
                                      controller: _relationsheepController,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        filled: true,
                                        fillColor: Color(0xffF9F9F9),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(45),
                                          borderSide: BorderSide.none,
                                        ),
                                        hintText: "Select Relation",
                                        hintStyle: TextStyle(
                                          color: Color(0xff4F555A)
                                              .withOpacity(0.4),
                                          fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 20
                                              : width / 26,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      style: TextStyle(
                                        color:
                                        Color(0xff000000).withOpacity(0.4),
                                        fontSize:
                                        Responsive.isSmallScreen(context)
                                            ? width / 20
                                            : width / 26,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                )),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: Responsive.isSmallScreen(context)
                                    ? width / 9
                                    : width / 15,
                                width: Responsive.isSmallScreen(context)
                                    ? width / 9
                                    : width / 15,
                                margin: EdgeInsets.only(
                                  right: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 20,
                                ),
                                alignment: Alignment.centerRight,
                                child: Image(
                                  image: AssetImage('image/arrowithback.png'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: ()
                  {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                        ),
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                              height: Responsive.isSmallScreen(context)
                                  ? width / 2
                                  : width / 90,
                              child: ListView(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: Responsive.isSmallScreen(context)
                                          ? width / 30
                                          : width / 30,
                                    ),
                                    child: Text(
                                      'Choose',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w700,
                                        fontSize:
                                        Responsive.isSmallScreen(context)
                                            ? width / 20
                                            : width / 50,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: Responsive.isSmallScreen(context)
                                            ? width / 30
                                            : width / 30,
                                      ),
                                      width: double.infinity,
                                      child: ListView.builder(
                                        physics: ClampingScrollPhysics(),
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        itemCount: LivingDeceased.length,
                                        itemBuilder: (context, index) {
                                          final year = LivingDeceased[index];
                                          final isSelectedYear = year == LIVING;

                                          return ListTile(
                                            title: Column(
                                              children: [
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    ' $year',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight: isSelectedYear
                                                          ? FontWeight.w700
                                                          : FontWeight.w500,
                                                      fontSize: Responsive
                                                          .isSmallScreen(
                                                          context)
                                                          ? width / 24
                                                          : width / 26,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    top: Responsive
                                                        .isSmallScreen(
                                                        context)
                                                        ? width / 30
                                                        : width / 30,
                                                  ),
                                                  child: Container(
                                                    height: 1.5,
                                                    color: Color(0xffE4E8EE),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            onTap: () {
                                              setState(() {
                                                LIVING = year;
                                                Navigator.of(context).pop();
                                              });
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ));
                        });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 40,
                          top: Responsive.isSmallScreen(context)
                              ? width / 40
                              : width / 60,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 4,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextField(
                                      controller: _livingController,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        filled: true,
                                        fillColor: Color(0xffF9F9F9),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(45),
                                          borderSide: BorderSide.none,
                                        ),
                                        hintText: "Living/Deceased",
                                        hintStyle: TextStyle(
                                          color: Color(0xff4F555A)
                                              .withOpacity(0.4),
                                          fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 20
                                              : width / 26,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      style: TextStyle(
                                        color:
                                        Color(0xff000000).withOpacity(0.4),
                                        fontSize:
                                        Responsive.isSmallScreen(context)
                                            ? width / 20
                                            : width / 26,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                )),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: Responsive.isSmallScreen(context)
                                    ? width / 9
                                    : width / 15,
                                width: Responsive.isSmallScreen(context)
                                    ? width / 9
                                    : width / 15,
                                margin: EdgeInsets.only(
                                  right: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 20,
                                ),
                                alignment: Alignment.centerRight,
                                child: Image(
                                  image: AssetImage('image/arrowithback.png'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: Responsive.isSmallScreen(context)
                              ? width / 40
                              : width / 60,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: Responsive.isSmallScreen(context)
                                  ? width / 1.1
                                  : width / 1.1,
                              height: Responsive.isSmallScreen(context)
                                  ? width / 8
                                  : width / 8,
                              child: TextField(
//
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                                  filled: true,
                                  fillColor: Color(0xffF9F9F9),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(45),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: "Major illness/ cause of death",
                                  hintStyle: TextStyle(
                                    color: Color(0xff4F555A).withOpacity(0.4),
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 20
                                        : width / 26,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                style: TextStyle(
                                  color: Color(0xff4F555A).withOpacity(0.4),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 26,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: Responsive.isSmallScreen(context)
                              ? width / 60
                              : width / 60,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: Responsive.isSmallScreen(context)
                                  ? width / 1.1
                                  : width / 1.1,
                              height: Responsive.isSmallScreen(context)
                                  ? width / 8
                                  : width / 8,
                              child: TextField(
//
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                                  filled: true,
                                  fillColor: Color(0xffF9F9F9),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(45),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: "Age",
                                  hintStyle: TextStyle(
                                    color: Color(0xff4F555A).withOpacity(0.4),
                                    fontSize: Responsive.isSmallScreen(context)
                                        ? width / 20
                                        : width / 26,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                style: TextStyle(
                                  color: Color(0xff4F555A).withOpacity(0.4),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 26,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                  left: Responsive.isSmallScreen(context)
                      ? width / 10
                      : width / 10,
                  right: Responsive.isSmallScreen(context)
                      ? width / 10
                      : width / 10,
                  bottom: Responsive.isSmallScreen(context)
                      ? width / 7
                      : width / 12),
              width:
              Responsive.isSmallScreen(context) ? width / 2.5 : width / 2.5,
              height:
              Responsive.isSmallScreen(context) ? width / 9 : width / 15,
              child: ElevatedButton(
                child: Text(
                  'Save',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 25
                          : width / 50,
                      fontWeight: FontWeight.w700),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF24B445),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> AddFamilyMedicalForm()));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}


