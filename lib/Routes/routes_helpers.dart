import 'package:get/get.dart';
import 'package:soul_meet_num/Screens/I_am_screen/I_am_screen.dart';
import 'package:soul_meet_num/Screens/Language_screen/language_screen.dart';
import 'package:soul_meet_num/Screens/are_you_here_for_screen/are_you_here_for_screen.dart';
import 'package:soul_meet_num/Screens/chart_calculator_screen/chart_calculator_screen.dart';
import 'package:soul_meet_num/Screens/chart_calculator_screen/couple_match.dart';
import 'package:soul_meet_num/Screens/chart_calculator_screen/twin_flame_match.dart';
import 'package:soul_meet_num/Screens/chat_screen/chat_screen.dart';
import 'package:soul_meet_num/Screens/date_of_birth_screen/date_of_birth_screen.dart';
import 'package:soul_meet_num/Screens/feedback_screen/feedback_screen.dart';
import 'package:soul_meet_num/Screens/main_screen/main_screen.dart';
import 'package:soul_meet_num/Screens/match_screen/match_screen.dart';
import 'package:soul_meet_num/Screens/matches_screen/matches_screen.dart';
import 'package:soul_meet_num/Screens/messages_screen/messages_screen.dart';
import 'package:soul_meet_num/Screens/onboarding_screen/onboarding_screen.dart';
import 'package:soul_meet_num/Screens/profile_details_screen/first_and_last_name_screen.dart';
import 'package:soul_meet_num/Screens/profile_details_screen/profile_details_screen.dart';
import 'package:soul_meet_num/Screens/profile_screen/profile_screen.dart';
import 'package:soul_meet_num/Screens/rate_this_app_screen/rate_this_app_screen.dart';
import 'package:soul_meet_num/Screens/splash_screen/splash_screen.dart';
import 'package:soul_meet_num/Screens/store_screen/store_screen.dart';

class RouteHelper {

  static const String initial ="/";
  static const String onboardingScreen = "/onboarding-screen";
  static const String languageScreen = "/language-screen";
  static const String areYouHereForScreen = "/are-you-here-for-screen";
  static const String dobScreen = "/dob-screen";
  static const String profileDetailsScreen = "/profile-details-screen";
  static const String firstAndLastNameScreen = "/first-and-last-name-screen";
  static const String iAmScreen = "/i-am-screen";
  // chart calculator screens
  static const String chartCalculatorScreen = "/chart-calculator-screen";
  static const String twoFlamesMatchProfileScreen = "/two-flames-match-profile-screen";
  static const String coupleMatchScreen = "/couple-match-screen";
  // Tabs screen
  static const String mainScreen = "/main-screen";
  static const String matchScreen = "/match-screen";
  static const String matchesScreen = "/matches-screen";
  static const String messagesScreen = "/messages-screen";
  static const String chatScreen = "/chat-screen";
  static const String profileScreen = "/profile-screen";
  static const String storeScreen = "/store-screen";
  static const String rateThisAppScreen = "/rate-this-app-screen";
  static const String feedbackScreen = "/feedback-screen";

// URL as string
  static String getInitial()=>'$initial';
  static String getOnboardingScreen()=>'$onboardingScreen';
  static String getLanguageScreen()=>'$languageScreen';
  static String getAreYouHereForScreen()=>'$areYouHereForScreen';
  static String getDobScreenScreen()=>'$dobScreen';
  static String getProfileDetailsScreen()=>'$profileDetailsScreen';
  static String getIAmScreen()=>'$iAmScreen';
// chart calculator screens
  static String getChartCalculatorScreen()=>'$chartCalculatorScreen';
  static String getCoupleMatchScreen()=>'$coupleMatchScreen';
  static String getTwoFlamesMatchProfileScreen()=>'$twoFlamesMatchProfileScreen';
// Tabs
  static String getMainScreen()=>'$mainScreen';
  static String getMatchScreen()=>'$matchScreen';
  static String getMatchesScreen()=>'$matchesScreen';
  static String getMessagesScreen()=>'$messagesScreen';
  static String getChatScreen()=>'$chatScreen';
  static String getProfileScreen()=>'$profileScreen';
  static String getStoreScreen()=>'$storeScreen';
  static String getRateThisAppScreen()=>'$rateThisAppScreen';
  static String getFeedbackScreen()=>'$feedbackScreen';


  static List<GetPage> routes=[
    // Splash Screen
    GetPage(name:initial, page: () => SplashScreen()),
    // Onboarding Screen
    GetPage(name: onboardingScreen, page:() {
      return OnboardingScreen();
    }, transition: Transition.fadeIn),
    GetPage(name: languageScreen, page:() {
      return LanguageScreen(email: '');
    }, transition: Transition.fadeIn),
    GetPage(name: areYouHereForScreen, page:() {
      return AreYouHereForScreen();
    }, transition: Transition.fadeIn),
    GetPage(name: dobScreen, page:() {
      return DateOfBirthScreen();
    }, transition: Transition.fadeIn),
    GetPage(name: profileDetailsScreen, page:() {
      return ProfileDetailsScreen(imageUrl: '', onUpload: (String imageUrl) {  },);
    }, transition: Transition.fadeIn),
    GetPage(name: firstAndLastNameScreen, page:() {
      return FirstAndLastNameScreen();
    }, transition: Transition.fadeIn),

    GetPage(name: iAmScreen, page:() {
      return IAMScreen();
    }, transition: Transition.fadeIn),

    GetPage(name: chartCalculatorScreen, page:() {
      return ChartCalculatorScreen();
    }, transition: Transition.fadeIn),
    
    GetPage(name: twoFlamesMatchProfileScreen, page:() {
      return TwinFlameMatchScreen();
    }, transition: Transition.fadeIn),
    
    GetPage(name: coupleMatchScreen, page:() {
      return CoupleMatchScreen();
    }, transition: Transition.fadeIn),
    
    GetPage(name: mainScreen, page:() {
      return MainScreen();
    }, transition: Transition.fadeIn),

    GetPage(name: matchScreen, page:() {
      return MatchScreen();
    }, transition: Transition.fadeIn),

    GetPage(name: matchesScreen, page:() {
      return MatchesScreen();
    }, transition: Transition.fadeIn),

    GetPage(name: messagesScreen, page:() {
      return MessagesScreen();
    }, transition: Transition.fadeIn),
    
    GetPage(name: chatScreen, page:() {
      return ChatScreen();
    }, transition: Transition.fadeIn),

    GetPage(name: profileScreen, page:() {
      return ProfileScreen();
    }, transition: Transition.fadeIn),

    GetPage(name: storeScreen, page:() {
      return StoreScreen();
    }, transition: Transition.fadeIn),

    GetPage(name: rateThisAppScreen, page:() {
      return RateThisAppScreen();
    }, transition: Transition.fadeIn),

    GetPage(name: feedbackScreen, page:() {
      return FeedbackScreen();
    }, transition: Transition.fadeIn)
  ];
}
