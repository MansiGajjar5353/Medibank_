
import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class Item {
  String Test;
  String Value;
  String Unit;

  Item({required this.Test, required this.Value, required this.Unit});
}

List<Item> itemList = [
  Item(Test: "Uric Acid", Value: "5.4", Unit: "Mg/dl"),
  Item(Test: "Uric Acid", Value: "5.4", Unit: "Mg/dl"),
  Item(Test: "Uric Acid", Value: "5.4", Unit: "Mg/dl"),
  Item(Test: "Uric Acid", Value: "5.4", Unit: "Mg/dl"),
];

class ReportsOpen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ReportsOpen2State();
  }
}

class ReportsOpen2State extends State<ReportsOpen2> {
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
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xff24B445),
                          )),
                      margin: EdgeInsets.all(10),
                      height: 300,
                      child: Column(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 60, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Examination test",
                                  style: TextStyle(
                                    color: Color(0xff929292),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                Text(
                                  "Value",
                                  style: TextStyle(
                                    color: Color(0xff929292),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                Text(
                                  "Unit",
                                  style: TextStyle(
                                    color: Color(0xff929292),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 60, top: 10),
                            height: 1,
                            color: Color(0xffE4E8EE),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: itemList.length,
                              itemBuilder: (context, index) {
                                Item item = itemList[index];
                                return Container(
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Text(item.Test),
                                      // Text(item.Value),
                                      // Text(item.Unit),
                                      Padding(
                                          padding: EdgeInsets.only(top: 10)),
                                      Container(
                                        height: 40,
                                        width: 150,
                                        margin: EdgeInsets.only(top: 10),
                                        child: TextField(
                                          //    controller: _TestController,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Color(0xffF9F9F9),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Color(0xffE4E8EE)),
                                            ),
                                            hintText: item.Test,
                                            hintStyle: TextStyle(
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      //
                                      // Padding(padding: EdgeInsets.only(top: 10)),
                                      Container(
                                        height: 40,
                                        width: 54,
                                        margin: EdgeInsets.only(top: 10),
                                        child: TextField(
                                          //  controller: _ValueController,

                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Color(0xffF9F9F9),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Color(0xffE4E8EE))),
                                            hintText: item.Value,
                                            hintStyle: TextStyle(
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      // Padding(padding: EdgeInsets.only(top: 10)),

                                      Container(
                                        height: 40,
                                        width: 54,
                                        margin: EdgeInsets.only(top: 10),
                                        child: TextField(
                                          //    controller: _UnitController,

                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Color(0xffF9F9F9),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Color(0xffE4E8EE))),
                                            hintText: item.Unit,
                                            hintStyle: TextStyle(
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(top: 10)),

                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: InkWell(
                                          // onTap: (){},
                                          child: Image(
                                            image: AssetImage(
                                                "image/ClearIcon.png"),
                                            height: 30,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              itemList.removeAt(index);
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(
                                  bottom: 20, right: 10, left: 10),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff24B445),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      "Confirm",
                                      style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Container(
              child: Image(image: AssetImage("image/ReportsOpened.png")),
            ),
          ),
        ],
      ),
    );
  }
}
