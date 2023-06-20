import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/Height.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';


class LifeStyle extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LifeStyleState();
  }

}

class LifeStyleState extends State<LifeStyle>{
  Color imageColor = Color(0xff4F555A).withOpacity(0.5);
  Color buttonColor = Colors.black; // Initial color of the button
  bool isButtonPressed = false;
 // bool Showtextfield = false;

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
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Height(),));
      // Perform navigation after the delay

    });
  }












  int radioValue = 0;
  int radioValue1 = 0;
  int radioValue2 = 0;
  int radioValue3 = 0;
  int radioValue4 = 0;


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
          break;

        case 1:
          break;

        case 2:
          break;
      }

    });
  }

  void handleRadioValueChanged2(int? value){
    setState(() {
      radioValue2 = value! ;

      switch (radioValue2){
        case 0:
          break;

        case 1:
          break;

        case 2:
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

  void handleRadioValueChanged4(int? value){
    setState(() {
      radioValue4 = value! ;

      switch (radioValue4){
        case 0:
          break;

        case 1:
          break;

        case 2:
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
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
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
                  margin: EdgeInsets.only(left: 25),
                  child:RichText(
                    text: TextSpan(
                      text: "Life",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: Responsive.isSmallScreen(context)? width/16: width/30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'style',
                          style: TextStyle(
                            color: Color(0xff24B445),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',

                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Container(
                //   margin:EdgeInsets.only(left:25),
                //   //margin: EdgeInsets.only(left:30,),
                //   child:Text("Surgeries",style: new TextStyle(height:0.90,color: Colors.green, fontSize: Responsive.isSmallScreen(context)? width/18 : width/30, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                // ),

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
                  child: Image.asset('image/LifeStyle.png',height: _mediaquery.size.height*0.050
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



          Container(
            margin: EdgeInsets.only(left: 20, top:40),
            child: Text("Have you ever smoked cigarettes?",
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

                Row(
                  children: [
                    Radio<int>(
                        activeColor: Colors.green,
                        value: 2,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged),

                    Text(
                      "Sometimes",
                      style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Visibility(
            visible: showTextfield,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top:20),
                child: Text("how many years have you smoked?",
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

                    hintText: "smoking years",
                    hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 20, top:20),
                child: Text("if you have quit what year did you quit?",
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

                    hintText: "quitting year",
                    hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), fontSize: 16,fontWeight: FontWeight.w400),

                  ),
                ),
              ),

            ],
          ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20, top:40, right: 20),
            child: Text("Have you used tobacoo in other forms (pipe, cigar, chew)",
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
                      style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
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
                      style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
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
                      style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ],
                ),
              ],
            ),
          ),


          Container(
            margin: EdgeInsets.only(left: 20, top:40, right: 20),
            child: Text("Did you drink alcoholic berverages?",
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

                Row(
                  children: [
                    Radio<int>(
                        activeColor: Colors.green,
                        value: 2,
                        groupValue: radioValue2,
                        onChanged: handleRadioValueChanged2),

                    Text(
                      "Sometimes",
                      style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ],
                ),
              ],
            ),
          ),


          Container(
            margin: EdgeInsets.only(left: 20, top:40, right: 20),
            child: Text("Do you drink coffee or tea or aerated water?",
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
                      "Sometimes",
                      style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ],
                ),
              ],
            ),
          ),


          Container(
            margin: EdgeInsets.only(left: 20, top:40, right: 20),
            child: Text("Have you or your family recently experienced any life changes or unsual psychological stress?",
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
                      style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
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
                      style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
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
                      style: new TextStyle(color: Color(0xff4F555A).withOpacity(0.5)),
                    ),
                  ],
                ),
              ],
            ),
          ),



          Center(
            child: Container(
              height: _mediaquery.size.height*0.070,
              width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
              margin: EdgeInsets.only(top: _mediaquery.size.height*0.1),
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


    ]
      ),
    );
  }
}





