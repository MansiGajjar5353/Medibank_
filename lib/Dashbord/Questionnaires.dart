import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/AbdominalDigestive.dart';
import 'package:project_signup_page/Dashbord/Cardiovascular.dart';
import 'package:project_signup_page/Dashbord/DermatologySkin.dart';
import 'package:project_signup_page/Dashbord/Diet&Nutrition.dart';
import 'package:project_signup_page/Dashbord/EndocrineGlandular.dart';
import 'package:project_signup_page/Dashbord/Exersize.dart';
import 'package:project_signup_page/Dashbord/FamilyMedicalHistory.dart';
import 'package:project_signup_page/Dashbord/ForMan.dart';
import 'package:project_signup_page/Dashbord/GenitalUrinary.dart';
import 'package:project_signup_page/Dashbord/HEAD.dart';
import 'package:project_signup_page/Dashbord/HaveYouCoveredEverythink.dart';
import 'package:project_signup_page/Dashbord/JointsMuscleProblem.dart';
import 'package:project_signup_page/Dashbord/LifeStyle.dart';
import 'package:project_signup_page/Dashbord/MedicalHistory.dart';
import 'package:project_signup_page/Dashbord/Neurological.dart';
import 'package:project_signup_page/Dashbord/PatientInfo2.dart';
import 'package:project_signup_page/Dashbord/RespiratoryLungsProblem.dart';
import 'package:project_signup_page/Dashbord/illnessSurgery.dart';
import 'package:project_signup_page/Dashbord/weightLoss.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';


class Questionnaires extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return QuestionnairesState();
  }


}

class QuestionnairesState extends State<Questionnaires>{
  final question = [
        'Patient information II',
        'Medical history',
        'Constitutional/ Systematic',
        'Illness/ surgeries',
        'lifestyle',
        'diet & nutrition',
        'Exercise',
        'Family medical history',
        'Endocrine / glandular',
        'dermatology / skin',
        'head, eyes, ears, nose & throat(heent)',
        'Respriatory/ lungs',
        'cardiovascular',
        'abdominal/ digestive',
        'genital/ urinary',
        'joints/ muscle problems',
        'neurological',
        'for men',
        'have you covered everything?',
        'logout',
  ];
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
       // title: Text("Questionnaires",
       //   style: TextStyle(color: Color(0xff000000),
       //       fontSize: 18,
       //       fontWeight: FontWeight.w400,
       //       fontFamily: 'Poppins'),),
       title: Center(
         child: Container(padding: EdgeInsets.only(right: 30),
             child: Image(image: AssetImage("image/MedibankLOGO.png",),
                 width: Responsive.isSmallScreen(context)? width/2.3: width/4)),
       ),
       //                margin: EdgeInsets.only(left:0,top:10.0 ),
     ),

     body:
     Container(
       height: 900,
         margin: EdgeInsets.only(top: 10, left: 20, right: 20),
         child: ListView.builder(
             scrollDirection: Axis.vertical,
             shrinkWrap: true,
             itemCount: question.length,
             itemBuilder: (BuildContext context, int index){
               return Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(padding: EdgeInsets.only(top: 5)),
                   Container(

                     child: InkWell(
                       onTap: (){
                         if(index==0)
                           {Navigator.push(context, MaterialPageRoute(builder:(context)=>PatientInfo2(),));}
                         else if(index==1)
                           {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> MedicalHistory(),));
                           }
                         else if(index==2)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> weightLoss(),));
                         }
                         else if(index==3)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> illnessSurgery(),));
                         }
                         else if(index==4)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> LifeStyle(),));
                         }
                         else if(index==5)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> DietNutrition(),));
                         }

                         else if(index==6)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> Exercise(),));
                         }
                         else if(index==7)
                           {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> FamilyMedicalHistory(),));
                           }
                         else if(index==8)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> EndocrineGlandular(),));
                         }
                         else if(index==9)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> DermatologySkin(),));
                         }
                         else if(index==10)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> HEAD(),));
                         }

                         else if(index==11)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> RespiratoryLungsProblem(),));
                         }
                         else if(index==12)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> Cardiovascular(),));
                         }
                         else if(index==13)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> AbdominalDigestive(),));
                         }

                         else if(index==14)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> GenitalUrinary(),));
                         }

                         else if(index==15)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> JointsMuscleProblem(),));
                         }

                         else if(index==16)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> Neurological(),));
                         }
                         else if(index==17)
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> ForMan(),));
                         }
                         else if(index==18)
                           {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> HaveYouCoveredEverythink(),));
                           }






                       },

                         child: SingleChildScrollView(
                           scrollDirection: Axis.vertical,
                           child: Text(question[index],
                             style: TextStyle(color: Color(0xff4F555A).withOpacity(0.50),
                               fontFamily: "Poppins",
                             fontWeight: FontWeight.w400,
                             fontSize:Responsive.isSmallScreen(context)? width/25 : width/30, ),),
                         )),
                   ),
                   Padding(padding: EdgeInsets.only(top: 5)),
                   Container(
                     height: 2,
                     color: Color(0xffF7F7F7),

                   )
                   ],
               );
             } ),
     ),
   );
  }
}