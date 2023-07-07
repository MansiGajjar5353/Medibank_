import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/DermatologySkin.dart';
import 'package:project_signup_page/Dashbord/Questionnaires.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';


class HEAD extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  return HEADState();
  }

}

class HEADState extends State<HEAD>{
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
      Navigator.push(context,MaterialPageRoute(builder: (context)=>DermatologySkin(),));
      // Perform navigation after the delay

    });
  }

  int radioValue = 1;
  int radioValue1 = 1;
  int radioValue2 = 1;
  int radioValue3 = 1;
  int radioValue4 = 1;
  int radioValue5 = 1;
  int radioValue6 = 1;
  int radioValue7 = 1;



  bool showTextfield = false;
  bool showTextfield1 = false;
  bool showTextfield2 = false;
  bool showTextfield3 = false;
  bool showTextfield4 = false;
  bool showTextfield6 = false;
  bool showTextfield7 = false;



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

        case 2:
          showTextfield1 = false;

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
          showTextfield3 = true;

          break;

        case 1:
          showTextfield3 = false;

          break;

        case 2:
          showTextfield3 = false;

          break;
      }

    });
  }

  void handleRadioValueChanged4(int? value){
    setState(() {
      radioValue4 = value! ;

      switch (radioValue4){
        case 0: showTextfield4 = true;
          break;

        case 1: showTextfield4 = false;
          break;

        case 2:showTextfield4 = false;
          break;
      }

    });
  }

  void handleRadioValueChanged5(int? value){
    setState(() {
      radioValue5 = value! ;

      switch (radioValue5){
        case 0:
          break;

        case 1:
          break;

        case 2:
          break;
      }

    });
  }

  void handleRadioValueChanged6(int? value){
    setState(() {
      radioValue6 = value! ;

      switch (radioValue6){
        case 0:
          showTextfield6 = true;
          break;

        case 1:
          showTextfield6 = false;

          break;

        case 2:
          showTextfield6 = false;

          break;
      }

    });
  }

  void handleRadioValueChanged7(int? value){
    setState(() {
      radioValue7 = value! ;

      switch (radioValue7){
        case 0:
          showTextfield7 = true;
          break;

        case 1:
          showTextfield7 = false;

          break;

        case 2:
          showTextfield7 = false;

          break;
      }

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
     backgroundColor: Color(0xffffffff),
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
     ),        title:



   Align(
     alignment: Alignment.center,
     child: Image(image: AssetImage("image/MedibankLOGO.png",),
         width: Responsive.isSmallScreen(context)? width/2.3: width/4),
   ),
     actions: [
       Padding(padding: EdgeInsets.only(bottom: 10),),

       Align(alignment: Alignment.bottomRight,

         child: Container(
           margin: EdgeInsets.only(bottom: Responsive.isSmallScreen(context)? width/80: width/100, right: 10),
           child: InkWell(
             onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Questionnaires(),));},
             child: Image(image: AssetImage("image/DashboardImage.png"),
               height:  Responsive.isSmallScreen(context)? width/15: width/30,
             ),
           ),
         ),
       ),
     ],

   ),
   body: ListView(
children: [
  Container(
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

                child: Text("Head, Eyes, Ears, Nose",style: new TextStyle( color: Colors.black,  fontSize: Responsive.isSmallScreen(context)? width/20 : width/30,
                    fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
              ),

              Container(
                margin:EdgeInsets.only(left:25),
                //margin: EdgeInsets.only(left:30,),
                child:Text("& Throat",style: new TextStyle(height:0.90,color: Colors.black, fontSize: Responsive.isSmallScreen(context)? width/20 : width/30, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
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
                child: Image.asset('image/SoreThroat.png',height: _mediaquery.size.height*0.060
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
                        text: '1/1',
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
    margin: EdgeInsets.only(left: 20, top:40),
    child: Text("Do you suffer with headache or migraine?",
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
                groupValue: radioValue,
                onChanged: handleRadioValueChanged),
            Text(
              "Yes",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
              ),
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
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),

        Row(
          children: [
            Radio<int>(
                activeColor: Colors.green,
                value: 2,
                groupValue: radioValue,
                onChanged: handleRadioValueChanged),

            Text(
              "Sometimes",
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),
      ],
    ),
  ),
  Visibility(
    visible: showTextfield,
    child: Container(
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

          hintText: "Add details",
          hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

        ),
      ),
    ),

  ),

  Container(
    margin: EdgeInsets.only(left: 20, top:40, right: 20),
    child: Text("Do you suffer with eye or vision problem?",
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
                groupValue: radioValue1,
                onChanged: handleRadioValueChanged1),
            Text(
              "Yes",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),



        Row(
          children: [
            Radio<int>(
                activeColor: Colors.green,
                value: 1,
                groupValue: radioValue1,
                onChanged: handleRadioValueChanged1),

            Text(
              "No",
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),

        Row(
          children: [
            Radio<int>(
                activeColor: Colors.green,
                value: 2,
                groupValue: radioValue1,
                onChanged: handleRadioValueChanged1),

            Text(
              "Sometimes",
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),
      ],
    ),
  ),
  Visibility(
    visible: showTextfield1,
    child: ButtonGroup(),

  ),


  Container(
    margin: EdgeInsets.only(left: 20, top:40, right: 20),
    child: Text("Do you have nose congestion or sinus trouble?",
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
                groupValue: radioValue2,
                onChanged: handleRadioValueChanged2),
            Text(
              "Yes",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
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
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),

        Row(
          children: [
            Radio<int>(
                activeColor: Colors.green,
                value: 2,
                groupValue: radioValue2,
                onChanged: handleRadioValueChanged2),

            Text(
              "Sometimes",
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),
      ],
    ),
  ),
  Visibility(
    visible: showTextfield2,
    child: Container(
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

          hintText: "Add details",
          hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

        ),
      ),
    ),

  ),

  Container(
    margin: EdgeInsets.only(left: 20, top:40, right: 20),
    child: Text("Do you have ear or hearing problem?",
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
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
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
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
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
              "Sometimes",
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),
      ],
    ),
  ),
  Visibility(
    visible: showTextfield3,
    child: Container(
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

          hintText: "Add details",
          hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

        ),
      ),
    ),

  ),


  Container(
    margin: EdgeInsets.only(left: 20, top:40, right: 20),
    child: Text("Do you have difficulty swallowing?",
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
                groupValue: radioValue4,
                onChanged: handleRadioValueChanged4),
            Text(
              "Yes",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),



        Row(
          children: [
            Radio<int>(
                activeColor: Colors.green,
                value: 1,
                groupValue: radioValue4,
                onChanged: handleRadioValueChanged4),

            Text(
              "No",
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),

        Row(
          children: [
            Radio<int>(
                activeColor: Colors.green,
                value: 2,
                groupValue: radioValue4,
                onChanged: handleRadioValueChanged4),

            Text(
              "Sometimes",
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),
      ],
    ),
  ),
  Visibility(
    visible: showTextfield4,
    child: Container(
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

          hintText: "Add details",
          hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

        ),
      ),
    ),

  ),

  Container(
    margin: EdgeInsets.only(left: 20, top:40, right: 20),
    child: Text("Do you have dental problems?",
      style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
        fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
        fontFamily: "Poppins",
      ),),
  ),

    ButtonGroup2(),


  // Container(
  //   margin: EdgeInsets.only(left: 10, right: 40),
  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children:<Widget> [
  //       Row(
  //         children: [
  //           Radio<int>(
  //               activeColor: Colors.green,
  //               value:0 ,
  //               groupValue: radioValue5,
  //               onChanged: handleRadioValueChanged5),
  //           Text(
  //             "Yes",
  //             style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
  //           ),
  //         ],
  //       ),
  //
  //
  //
  //       Row(
  //         children: [
  //           Radio<int>(
  //               activeColor: Colors.green,
  //               value: 1,
  //               groupValue: radioValue5,
  //               onChanged: handleRadioValueChanged5),
  //
  //           Text(
  //             "No",
  //             style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
  //           ),
  //         ],
  //       ),
  //
  //       Row(
  //         children: [
  //           Radio<int>(
  //               activeColor: Colors.green,
  //               value: 2,
  //               groupValue: radioValue5,
  //               onChanged: handleRadioValueChanged5),
  //
  //           Text(
  //             "Sometimes",
  //             style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
  //           ),
  //         ],
  //       ),
  //     ],
  //   ),
  // ),


  Container(
    margin: EdgeInsets.only(left: 20, top:40, right: 20),
    child: Text("Do you have jaw/joint (TMJ) Problems?",
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
                groupValue: radioValue6,
                onChanged: handleRadioValueChanged6),
            Text(
              "Yes",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),



        Row(
          children: [
            Radio<int>(
                activeColor: Colors.green,
                value: 1,
                groupValue: radioValue6,
                onChanged: handleRadioValueChanged6),

            Text(
              "No",
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),

        Row(
          children: [
            Radio<int>(
                activeColor: Colors.green,
                value: 2,
                groupValue: radioValue6,
                onChanged: handleRadioValueChanged6),

            Text(
              "Sometimes",
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),
      ],
    ),
  ),
  Visibility(
    visible: showTextfield6,
    child: Container(
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

          hintText: "Add details",
          hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

        ),
      ),
    ),

  ),

  Container(
    margin: EdgeInsets.only(left: 20, top:40, right: 20),
    child: Text("Do you have sore throat?",
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
                groupValue: radioValue7,
                onChanged: handleRadioValueChanged7),
            Text(
              "Yes",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),



        Row(
          children: [
            Radio<int>(
                activeColor: Colors.green,
                value: 1,
                groupValue: radioValue7,
                onChanged: handleRadioValueChanged7),

            Text(
              "No",
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),

        Row(
          children: [
            Radio<int>(
                activeColor: Colors.green,
                value: 2,
                groupValue: radioValue7,
                onChanged: handleRadioValueChanged7),

            Text(
              "Sometimes",
              style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,),
            ),
          ],
        ),
      ],
    ),
  ),
  Visibility(
    visible: showTextfield7,
    child: Container(
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

          hintText: "Add details",
          hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

        ),
      ),
    ),

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
],
   ),

 );


  }

}



