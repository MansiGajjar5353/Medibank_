import 'package:flutter/material.dart';


 class APIList {
  static String UserSignUp = "UserSignUp/Signup";
   static String UserLogin = "UserSignUp/Login";
   static String VerifyMobileOtp = "UserSignUp/VerifyMobileOtp";
   static String SaveEmailAddress = "UserSignUp/SaveEmailAddress";
   static String SavePatientInfo = "UserSignUp/SavePatientInfo";
   static String SaveAddress = "UserSignUp/SaveAddress";
   static String GetUsernameSuggestions = "UserSignUp/GetUsernameSuggestions";
   static String SaveUsername = "UserSignUp/SaveUserName";
   static String GetSubscriptionPlan = "UserSignUp/GetSubscriptionPlan";
   static String VerifyCoupon = "UserSignUp/VerifyCoupon";
   static String CaptureOnlinePayment = "Payment/CaptureSubscriptionPaymentDetail";

  // ABHA SETUP API
   static String GenerateMobileOtp = "ABDM/GenerateMobileOtp";
   static String ADMVerifyMobileOtp = "ABDM/VerifyMobileOtp";
   static String CreateHealthIdusingmobiletoken = "ABDM/CreateHealthIdUsingMobile";
   static String GenerateAadhaarotp = "ABDM/GenerateAadhaarOtp";
   static String VerifyAadhaarOtp = "ABDM/VerifyAadhaarOtp";
   static String GenerateAadhaarMobileOtp = "ABDM/GenerateAadhaarMobileOtp";
   static String VerifyAadhaarMobileOtp = "ABDM/VerifyAadhaarMobileOtp";
   static String CreateHealthIdWithPreVerified = "ABDM/CreateHealthIdWithPreVerified";

  //FamilyHistory
   static String GetFamilyMedicalHistory = "FamilyHistory/GetFamilyMemberHistory";
   static String GetRelationList = "Common/GetRelations";
   static String AddFamilyMember = "FamilyHistory/AddFamilyMemberHistory";
   static String DeleteFamilyMember = "FamilyHistory/DeleteMedicalHistory";

  //User
   static String GetUserDetail = "User/GetUserProfile";
   static String UpdateProfile = "User/UpdateUserProfile";
   static String ForgotPassword = "User/ForgotPassword";
   static String VerifyForgotPasswordOtp = "User/VerifyForgotPasswordOtp";
   static String ResetPassword = "User/ResetPassword";
   static String UploadProfileImage = "User/UploadProfileImage";
   static String UpdatePassword = "User/UpdatePassword";
   static String GetSelectedSubscriptionDetail = "User/GetSelectedSubscriptionDetail";
   static String ResendWelcomeEmail = "UserSignUp/ResendWelcomeEmail";
   static String VerifyEmailOtp = "UserSignUp/VerifyEmailOtp";
   static String ResendEmailOTP = "UserSignUp/ResendEmailOTP";


  //Common
   static String PrivacyPolicy = "Common/GetPrivacyPolicy";
   static String TermsAndCondition = "Common/GetTermConditions";
   static String GetMedicineNameList = "Common/GetMedicineNameList";
   static String GetFrequencyList = "Common/GetFrequency";
   static String GetFaqCategories = "Common/GetFaqCategories";
   static String GETFAQ = "Common/GETFAQ";

  //FollowUps
   static String AddFollowUps = "FollowUp/SaveFollowUp";
   static String GetFollowUps = "FollowUp/GetFollowUps";
   static String DeleteFollowUps = "FollowUp/DeleteFollowUp";

  //Treatment
   static String GetTreatment = "Treatment/GetTreatments";
   static String AddTreatement = "Treatment/SaveTreatment";
   static String DeletTreatement = "Treatment/DeleteTreatment";
   static String UploadTreatment = "Treatment/UploadTreatment";
   static String GetTreatmentDetail = "Treatment/GetTreatmentDetail";


  //Symptoms
   static String GetSymptoms = "Symptom/GetSymptoms";
   static String AddSymptoms = "Symptom/SavePatientSymptom";
   static String GetSymptomsListById = "Symptom/GetPatientSymptomList";
   static String ViewPatientSymptomDetails = "Symptom/ViewPatientSymptomDetails";
   static String DeleteSymptom = "Symptom/DeleteSymptom";

  //FamilyAccess
   static String ByThem = "FamilyMemberAccess/GetPermissionGivenByMember";
   static String ByMe = "FamilyMemberAccess/GetPermissionRequestedByMember";
   static String Pending = "FamilyMemberAccess/GetPendingRequest";
   static String GetMemberDetails = "FamilyMemberAccess/GetMemberDetails";
   static String RequestFamilyMemberPermission = "FamilyMemberAccess/RequestFamilyMemberPermission";
   static String ConfirmPermission = "FamilyMemberAccess/ConfirmPermission";
   static String DenyPermission = "FamilyMemberAccess/DenyPermission";
   static String ReportAbuse = "FamilyMemberAccess/ReportAbuse";
   static String SavePermissionDetails = "FamilyMemberAccess/SavePermissionDetails";
   static String LogIntoMemberProfile = "FamilyMemberAccess/LogIntoMemberProfile";

  //Insurance
   static String AddInsurance = "Insurance/SaveInsurance";
   static String GetInsurance = "Insurance/GetInsurance";
   static String GetInsuranceDetail = "Insurance/GetInsuranceDetail";

  //Prescription
   static String SavePrescriptions = "Prescription/SavePrescription";
   static String GetPrescriptions = "Prescription/GetPrescriptions";
   static String GetPrescriptionsDetail = "Prescription/GetPrescriptionDetail";
   static String DeletePrescriptions = "Prescription/DeletePrescription";
   static String UploadPrescriptions = "Prescription/UploadPrescription";

  //Vaccination
   static String SaveVaccinationDetails = "Vaccination/SaveVaccinationDetails";
   static String GetVaccinationDetail = "Vaccination/GetVaccinationDetail";
   static String DeleteVaccinationFiles = "Vaccination/DeleteVaccinationFiles";
   static String EditVaccinationDetail = "Vaccination/EditVaccinationDetail";
   static String VaccinationCharts="Vaccination/Charts";

  //DoctorZone
   static String SaveDoctorAccessCode = "DoctorZone/SaveDoctorAccessCode";
   static String GetDoctorSummary = "DoctorZone/GetDoctorSummary";
   static String GetPatientSummary = "DoctorZone/GetPatientSummary";


  //Hospitalization
   static String SaveHospitalization = "Hospitalization/SaveHospitalization";
   static String GetHospitalizations = "Hospitalization/GetHospitalizations";
   static String DeleteHospitalization = "Hospitalization/DeleteHospitalization";
   static String GetHospitalizationDetail = "Hospitalization/GetHospitalizationDetail";
   static String UploadHospitalization = "Hospitalization/UploadHospitalization";

  // Reports
   static String SaveReport = "Report/SaveReport";
   static String VerifyReport = "Report/VerifyReport";
   static String ValidateReport = "Report/ValidateReport";
   static String GetAllReports = "Report/GetAllReports";
   static String DeleteReport = "Report/DeleteReport?";
   static String DetailedReport = "Report/DetailedReport";
   static String HideReport = "Report/HideReport";
   static String UpdatePatientNameForReport = "Report/UpdatePatientNameForReport";


  // Notifications
   static String GetNotificationsWithPaging = "Notification/GetNotificationsWithPaging";

  // Questionnaires
   static String GetQuestionsByQuestionGroupId = "Questionnaire/GetQuestionsByQuestionGroupId";
   static String PostQuestionsByQuestionGroupId = "Questionnaire/SaveQuestionAnswers";
   static String GetQuestionDepAns = "Questionnaire/GetQuestionDepAns";
   static String PostQuestionDepAns = "Questionnaire/PostQuestionDepAns";
   static String GetQuestionAns = "Questionnaire/GetQuestionAns";
   static String PostQuestionAns="Questionnaire/PostQuestionAns";
   static String GetQuestionAnswerList="Questionnaire/GetQuestionAnswerList";
   static String PostQuestionAnswerList="Questionnaire/PostQuestionAnswerList";
   static String GetNextQuestion="Questionnaire/GetNextQuestion";

   static String GetQuestionDepOption="Questionnaire/GetQuestionDepOption";
   static String PostQuestionDepOption="Questionnaire/PostQuestionDepOption";

   static String GetQuestAnsTable="Questionnaire/GetQuestAnsTable";
   static String PostQuestAnsTable="Questionnaire/PostQuestAnsTable";

  // Partner Integrations
   static String PartnerLogin = "PartnerIntegration/PartnerLogin";
   static String ResendOtpForPartnerPatient = "PartnerIntegration/ResendOtpForPartnerPatient";
   static String VerifyPartnerOTP = "PartnerIntegration/VerifyPartnerOTP";
   static String SetSelectedPartnerPatient = "PartnerIntegration/SetSelectedPartnerPatient";

  // Activity Tracker
   static String GetLifeStyleData = "ActivityTracker/GetLifeStyleData";
   static String SaveActivity = "ActivityTracker/SaveActivity";

  // Gmail Integration
   static String SaveUser = "save-user";
   static String SaveMessages = "save-messages";

}
