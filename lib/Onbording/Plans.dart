import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_signup_page/Functions/APILink.dart';
import 'package:project_signup_page/Functions/Utility.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'Responsive.dart';
import 'Welcome_Screen.dart';

enum ButtonState {
  Button1,
  Button2,
}

class Plans extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PlansState();
  }
}
class SubscriptionPlan {
  final int subscriptionPlanId;
  final String name;
  final String description;
  final double amount;
  final double discount;

  SubscriptionPlan({
    required this.subscriptionPlanId,
    required this.name,
    required this.description,
    required this.amount,
    required this.discount,
  });

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
    return SubscriptionPlan(
      subscriptionPlanId: json['subscriptionPlanId'],
      name: json['name'],
      description: json['description'],
      amount: json['amount'].toDouble(),
      discount: json['discount'].toDouble(),
    );
  }
}
class PlansState extends State<Plans> {
  ButtonState selectedButton = ButtonState.Button1; // Initial selected button

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
        buttonColor =
            Colors.green; // Change the color back to the original value
        isButtonPressed = false;
      });
      // fetchSubscriptionPlans();
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => Welcome_Screen(),
      //     ));
      // Perform navigation after the delay
    });
  }




  final TextEditingController _userController = new TextEditingController();

  void _erase() {
    setState(() {
      _userController.clear();
    });
  }
  String res = "";

  List<dynamic> subscriptionPlans = [];
  Future<List<SubscriptionPlan>> fetchSubscriptionPlans() async {
    final response = await http.get(Uri.parse('https://staging.themedibank.in/api/v1/UserSignUp/GetSubscriptionPlan'));
    print("1");
// res = jsonDecode(response.body);
print("2");
// print(res);
    if (response.statusCode == 200) {
      print("3");

      final List<dynamic> jsonList = jsonDecode(response.body);
      final List<SubscriptionPlan> plans = jsonList.map((json) => SubscriptionPlan.fromJson(json)).toList();
      return plans;
      // If the API call is successful, parse the response body
     // subscriptionPlans = jsonDecode(response.body);
     //  print(subscriptionPlans);
     //  return subscriptionPlans;

    } else {
      // If the API call fails, throw an exception or handle the error as desired
      throw Exception('Failed to fetch subscription plans');
    }
  }

  late Future<List<SubscriptionPlan>> futurePlans;
  @override
  void initState() {
    super.initState();
    futurePlans = fetchSubscriptionPlans();
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:
            Responsive.isSmallScreen(context) ? width / 10 : width / 10,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.green,
          size: Responsive.isSmallScreen(context) ? width / 20 : width / 25,
        ),
        title: Center(
          child: Container(
              padding: EdgeInsets.only(right: 30),
              child: Image(
                  image: AssetImage(
                    "image/MedibankLOGO.png",
                  ),
                  width: Responsive.isSmallScreen(context)
                      ? width / 2.3
                      : width / 4)),
        ),
      ),
      body:






      Container(
        height: _mediaquery.size.height * 1,
        child: ListView(
          children: [
        Expanded(
          child: Container(
            height: 300,
            child: FutureBuilder<List<SubscriptionPlan>>(
            future: futurePlans,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      final plan = snapshot.data![index];
                      return ListTile(
                        title: Text(plan.name),
                        subtitle: Text(plan.description),
                        trailing: Text('${plan.amount}'),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ),
            // Expanded(
            //   child:
            //   ListView.builder(
            //     itemCount: subscriptionPlans.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       // Return a widget for each item in the subscriptionPlans list
            //       return ListTile(
            //         title: Text(subscriptionPlans[index]['name']),
            //         subtitle: Text(subscriptionPlans[index]['description']),
            //         trailing: Text('\$${subscriptionPlans[index]['amount']}'),
            //       );
            //     },
            //   )
            //   // FutureBuilder<List<dynamic>>(
            //   //   future: fetchSubscriptionPlans(),
            //   //   builder: (context, snapshot) {
            //   //     if (snapshot.hasData) {
            //   //       List<dynamic> subscriptionPlans = snapshot.data!;
            //   //       return ListView.builder(
            //   //         itemCount: subscriptionPlans.length,
            //   //         itemBuilder: (context, index) {
            //   //           dynamic plan = subscriptionPlans[index];
            //   //           return ListTile(
            //   //             title: Text(plan['name']),
            //   //             subtitle: Text(plan['description']),
            //   //             trailing: Text('Amount: ${plan['amount']}'),
            //   //           );
            //   //         },
            //   //       );
            //   //     } else if (snapshot.hasError) {
            //   //       return Center(
            //   //         child: Text('Error: ${snapshot.error}'),
            //   //       );
            //   //     } else {
            //   //       return Center(
            //   //         child: CircularProgressIndicator(),
            //   //       );
            //   //     }
            //   //   },
            //   // ),
            // ),

            Center(
              child: Container(
                margin: EdgeInsets.only(left: 0, top: 10.0),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child: RichText(
                  text: TextSpan(
                    text: 'Choose Your ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 16
                          : width / 30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Plan',
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
            ),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Amet minim mollit non deserunt ullamco est sit ",
                      style: new TextStyle(
                        color: Color(0xff929292),
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 30
                            : width / 60,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "aliqua dolor do amet sint.",
                      style: new TextStyle(
                        color: Color(0xff929292),
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 30
                            : width / 60,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 60)),
                  Stack(
                    children: [
                      Container(
                        child: InkWell(
                          onTap: () {
                            onButtonPressed(ButtonState.Button1);
                          },
                          child: Container(
                            height: _mediaquery.size.height * 0.13,
                            width: Responsive.isSmallScreen(context)
                                ? width / 0.5
                                : width / 0.6,
                            margin: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: selectedButton == ButtonState.Button1
                                  ? Color(0xffADE3BA)
                                  : Color(0xffF7F7F7),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: _mediaquery.size.width * 0.01)),
                                Container(
                                  width: Responsive.isSmallScreen(context)
                                      ? width / 5
                                      : width / 9,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('image/Plan1.png'),
                                      fit: BoxFit.scaleDown,

                                      // child:Text('Others'),
                                    ),
                                    // backgroundImage: AssetImage('image/Other.png',),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: _mediaquery.size.width * 0.02)),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Individual Plan",
                                        style: TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          fontSize:
                                              Responsive.isSmallScreen(context)
                                                  ? width / 22
                                                  : width / 60,
                                        ),
                                      ),
                                      Text(
                                        "Applied discount 200/-",
                                        style: TextStyle(
                                          color: Color(0xffA1A1A1),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          fontSize:
                                              Responsive.isSmallScreen(context)
                                                  ? width / 40
                                                  : width / 60,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(left: 15)),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text: '800 ',
                                          style: TextStyle(
                                            color: Color(0xff24B445),
                                            fontSize: Responsive.isSmallScreen(
                                                    context)
                                                ? width / 22
                                                : width / 60,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'INR',
                                              style: TextStyle(
                                                fontSize:
                                                    Responsive.isSmallScreen(
                                                            context)
                                                        ? width / 30
                                                        : width / 60,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Per Year',
                                          style: TextStyle(
                                            fontSize: Responsive.isSmallScreen(
                                                    context)
                                                ? width / 50
                                                : width / 60,
                                            color: Color(0xffBEBEBE),
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
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
                      ),
                      Visibility(
                        visible: selectedButton == ButtonState.Button1
                            ? true
                            : false,
                        child: Container(
                          margin: EdgeInsets.only(left: 312),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0xffCECECE),
                                  spreadRadius: 2)
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Image.asset(
                                "image/Checkbox.png",
                                height: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                    child: InkWell(
                      onTap: () {
                        onButtonPressed(ButtonState.Button2);
                      },
                      child: Container(
                        height: _mediaquery.size.height * 0.13,
                        width: Responsive.isSmallScreen(context)
                            ? width / 0.5
                            : width / 0.6,
                        margin: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          //  color: Color(0xffF7F7F7),
                          color: selectedButton == ButtonState.Button2
                              ? Color(0xffADE3BA)
                              : Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    left: _mediaquery.size.width * 0.01)),
                            Container(
                              width: Responsive.isSmallScreen(context)
                                  ? width / 5
                                  : width / 9,
                              decoration: BoxDecoration(
                                // color: Colors.black,
                                image: DecorationImage(
                                  image: AssetImage('image/Plan2.png'),
                                  fit: BoxFit.scaleDown,

                                  // child:Text('Others'),
                                ), // backgroundImage: AssetImage('image/Other.png',),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Family Plan",
                                    style: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 22
                                              : width / 60,
                                    ),
                                  ),
                                  Text(
                                    "Applied discount 200/-",
                                    style: TextStyle(
                                      color: Color(0xffA1A1A1),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? width / 40
                                              : width / 60,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            Stack(
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text: '1000 ',
                                          style: TextStyle(
                                            color: Color(0xff24B445),
                                            fontSize: Responsive.isSmallScreen(
                                                    context)
                                                ? width / 22
                                                : width / 60,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'INR',
                                              style: TextStyle(
                                                fontSize:
                                                    Responsive.isSmallScreen(
                                                            context)
                                                        ? width / 30
                                                        : width / 60,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Per Year',
                                          style: TextStyle(
                                            fontSize: Responsive.isSmallScreen(
                                                    context)
                                                ? width / 50
                                                : width / 60,
                                            color: Color(0xffBEBEBE),
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Visibility(
                                  visible: selectedButton == ButtonState.Button2
                                      ? true
                                      : false,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 71),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 0,
                                            color: Color(0xffCECECE),
                                            spreadRadius: 2)
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      radius: 14,
                                      backgroundColor: Colors.white,
                                      child: Center(
                                        child: Image.asset(
                                          "image/Checkbox.png",
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 126)),

            Container(
              margin: EdgeInsets.only(right: 20.0),
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(35), // set the border radius
                //border: Border.all(),
              ),
              child: TextField(
                controller: _userController,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  filled: true,
                  fillColor: Color(0xffF9F9F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Enter Coupen Code",
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.clear_sharp,
                      color: Color(0xff4F555A).withOpacity(0.5),
                      size: 14,
                    ),
                    onPressed: _erase,
                  ),
                  hintStyle: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.5),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 25
                          : width / 60),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: _mediaquery.size.height * 0.05)),

            Center(
              child: Container(
                height: _mediaquery.size.height * 0.070,
                width: Responsive.isSmallScreen(context)
                    ? width / 2.5
                    : width / 3.5,
                margin: EdgeInsets.only(top: _mediaquery.size.height * 0.02),
                child: ElevatedButton(
                  onPressed: handleButtonPress,
                  child: Image.asset('image/AerrowRight.png',
                      color: isButtonPressed ? Colors.black : imageColor,
                      height: _mediaquery.size.height * 0.04),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isButtonPressed ? buttonColor : Color(0xffF9F9F9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }

  void onButtonPressed(ButtonState buttonState) {
    setState(() {
      selectedButton = buttonState;
    });
  }
}
