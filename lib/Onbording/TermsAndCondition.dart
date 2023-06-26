import 'package:flutter/material.dart';
import 'package:project_signup_page/Onbording/ForgetPassword.dart';
import 'Responsive.dart';
class termsAndCondition extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _termsAndConditionState();
  }
}

class _termsAndConditionState extends State<termsAndCondition> {
  bool _obscureText2 = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
        title: Text("Terms & Conditions", style:  TextStyle(color: Colors.black,  fontSize:Responsive.isSmallScreen(context)? width/20 : width/34, fontFamily: 'Poppins',fontWeight: FontWeight.w400,),),

      ),

      body:ListView(
        children: [

          Container(margin:EdgeInsets.only(left: Responsive.isSmallScreen(context)? width/20 : width/20,top: Responsive.isSmallScreen(context)? width/20 : width/20,bottom: Responsive.isSmallScreen(context)? width/20 : width/20),
            child: Text("Medibank is an Australian health insurance and healthcare company. It is one of the largest health insurers in Australia and provides a wide range of health insurance products and services to individuals, families, and businesses.Here are some key points about Medibank:Health Insurance: Medibank offers various health insurance plans, including hospital cover, extras cover, and combined cover. These plans help individuals and families cover the cost of medical treatments, hospital stays, and other healthcare services.Additional Services: In addition to health insurance, Medibank provides other healthcare-related services. This includes telehealth consultations, health support programs, health management tools, and access to a network of healthcare providers.Healthcare Solutions: Medibank operates a network of medical clinics called Medibank Health Solutions. These clinics offer a range of healthcare services, including occupational health, travel health, and health assessments.Overseas Health Cover: Medibank also offers Overseas Visitors Health Cover (OVHC) for people visiting Australia on temporary visas. This cover helps visitors meet their healthcare needs while in Australia.Corporate Health Solutions: Medibank provides health insurance and wellness programs for businesses and organizations. These solutions aim to promote employee health and well-being in the workplace.It's important to note that specific details about Medibank's products, services, and policies can change over time. For the most accurate and up-to-date information, it is recommended to visit Medibank's official website or contact their customer service directly.",
              style: TextStyle(color: Color(0xff212426),
                fontSize:Responsive.isSmallScreen(context)? width/28 : width/36, fontFamily: 'Poppins',fontWeight: FontWeight.w500, ),),
          ),
        ],
      ),
    );
  }

}

