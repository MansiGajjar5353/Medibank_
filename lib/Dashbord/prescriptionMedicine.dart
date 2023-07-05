import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/practice.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

import 'allergy.dart';

class Item {
  String name;
  String dose;
  String problem;
  Item({required this.name, required this.dose, required this.problem});
}

class prescriptionMedicine extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return prescriptionMedicineState();
  }
}
  class prescriptionMedicineState extends State<prescriptionMedicine>{

    Color imageColor = Color(0xff4F555A).withOpacity(0.5);
    Color buttonColor = Colors.black; // Initial color of the button
    bool isButtonPressed = false;


    void handleButtonPress() {
      setState(() {
        buttonColor = Colors.green; // Change the color to your desired value
        isButtonPressed = true;
      });

      Future.delayed(const Duration(milliseconds: 200), () {
        setState(() {
          buttonColor = Colors.green; // Change the color back to the original value
          isButtonPressed = false;
        });

        Navigator.push(context, MaterialPageRoute(builder: (context)=> allergy(),));

      });
    }

    int radioValue = 0;
    bool showTextfield = true;

    void handleRadioValueChanged(int? value){
      setState(() {
        radioValue = value! ;

        switch (radioValue){
          case 0:
            showTextfield = true;
            break;

          case 1:
            showTextfield = false;
            break;
        }

      });
    }

    int radioValue1 = 0;
    bool showTextfield1 = true;

    void handleRadioValueChanged1(int? value){
      setState(() {
        radioValue1 = value! ;

        switch (radioValue1){
          case 0:
            showTextfield1 = true;
            break;

          case 1:
            showTextfield1 = false;
            break;
        }

      });
    }


    List<Item> itemList = [];
    TextEditingController _nameController = TextEditingController();
    TextEditingController _doseController = TextEditingController();
    TextEditingController _problemController = TextEditingController();


    @override
    void dispose() {
      _nameController.dispose();
      _doseController.dispose();
      _problemController.dispose();
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
        title: Center(
          child: Container(padding: EdgeInsets.only(right: 30),
              child: Image(image: AssetImage("image/MedibankLOGO.png",),
                  width: Responsive.isSmallScreen(context)? width/2.3: width/4)),
        ),
        //                margin: EdgeInsets.only(left:0,top:10.0 ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left:0,top:10.0 ),
            // height: _mediaquery.size.height*0.13,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        margin:EdgeInsets.only(left:25),

                        child: Text("Medical ",style: new TextStyle( color: Colors.black,  fontSize: Responsive.isSmallScreen(context)? width/15 : width/30,
                            fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                      ),

                      Container(
                        margin:EdgeInsets.only(left:25),
                        //margin: EdgeInsets.only(left:30,),
                        child:Text("History ",style: new TextStyle(height:0.90,color: Colors.green, fontSize: Responsive.isSmallScreen(context)? width/15 : width/30, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                      ),

                      Container(
                        margin:EdgeInsets.only(left:25),
                        child: Text("Note: minim mollit non deserunt ullamco ",style:new TextStyle( color: Color(0xff929292), fontSize: Responsive.isSmallScreen(context)? width/46 : width/60, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                      ),

                      Container(
                        margin:EdgeInsets.only(left:25),
                        child: Text("est sit aliqua dolor do amet sint. ",style:new TextStyle( color: Color(0xff929292), fontSize: Responsive.isSmallScreen(context)? width/46 : width/60, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                      ),
                    ],
                  ), ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child:Column(
                    children: [

                      Container(
                        child: Image.asset('image/Doctor.png',height: _mediaquery.size.height*0.060
                        ),
                      ),



                      Container(
                        margin: EdgeInsets.only(top: _mediaquery.size.height*0.01),
                        child:RichText(
                          text: TextSpan(
                            text: 'category ',
                            style: TextStyle(
                              color: Color(0xff929292),
                              fontSize: Responsive.isSmallScreen(context)?width/35 : width/60,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '1/4',
                                style: TextStyle(
                                  color: Color(0xff24B445),
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left:0,top:40.0 ),
              //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
              child:RichText(
                text: TextSpan(
                  text: "Medical ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: Responsive.isSmallScreen(context)? width/16: width/30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Information',
                      style: TextStyle(
                        color: Color(0xff24B445),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',

                      ),
                    ),
                  ],
                ),
              ),
              // child:Text("We need to verify your Number?",style: new TextStyle(height:0.90,color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text("Are you taking any prescription medicine? (long term-more than 1 month)",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
              ),),
          ),

          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Radio<int>(
                    activeColor: Colors.green,
                    value:0 ,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChanged),

                 Text(
                  "Yes",
                  style: TextStyle(),
                ),

                 Radio<int>(
                    activeColor: Colors.green,
                    value: 1,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChanged),

                Text(
                  "No",
                  style: new TextStyle(),
                ),
              ],
            ),
          ),

          Visibility(
              visible: showTextfield,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(margin:EdgeInsets.only(left: 20,top: 20),
                      child: Text("what medication is being taken?",
                        style: TextStyle(color: Color(0xff4F555A).withOpacity(0.4),
                          fontSize:Responsive.isSmallScreen(context)? width/25 : width/50,fontWeight: FontWeight.w400, ),),
                    ),
                    Container(
                      margin:EdgeInsets.only(left: 20,top: 10),
                      child: Row(
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)? width/1.5 : width/2,
                            height: 55,
                            child: TextField(
                              controller: _nameController,
                              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                filled: true,
                                fillColor: Color(0xffF9F9F9),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(35),
                                  borderSide: BorderSide.none,),

                                hintText: "Name of medicine",
                                hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 50,
                            width: Responsive.isSmallScreen(context)? width/5 : width/7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Color(0xff24B445),
                          ),
                            child: Center(
                              child: InkWell(
                                onTap: (){

                                  setState(() {
                                    String name = _nameController.text;
                                    String dose = _doseController.text;
                                    String problem = _problemController.text;
                                    itemList.add(Item(name: name, dose: dose, problem: problem));
                                    _nameController.clear();
                                    _doseController.clear();
                                    _problemController.clear();
                                  });
                                //  Navigator.push(context, MaterialPageRoute(builder: (context)=> DynamicListView(),));
                                  },
                                child: Text(
                                  "ADD",
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(left: 20,top: 10),
                      child: Row(
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)? width/2.9 : width/2,
                            height: 55,
                            child: TextField(
                              controller: _problemController,
                              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                filled: true,
                                fillColor: Color(0xffF9F9F9),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(35),
                                  borderSide: BorderSide.none,),

                                hintText: "Problem",
                                hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            width: Responsive.isSmallScreen(context)? width/3.50 : width/2,
                            height: 55,
                            child: TextField(
                              controller: _doseController,
                              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                filled: true,
                                fillColor: Color(0xffF9F9F9),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(35),
                                  borderSide: BorderSide.none,),

                                hintText: "per day",
                                hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),

                      child:    Container(
                        margin: EdgeInsets.only(left: 10,top: 10, right: 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("No",
                              style: TextStyle(
                                color: Color(
                                  0xffA3A6A9
                                ),
                                fontSize: Responsive.isSmallScreen(context)? width/25 : width/50,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),),
                              Text("Medicine Name",
                                style: TextStyle(
                                  color: Color(
                                      0xffA3A6A9
                                  ),
                                  fontSize: Responsive.isSmallScreen(context)? width/25 : width/50,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                ),),
                              Text("Dose",
                                style: TextStyle(
                                  color: Color(
                                      0xffA3A6A9
                                  ),
                                  fontSize: Responsive.isSmallScreen(context)? width/25 : width/50,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                ),),
                              SizedBox(
                                width: 70,
                              )
                            ],
                            ),

                            Expanded(
                              child: ListView.builder(
                                itemCount: itemList.length,
                                itemBuilder: (context, index) {
                                  Item item = itemList[index];
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("${index + 01}",
                                        style: TextStyle(
                                          color: Color(
                                              0xffA3A6A9
                                          ),
                                          fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                       Text(item.name,
                                         style: TextStyle(
                                           color: Color(
                                               0xffA3A6A9
                                           ),
                                           fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                                           fontFamily: "Poppins",
                                           fontWeight: FontWeight.w400,
                                         ),

                                       ),
                                       Text(item.dose,
                                         style: TextStyle(
                                           color: Color(
                                               0xffA3A6A9
                                           ),
                                           fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                                           fontFamily: "Poppins",
                                           fontWeight: FontWeight.w400,
                                         ),

                                       ),
                                      IconButton(
                                        icon: Icon(Icons.clear), color: Color(0xffF7444E),
                                        onPressed: () {
                                          setState(() {
                                            itemList.removeAt(index);
                                          });
                                        },
                                      ),
                                    ],

                                  );
                                },
                              ),
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
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text("Are you taking any vitamins / homeopathic / herbal medicines / supplements ?",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
              ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                Radio<int>(
                    activeColor: Colors.green,
                    value:0 ,
                    groupValue: radioValue1,
                    onChanged: handleRadioValueChanged1),

                Text(
                  "Yes",
                  style: TextStyle(),
                ),

                Radio<int>(
                    activeColor: Colors.green,
                    value: 1,
                    groupValue: radioValue1,
                    onChanged: handleRadioValueChanged1),

                Text(
                  "No",
                  style: new TextStyle(),
                ),
              ],
            ),
          ),
          Visibility(
            visible: showTextfield1,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(margin:EdgeInsets.only(left: 20,top: 20),
                    child: Text("what medication is being taken?",
                      style: TextStyle(color: Color(0xff4F555A).withOpacity(0.4),
                        fontSize:Responsive.isSmallScreen(context)? width/25 : width/50,fontWeight: FontWeight.w400, ),),
                  ),


                  Container(
                    margin:EdgeInsets.only(left: 20,top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: Responsive.isSmallScreen(context)? width/1.5 : width/2,
                          height: 55,
                          child: TextField(
                          //  controller: _nameController,
                            decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              filled: true,
                              fillColor: Color(0xffF9F9F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),
                                borderSide: BorderSide.none,),

                              hintText: "Name of medicine",
                              hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Container(
                          height: 50,
                          width: Responsive.isSmallScreen(context)? width/5 : width/7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Color(0xff24B445),
                          ),
                          child: Center(
                            child: InkWell(
                              onTap: (){

                                //  Navigator.push(context, MaterialPageRoute(builder: (context)=> DynamicListView(),));
                              },
                              child: Text(
                                "ADD",
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 20,top: 10, right: 20),
                    child: Row(
                      children: [
                        Container(
                         width: Responsive.isSmallScreen(context)? width/1.15 : width/2,
                          height: 55,
                          child: TextField(
                        //    controller: _problemController,
                            decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              filled: true,
                              fillColor: Color(0xffF9F9F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),
                                borderSide: BorderSide.none,),

                              hintText: "Problem",
                              hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

                            ),
                          ),
                        ),

                      ],
                    ),
                  ),



                ],
              ),
            ),
          ),


          Padding(padding: EdgeInsets.only(top: 30)),
          Center(
            child: Container(
              height: _mediaquery.size.height*0.070,
              width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
              margin: EdgeInsets.only(top: _mediaquery.size.height*0.02),
              child: ElevatedButton(
                onPressed:handleButtonPress,
                child: Image.asset('image/AerrowRight.png',
                    color: isButtonPressed? Colors.black:imageColor,
                    height: _mediaquery.size.height*0.04) ,
                style: ElevatedButton.styleFrom(
                  backgroundColor:isButtonPressed ? buttonColor : Color(0xffF9F9F9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)
                  ),
                ),
              ),
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 20)),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Skip to ",
                  style: TextStyle(
                    color: Color(0xffACADAC),
                    fontSize: Responsive.isSmallScreen(context)?width/30 : width/45,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));
                    },
                  child: Text("Dashboard",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: Responsive.isSmallScreen(context)?width/30 : width/45,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
  }






