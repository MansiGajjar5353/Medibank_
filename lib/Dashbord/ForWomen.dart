import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/ForBreasts.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';


class ForWomen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
return ForWomenState();

  }


}

class ForWomenState extends State<ForWomen>{
  List<bool> _isSelected = [false, false, false, false, false, false, false, false]; // Track the selection of each button
  bool isselected = false;

  int radioValue = 1;
  int radioValue2 = 1;
  int radioValue3 = 1;


  bool showTextfield = false;
  bool showTextfield2 = false;

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

        case 2:
          showTextfield = false;
          break;
      }

    });
  }
  void handleRadioValueChanged2(int? value){
    setState(() {
      radioValue2 = value! ;

      switch (radioValue2){
        case 0:
          showTextfield2 = true;

          break;

        case 1:
          showTextfield2 = false;

          break;

        case 2:
          showTextfield2 = false;

          break;
      }

    });
  }
  void handleRadioValueChanged3(int? value){
    setState(() {
      radioValue3 = value! ;

      switch (radioValue3){
        case 0:


          break;

        case 1:


          break;

        case 2:


          break;
      }

    });
  }


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
     Navigator.push(context,MaterialPageRoute(builder: (context)=>ForBreasts(),));
      // Perform navigation after the delay

    });
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
return Scaffold(
  appBar: AppBar(
    toolbarHeight: Responsive.isSmallScreen(context)? width/10: width/10,

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
              margin: EdgeInsets.only(left:25 ),
              //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
              child:RichText(
                text: TextSpan(
                  text: "For ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: Responsive.isSmallScreen(context)? width/17: width/30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Women',
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
              child: Image.asset('image/woman.png',height: _mediaquery.size.height*0.060
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
                      text: '1/2',
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

      Container(
        margin: EdgeInsets.only(left: 20, top:40, right: 20),
        child: Text("Have you started with Menstrual periods?",
          style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
            fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
            fontFamily: "Poppins",
          ),),
      ),
      Container(
        margin: EdgeInsets.only(left: 10, right: 40),
        child: Row(

          children:<Widget> [
            Row(
              children: [
                Radio<int>(
                    activeColor: Colors.green,
                    value:0 ,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChanged),
                Text(
                  "Yes",
                  style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                ),
              ],
            ),



            Row(
              children: [
                Radio<int>(
                    activeColor: Colors.green,
                    value: 1,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChanged),

                Text(
                  "No",
                  style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                ),
              ],
            ),


          ],
        ),
      ),
      Visibility(
        visible: showTextfield,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top:10, right: 20),
              child: Text("At what age did your menstrual periods begin?*",
                style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                  fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                  fontFamily: "Poppins",
                ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
              height: 50,
              child: TextField(
                //    controller: _problemController,
                decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  filled: true,
                  fillColor: Color(0xffF9F9F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,),

                  hintText: "Age",
                  hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 13,fontWeight: FontWeight.w400),

                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, top:10, right: 20),
              child: Text("Number of pregnancies*",
                style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                  fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                  fontFamily: "Poppins",
                ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
              height: 50,
              child: TextField(
                //    controller: _problemController,
                decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  filled: true,
                  fillColor: Color(0xffF9F9F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,),

                  hintText: "number",
                  hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 13,fontWeight: FontWeight.w400),

                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, top:10, right: 20),
              child: Text("Number of live births*",
                style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                  fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                  fontFamily: "Poppins",
                ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
              height: 50,
              child: TextField(
                //    controller: _problemController,
                decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  filled: true,
                  fillColor: Color(0xffF9F9F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,),

                  hintText: "number",
                  hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 13,fontWeight: FontWeight.w400),

                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, top:10, right: 20),
              child: Text("Miscarriges",
                style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                  fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                  fontFamily: "Poppins",
                ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
              height: 50,
              child: TextField(
                //    controller: _problemController,
                decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  filled: true,
                  fillColor: Color(0xffF9F9F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,),

                  hintText: "number",
                  hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 13,fontWeight: FontWeight.w400),

                ),
              ),
            ),
          ],
        ),


      ),

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top:10, right: 20),
            child: Text("Have you reached Menopause?",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
              ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 40),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Row(
                  children: [
                    Radio<int>(
                        activeColor: Colors.green,
                        value:0 ,
                        groupValue: radioValue2,
                        onChanged: handleRadioValueChanged2),
                    Text(
                      "Yes",
                      style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ],
                ),



                Row(
                  children: [
                    Radio<int>(
                        activeColor: Colors.green,
                        value: 1,
                        groupValue: radioValue2,
                        onChanged: handleRadioValueChanged2),

                    Text(
                      "No",
                      style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ],
                ),


              ],
            ),
          ),
          Visibility(
            visible: showTextfield2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top:10, right: 20),
                  child: Text("At What age periods is stopped?",
                    style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                      fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                      fontFamily: "Poppins",
                    ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
                  height: 50,
                  child: TextField(
                    //    controller: _problemController,
                    decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,),

                      hintText: "number",
                      hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 13,fontWeight: FontWeight.w400),

                    ),
                  ),
                ),
              ],
            ),

          ),
        ],
      ),


      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top:20, right: 20),
            child: Text("How often they occur?",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
              ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
            height: 50,
            child: TextField(
              //    controller: _problemController,
              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                filled: true,
                fillColor: Color(0xffF9F9F9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide.none,),

                hintText: "",
                hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20, top:10, right: 20),
            child: Text("How often they occur?",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
              ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
            height: 50,
            child: TextField(
              //    controller: _problemController,
              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                filled: true,
                fillColor: Color(0xffF9F9F9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide.none,),

                hintText: "",
                hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20, top:10, right: 20),
            child: Text("How many days do your periods last?",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
              ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
            height: 50,
            child: TextField(
              //    controller: _problemController,
              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                filled: true,
                fillColor: Color(0xffF9F9F9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide.none,),

                hintText: "",
                hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20, top:10, right: 20),
            child: Text("When did your last period begin?",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
              ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
            height: 50,
            child: TextField(
              //    controller: _problemController,
              decoration: InputDecoration(  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                filled: true,
                fillColor: Color(0xffF9F9F9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide.none,),

                hintText: "",
                hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20, top:10, right: 20),
            child: Text("Have you ever taken birth control pills?",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
              ),),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Row(
                  children: [
                    Radio<int>(
                        activeColor: Colors.green,
                        value:0 ,
                        groupValue: radioValue3,
                        onChanged: handleRadioValueChanged3),
                    Text(
                      "Yes",
                      style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ],
                ),



                Row(
                  children: [
                    Radio<int>(
                        activeColor: Colors.green,
                        value: 1,
                        groupValue: radioValue3,
                        onChanged: handleRadioValueChanged3),

                    Text(
                      "No",
                      style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Radio<int>(
                        activeColor: Colors.green,
                        value: 2,
                        groupValue: radioValue3,
                        onChanged: handleRadioValueChanged3),

                    Text(
                      "Not Sure",
                      style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ],
                ),
              ],
            ),
          ),



        ],
      ),


      Padding(padding: EdgeInsets.only(top: 20)),
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
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));},
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
      Padding(padding: EdgeInsets.only(top: 20)),
    ]
  ),
);
  }

}