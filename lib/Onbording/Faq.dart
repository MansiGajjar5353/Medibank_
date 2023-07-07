import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'Responsive.dart';

class Faq extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FaqList();
  }
}

class _FaqList extends State<Faq> {
  List<int> selectedIndices = [];
  bool isVisible = false;
  bool click = true;
  bool toggle = false;
  bool isButtonPressed = false;

  List<bool> isCheckedListDelete = List.generate(5, (index) => false);
  List<bool> imagechange = List.generate(5, (index) => false);

  void toggleCheckboxDelete(int index) {
    setState(() {
      isCheckedListDelete[index] = !isCheckedListDelete[index];
      imagechange[index] = !imagechange[index];
    });
  }

  void handleButtonPress() {
    setState(() {
      // Change the color to your desired value
      isButtonPressed = true;
    });
  }

  final titles = [
    "Questions about",
    "Questions about",
    "Questions about",
    "Questions about"
  ];
  final title = [
    "Getting Started",
    "The Medibank",
    "The Medibank",
    "The Medibank",
    "The Medibank"
  ];
  final question = [
    "What does “The Medibank “ provide? ",
    "How secured is our Data ?",
    "I have not received OTP for mobile ?",
    "How to enroll for jrkhejw jkrhewjk jkhrkw other family members "
  ];

  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    final mqHeight = MediaQuery
        .of(context)
        .size
        .height;
    final mqWidth = MediaQuery
        .of(context)
        .size
        .width;
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
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("FAQ ",
                        style: TextStyle(color: Color(0xff000000),
                            fontSize: Responsive.isSmallScreen(context)? width/20: width/30,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'),),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 30
                            : width / 30,
                        right: Responsive.isSmallScreen(context)
                            ? width / 30
                            : width / 30,
                        top: 12),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'How can we help you?',
                        style: new TextStyle(
                            color: Color(0xFF000000),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 30
                            : width / 30,
                        right: Responsive.isSmallScreen(context)
                            ? width / 30
                            : width / 30,
                        top: 20),
                    width: Responsive.isSmallScreen(context)
                        ? width / 1.0
                        : width / 1.0,
                    height: Responsive.isSmallScreen(context)
                        ? width / 8
                        : width / 8,
                    child: Align(
                      alignment: Alignment.centerLeft,
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
                                  : width / 15,
                            ),
                            onPressed: () {},
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
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
                                ? width / 22
                                : width / 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: mqHeight / 10.5,
                    left: 0,

                    /// <-- fixed here
                    right: 0,

                    /// <-- fixed here
                    child: SizedBox(
                      width: double.infinity,
                      height: Responsive.isSmallScreen(context)
                          ? width / 3.1
                          : width / 3.1,
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: titles.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(
                                left: Responsive.isSmallScreen(context)
                                    ? width / 30
                                    : width / 30,
                                right: Responsive.isSmallScreen(context)
                                    ? width / 50
                                    : width / 50,
                                top: Responsive.isSmallScreen(context)
                                    ? width / 50
                                    : width / 50),
                            width: Responsive.isSmallScreen(context)
                                ? width / 3.1
                                : width / 3.1,
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffD3F0DA),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left:
                                          Responsive.isSmallScreen(context)
                                              ? width / 50
                                              : width / 50,
                                          top: 20,
                                          right:
                                          Responsive.isSmallScreen(context)
                                              ? width / 30
                                              : width / 30),
                                      alignment: Alignment.centerLeft,
                                      child: Image(
                                        image:
                                        AssetImage('image/adduserfaq.png'),
                                        height:
                                        Responsive.isSmallScreen(context)
                                            ? width / 15
                                            : width / 15,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.only(
                                          left:
                                          Responsive.isSmallScreen(context)
                                              ? width / 50
                                              : width / 50,
                                          top: Responsive.isSmallScreen(context)
                                              ? width / 50
                                              : width / 50),
                                      child: Text(
                                        'Questions about',
                                        style: TextStyle(
                                          color: Color(0xff4F555A)
                                              .withOpacity(0.5),
                                          fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 36
                                              : width / 36,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.only(
                                          left:
                                          Responsive.isSmallScreen(context)
                                              ? width / 50
                                              : width / 50),
                                      child: Text(
                                        'Getting Started',
                                        style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 34
                                              : width / 34,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 50
                            : width / 50,
                        right: Responsive.isSmallScreen(context)
                            ? width / 50
                            : width / 50,
                        top: Responsive.isSmallScreen(context)
                            ? width / 50
                            : width / 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(
                              left: Responsive.isSmallScreen(context)
                                  ? width / 50
                                  : width / 50,
                              top: Responsive.isSmallScreen(context)
                                  ? width / 50
                                  : width / 50),
                          child: Text(
                            'Top Questions',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 25
                                  : width / 25,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(
                              right: Responsive.isSmallScreen(context)
                                  ? width / 50
                                  : width / 50,
                              top: Responsive.isSmallScreen(context)
                                  ? width / 50
                                  : width / 50),
                          child: Text(
                            'View all',
                            style: TextStyle(
                              color: Color(0xff24B445),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 28
                                  : width / 28,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(

                    /// <-- fixed here
                    child: Container(
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: question.length,
                        itemBuilder: (BuildContext context, int index) {
                          bool isSelected = selectedIndices.contains(index);
                          return Container(

                            child: Card(
                                elevation: 3,
                                margin: EdgeInsets.only(
                                    left: Responsive.isSmallScreen(context)
                                        ? width / 30
                                        : width / 30,
                                    right: Responsive.isSmallScreen(context)
                                        ? width / 50
                                        : width / 50,
                                    top: Responsive.isSmallScreen(context)
                                        ? width / 50
                                        : width / 50),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                Container(
                                margin: EdgeInsets.only(
                                left:
                                    Responsive.isSmallScreen(context)
                                    ? width / 50
                                    : width / 50,
                                right:
                                Responsive.isSmallScreen(context)
                                    ? width / 50
                                    : width / 50),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                            Container(
                             width:  Responsive.isSmallScreen(context)
                                 ? width / 1.4
                                 : width / 1.5,
                            padding:EdgeInsets.only(top:20, bottom: 20),
                            alignment: Alignment.topLeft,
                            child:
                            RichText(

                              text: TextSpan(
                                  text: question[index],

                                  style: TextStyle(
                                  color: Color(0xff000000),
                              fontSize:
                              Responsive.isSmallScreen(
                                  context)
                                  ? width / 28
                                  : width / 28,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),

                          ),
                          ),


                          ),
                          Container(


                          child:IconButton(
                          color: Colors.green,
                          icon: imagechange[index]
                          ?
                          Container(
                          width: 80,
                          height:80,

                          child:
                          Image.asset(
                          "image/Minus.png",
                          color: Colors.green,
                          fit: BoxFit.contain,
                          height: Responsive.isSmallScreen(
                          context)
                          ? width / 20
                              : width / 20,
                          ),
                          )
                              : Image.asset(
                          "image/add.png",
                          fit: BoxFit.contain,
                          height: Responsive.isSmallScreen(
                          context)
                          ? width / 20
                              : width / 20,

                          ),
                          onPressed: () {
                          handleButtonPress;
                          setState(() {
                          toggleCheckboxDelete(index);
                          //toggle = !toggle;

                          });
                          }),
                          ),
                          ],
                          ),
                          ),
                          Visibility(

                          visible: isCheckedListDelete[index],
                          child: Container(
                          padding: EdgeInsets.only(left:Responsive.isSmallScreen(
                          context)
                          ? width / 30
                              : width / 30,bottom:Responsive.isSmallScreen(
                          context)
                          ? width / 30
                              : width / 30,
                          right:Responsive.isSmallScreen(
                          context)
                          ? width / 30
                              : width / 30,
                          ),
                          child: Text('Lorem ipsum dolor sit amet consectetur.'
                          ' Nulla neque non adipiscing ut quam nulla pulvinar sit mauris.'
                          ' Eu nisi arcu parturient elit enim.', style: TextStyle(
                          color: Color(0xff757575),
                          fontSize:
                          Responsive.isSmallScreen(
                          context)
                          ? width / 28
                              : width / 28,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          ),),
                          ),
                          ),
                          ],
                          )),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}