enum ButtonState { Button1, Button2, Button3 }

class ButtonGroup extends StatefulWidget {
  @override
  _ButtonGroupState createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    var _mediaquery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20, ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: Responsive.isSmallScreen(context)? width/1.2 : width/3,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button1);
              },

              style: ElevatedButton.styleFrom(
                shape:
                  RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                primary: selectedButton== ButtonState.Button1 ? Color(0xffADE3BA): Color(0xffF9F9F9),
               elevation: 0
               // side: BorderSide(width:1,  color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(

                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  children: [
                    Text('Eyeglasses', style: TextStyle(color:selectedButton== ButtonState.Button1 ? Color(0xff4F555A): Color(0xff4F555A).withOpacity(0.5) ),
                    ),

                  ],
                ),
              ),
            ),
          ),

          Container(
            width: Responsive.isSmallScreen(context)? width/1.2 : width/3,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button2);
              },

              style: ElevatedButton.styleFrom(
                  shape:
                  RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                  primary: selectedButton== ButtonState.Button2 ? Color(0xffADE3BA): Color(0xffF9F9F9),
                  elevation: 0
                // side: BorderSide(width:1,  color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Colors.transparent),
              ),
              child: Container(

                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  children: [
                    Text('contact lenses', style: TextStyle(color:selectedButton== ButtonState.Button2 ? Color(0xff4F555A): Color(0xff4F555A).withOpacity(0.5)),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Container(
            width: Responsive.isSmallScreen(context)? width/1.2 : width/3,

            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button3);
              },

              style: ElevatedButton.styleFrom(
                  shape:
                  RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                  primary: selectedButton== ButtonState.Button3 ? Color(0xffADE3BA): Color(0xffF9F9F9),
                  elevation: 0
                // side: BorderSide(width:1,  color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(

                margin: EdgeInsets.only(top: 10, bottom: 10),
                child:
                    Text('Add details', style: TextStyle(color:selectedButton== ButtonState.Button3 ? Color(0xff4F555A): Color(0xff4F555A).withOpacity(0.5)),
                    ),


              ),
            ),
          ),
        ],
      ),
    );
  }

  void onButtonPressed(ButtonState buttonState) {
    setState(() {
      selectedButton = buttonState;
    });
  }
}








