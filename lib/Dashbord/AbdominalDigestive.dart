import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/RespiratoryLungsProblem.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class AbdominalDigestive extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AbdominalDigestiveState();

  }

}

class AbdominalDigestiveState extends State<AbdominalDigestive>{
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
      Navigator.push(context,MaterialPageRoute(builder: (context)=>RespiratoryLungsProblem(),));
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
  // height: _mediaquery.size.height*0.13,
    margin: EdgeInsets.only(left:0,top:10.0 ),
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

              child: Text("Abdominal/",style: new TextStyle( color: Colors.black,
                  fontSize: Responsive.isSmallScreen(context)? width/20 : width/30,
                  fontWeight: FontWeight.w400,fontFamily: 'Poppins'),),
            ),

            Container(
              margin: EdgeInsets.only(left:25 ),
              //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
              child:RichText(
                text: TextSpan(
                  text: "Digestive ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: Responsive.isSmallScreen(context)? width/17: width/30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Problem',
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
              child: Image.asset('image/diarrhea.png',height: _mediaquery.size.height*0.060
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
        child: Text("Do you have stomach pain?",
          style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
            fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
            fontFamily: "Poppins",
          ),),
      ),

      ButtonGroup2(),


      Container(
        margin: EdgeInsets.only(left: 20, top:20, right: 20),
        child: Text("Do you have nausea or vomiting?",
          style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
            fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
            fontFamily: "Poppins",
          ),),
      ),

       ButtonGroup3(),



      Container(
        margin: EdgeInsets.only(left: 20, top:20, right: 20),
        child: Text("Do you have bloating, gas or indigestion?",
          style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
            fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
            fontFamily: "Poppins",
          ),),
      ),

      ButtonGroup4(),


      Container(
        margin: EdgeInsets.only(left: 20, top:20, right: 20),
        child: Text("Do you have acidity?",
          style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
            fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
            fontFamily: "Poppins",
          ),),
      ),

      ButtonGroup5(),


      Container(
        margin: EdgeInsets.only(left: 20, top:20, right: 20),
        child: Text("Do you have mouth ulcer?",
          style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
            fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
            fontFamily: "Poppins",
          ),),
      ),

      ButtonGroup6(),


      Container(
        margin: EdgeInsets.only(left: 20, top:20, right: 20),
        child: Text("Do you have jaundice?",
          style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
            fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
            fontFamily: "Poppins",
          ),),
      ),

      ButtonGroup7(),


      Container(
        margin: EdgeInsets.only(left: 20, top:20, right: 20),
        child: Text("Do you have liver disease?",
          style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
            fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
            fontFamily: "Poppins",
          ),),
      ),

      ButtonGroup8(),

      Container(
        margin: EdgeInsets.only(left: 20, top:20, right: 20),
        child: Text("Do you have change in bowl habits/ stools frequency?",
          style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
            fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
            fontFamily: "Poppins",
          ),),
      ),

      ButtonGroup9(),



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





