import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/MedicalHistory.dart';
import 'package:project_signup_page/Dashbord/PatientInfo2.dart';
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
       backgroundColor: Colors.white,
       elevation: 0,
       iconTheme: IconThemeData(color: Colors.green),
       title: Text("Questionnaires",
         style: TextStyle(color: Color(0xff000000),
             fontSize: 18,
             fontWeight: FontWeight.w400,
             fontFamily: 'Poppins'),),
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
                   Container(
                     height: Responsive.isSmallScreen(context)? width/10: width/20,
                     child: InkWell(
                       onTap: (){
                         if(index==0)
                           {Navigator.push(context, MaterialPageRoute(builder:(context)=>PatientInfo2(),));}
                         else if(index==1)
                           {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> MedicalHistory(),));
                           }

                       },
                         child: Text(question[index],
                           style: TextStyle(color: Color(0xff4F555A).withOpacity(0.50),
                             fontFamily: "Poppins",
                           fontWeight: FontWeight.w400,
                           fontSize:Responsive.isSmallScreen(context)? width/25 : width/30, ),)),
                   ),
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