enum ButtonState2 { Button1, Button2 }

class ButtonGroup2 extends StatefulWidget {
  @override
  _ButtonGroup2State createState() => _ButtonGroup2State();
}

class _ButtonGroup2State extends State<ButtonGroup2> {
  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    var _mediaquery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20, ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: Responsive.isSmallScreen(context)? width/2.5 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button1);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                primary: selectedButton== ButtonState.Button1 ? Colors.white:  Color(0xffF7F7F7),
                  elevation: 0,
                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(

                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  children: [
                    Text('Tooth', style: TextStyle(color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Color(0xff4F555A)),
                    ),

                  ],
                ),
              ),
            ),
          ),

          Container(
            width: Responsive.isSmallScreen(context)? width/2.5 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button2);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),


                primary:selectedButton== ButtonState.Button2 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(

                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  children: [
                    Text('Gums', style: TextStyle(color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Color(0xff4F555A)),
                    ),

                  ],
                ),
              ),
            ),
          ),



          // ElevatedButton(
          //   onPressed: () {
          //     onButtonPressed(ButtonState.Button2);
          //   },
          //   style: ElevatedButton.styleFrom(
          //     primary: selectedButton == ButtonState.Button2
          //         ? Colors.blue
          //         : Colors.grey,
          //   ),
          //   child: Text('Button 2'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     onButtonPressed(ButtonState.Button3);
          //   },
          //   style: ElevatedButton.styleFrom(
          //     primary: selectedButton == ButtonState.Button3
          //         ? Colors.blue
          //         : Colors.grey,
          //   ),
          //   child: Text('Button 3'),
          // ),
        ],
      ),
    );
  }

  void onButtonPressed(ButtonState buttonState) {
    setState(() {
      selectedButton = buttonState;
    });
  }
}