enum ButtonState { Button1, Button2, Button3, }

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
      margin: EdgeInsets.only(left: 20, right: 20, top: 5, ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.5 : width/5,
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
                height: 15,

               // margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SadImage.png")),
                    Text('Yes', style: TextStyle(color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),

          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button2);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button2 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/Noimage.png"),),
                    Text('No', style: TextStyle(color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),




          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/2.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button3);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button3 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
              //  margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SomeImage.png"), height: 20,),
                    Text('Sometimes', style: TextStyle(color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
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



class ButtonGroup3 extends StatefulWidget {
  @override
  _ButtonGroup3State createState() => _ButtonGroup3State();
}

class _ButtonGroup3State extends State<ButtonGroup3>  {
  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    var _mediaquery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 5, ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.5 : width/5,
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
                height: 15,

                // margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SadImage.png")),
                    Text('Yes', style: TextStyle(color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),

          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button2);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button2 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/Noimage.png"),),
                    Text('No', style: TextStyle(color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),




          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/2.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button3);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button3 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //  margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SomeImage.png"), height: 20,),
                    Text('Sometimes', style: TextStyle(color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
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




class ButtonGroup4 extends StatefulWidget {
  @override
  _ButtonGroup4State createState() => _ButtonGroup4State();
}

class _ButtonGroup4State extends State<ButtonGroup4>  {
  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    var _mediaquery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 5, ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.5 : width/5,
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
                height: 15,

                // margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SadImage.png")),
                    Text('Yes', style: TextStyle(color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),

          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button2);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button2 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/Noimage.png"),),
                    Text('No', style: TextStyle(color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),




          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/2.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button3);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button3 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //  margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SomeImage.png"), height: 20,),
                    Text('Sometimes', style: TextStyle(color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
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




class ButtonGroup5 extends StatefulWidget {
  @override
  _ButtonGroup5State createState() => _ButtonGroup5State();
}

class _ButtonGroup5State extends State<ButtonGroup5>  {
  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    var _mediaquery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 5, ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.5 : width/5,
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
                height: 15,

                // margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SadImage.png")),
                    Text('Yes', style: TextStyle(color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),

          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button2);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button2 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/Noimage.png"),),
                    Text('No', style: TextStyle(color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),




          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/2.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button3);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button3 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //  margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SomeImage.png"), height: 20,),
                    Text('Sometimes', style: TextStyle(color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
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





class ButtonGroup6 extends StatefulWidget {
  @override
  _ButtonGroup6State createState() => _ButtonGroup6State();
}

class _ButtonGroup6State extends State<ButtonGroup6>  {
  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    var _mediaquery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 5, ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.5 : width/5,
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
                height: 15,

                // margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SadImage.png")),
                    Text('Yes', style: TextStyle(color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),

          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button2);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button2 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/Noimage.png"),),
                    Text('No', style: TextStyle(color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),




          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/2.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button3);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button3 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //  margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SomeImage.png"), height: 20,),
                    Text('Sometimes', style: TextStyle(color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
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





class ButtonGroup7 extends StatefulWidget {
  @override
  _ButtonGroup7State createState() => _ButtonGroup7State();
}

class _ButtonGroup7State extends State<ButtonGroup7>  {
  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    var _mediaquery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 5, ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.5 : width/5,
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
                height: 15,

                // margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SadImage.png")),
                    Text('Yes', style: TextStyle(color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),

          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button2);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button2 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/Noimage.png"),),
                    Text('No', style: TextStyle(color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),




          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/2.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button3);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button3 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //  margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SomeImage.png"), height: 20,),
                    Text('Sometimes', style: TextStyle(color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
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





class ButtonGroup8 extends StatefulWidget {
  @override
  _ButtonGroup8State createState() => _ButtonGroup8State();
}

class _ButtonGroup8State extends State<ButtonGroup8>  {
  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    var _mediaquery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 5, ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.5 : width/5,
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
                height: 15,

                // margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SadImage.png")),
                    Text('Yes', style: TextStyle(color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),

          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button2);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button2 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/Noimage.png"),),
                    Text('No', style: TextStyle(color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),




          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/2.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button3);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button3 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //  margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SomeImage.png"), height: 20,),
                    Text('Sometimes', style: TextStyle(color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
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



class ButtonGroup9 extends StatefulWidget {
  @override
  _ButtonGroup9State createState() => _ButtonGroup9State();
}

class _ButtonGroup9State extends State<ButtonGroup9>  {
  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    var _mediaquery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 5, ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.5 : width/5,
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
                height: 15,

                // margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SadImage.png")),
                    Text('Yes', style: TextStyle(color: selectedButton== ButtonState.Button1 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),

          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/4.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button2);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button2 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/Noimage.png"),),
                    Text('No', style: TextStyle(color: selectedButton== ButtonState.Button2 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
                ),
              ),
            ),
          ),




          Container(
            height: 30,
            width: Responsive.isSmallScreen(context)? width/2.7 : width/5,
            child: ElevatedButton(

              onPressed: () {
                onButtonPressed(ButtonState.Button3);
              },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (18.0), ),
                elevation: 0,

                primary:selectedButton== ButtonState.Button3 ? Colors.white:  Color(0xffF7F7F7),

                side: BorderSide(width:1,  color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Colors.transparent),
              ),

              child: Container(
                height: 15,
                //  margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("image/SomeImage.png"), height: 20,),
                    Text('Sometimes', style: TextStyle(color: selectedButton== ButtonState.Button3 ? Color(0xff24B445): Color(0xff4F555A),
                      fontSize: Responsive.isSmallScreen(context)? width/30 : width/60,),
                    ),

                  ],
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





