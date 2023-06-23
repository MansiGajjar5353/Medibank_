import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/ContinueToAdvanceHistory.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class FamilyMedicalHistory extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FamilyMedicalHistoryState();
  }

}

class FamilyMedicalHistoryState extends State<FamilyMedicalHistory>{
  int _selectedIndex = 0;
  List<bool> _isSelected = [false, false, false, false, false, false, false, false]; // Track the selection of each button
  bool isselected = false;
  Color imageColor = Color(0xff4F555A).withOpacity(0.5);
  Color buttonColor = Colors.black; // Initial color of the button
  bool isButtonPressed = false;

  void onselected(){
    setState(() {
      _isSelected[7] = !_isSelected[7];
      isselected = !isselected;
    });
  }

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

      Navigator.push(context, MaterialPageRoute(builder: (context)=> ContinueToAdvanceHistory(),));

    });
  }









  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),

      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 20)),
          Center(
            child: Text("Family Medical History & ",style: new TextStyle(
                color: Colors.black,
                fontSize: Responsive.isSmallScreen(context)? width/18 : width/30,
                fontWeight: FontWeight.w500,fontFamily: 'Poppins'),),
          ),

          Center(
            child: Container(

              //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
              child:RichText(
                text: TextSpan(
                  text: 'Other ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: Responsive.isSmallScreen(context)? width/18 : width/30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'illness',
                      style: TextStyle(
                        color: Color(0xff24B445),
                        fontWeight: FontWeight.w500,
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
            margin: EdgeInsets.only(left: 20, top:40),
            child: Text("Have you ever had or tested positive for:",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
              ),),
          ),






          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      height: Responsive.isSmallScreen(context)? 20 : 40,
                      width:Responsive.isSmallScreen(context)? width/3 : width/6,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: AssetImage("image/Dogg.png"),),
                          Text("Chicken pox", style: TextStyle(
                            color: _isSelected[0] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
                          ),),
                        ],

                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: _isSelected[0] ?  Color(0xff24B445) : Color(0xffF9F9F9),
                      //  onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _isSelected[0] = !_isSelected[0];
                      });
                    },
                  ),
                  ElevatedButton(
                    child:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      height: Responsive.isSmallScreen(context)? 20 : 40,
                      width:Responsive.isSmallScreen(context)? width/3 : width/6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Image(image: AssetImage("image/Drugs.png"),),
                          Text("Hepaitis", style: TextStyle(
                            color: _isSelected[1] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
                          ),),
                        ],

                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: _isSelected[1] ? Color(0xff24B445) : Color(0xffF9F9F9),
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _isSelected[1] = !_isSelected[1];
                      });
                    },
                  ),

                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      height: Responsive.isSmallScreen(context)? 20 : 40,
                      width:Responsive.isSmallScreen(context)? width/3 : width/6,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Image(image: AssetImage("image/Venereal.png"),),
                          Text("Venereal", style: TextStyle(
                            color: _isSelected[3] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
                          ),),
                        ],

                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: _isSelected[3] ?  Color(0xff24B445) : Color(0xffF9F9F9),
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _isSelected[3] = !_isSelected[3];
                      });
                    },
                  ),
                  ElevatedButton(
                    child:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      height: Responsive.isSmallScreen(context)? 20 : 40,
                      width:Responsive.isSmallScreen(context)? width/2.5 : width/6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Image(image: AssetImage("image/TB.png"),),
                          Text("Tuberculosis", style: TextStyle(
                            color: _isSelected[4] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
                          ),),
                        ],

                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: _isSelected[4] ?  Color(0xff24B445) : Color(0xffF9F9F9),
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _isSelected[4] = !_isSelected[4];
                      });
                    },
                  ),

                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      height: Responsive.isSmallScreen(context)? 20 : 40,
                      width:Responsive.isSmallScreen(context)? width/4 : width/6,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Image(image: AssetImage("image/HIV.png"),),
                          Text("HIV", style: TextStyle(
                            color: _isSelected[6] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
                          ),),
                        ],

                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: _isSelected[6] ?  Color(0xff24B445) : Color(0xffF9F9F9),
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _isSelected[6] = !_isSelected[6];
                      });
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(

                      primary: _isSelected[7] ?  Color(0xff24B445) : Color(0xffF9F9F9),
                      onPrimary: _isSelected[7] ?  Color(0xffFFFFFF) : Color(0xff4F555A).withOpacity(0.5),),
                    child:Container(
                      height: Responsive.isSmallScreen(context)? 20 : 40,
                      width:Responsive.isSmallScreen(context)? width/4 : width/6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Image(image: AssetImage("image/OtherQue.png"),),
                          Text("Other", style: TextStyle(
                            color: _isSelected[7] ?  Color(0xffF9F9F9) : Color(0xff4F555A).withOpacity(0.5),
                          ),),
                        ],

                      ),
                    ),

                    onPressed: onselected,
                  ),

                ],
              ),
            ],
          ),

          Visibility(
            visible: isselected,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Text("Add other details",
                    style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                      fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                      fontFamily: "Poppins",
                    ),),
                ),

                Container(
                  margin:EdgeInsets.only(left: 20,top: 10, right: 20),
                  child: Row(
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)? width/1.13 : width/2,
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

        Padding(padding: EdgeInsets.only(top: 50)),


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
















        ],
      ),
    );
  }
}