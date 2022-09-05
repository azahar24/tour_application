import 'package:get/get.dart';
import 'package:tour_application/ui/views/auth/sign_in.dart';
import 'package:tour_application/ui/views/auth/sign_up.dart';
import 'package:tour_application/ui/views/main_home_screen.dart';
import 'package:tour_application/ui/views/user_form.dart';
import 'package:tour_application/ui/views/frivacy_policy.dart';
import 'package:tour_application/ui/views/onbording_screen.dart';

import '../views/buttom_nav_conttoler/details_screen.dart';
import '../views/buttom_nav_conttoler/pages/nav_add_last_step.dart';
import '../views/buttom_nav_conttoler/search_screen.dart';
import '../views/buttom_nav_conttoler/sell_all.dart';
import '../views/drawer_pages/faq.dart';
import '../views/drawer_pages/how_to_use.dart';
import '../views/drawer_pages/privacy.dart';
import '../views/drawer_pages/profile.dart';
import '../views/drawer_pages/settings.dart';
import '../views/drawer_pages/support.dart';
import '../views/splash_screen.dart';

const String splash = '/splash-screen';
const String onbording = '/onbording-screen';
const String signUp = '/signup-screen';
const String signIn = '/signin-screen';
const String userForm = '/userform-screen';
const String privacyPolicy = '/privacy-policy-screen';
const String mainHomeScreen = '/main-home-screen';
const String supportScreen = '/support-screen';
const String privacyScreen = '/privacy-screen';
const String faqScreen = '/faq-screen';
const String howToUseScreen = '/how-to-use-screen';
const String settingsScreen = '/settings-screen';
const String seeAllScreen = '/seeAll-screen';
const String detailsScreen = '/details-screen';
const String searchScreen = '/search-screen';
const String profileScreen = '/profile-screen';
const String navAddLastStep = '/navAddLastStep-screen';


List<GetPage> getPages = [
  GetPage(
      name: splash,
      page: () => SplashScreen()
  ),
  GetPage(
      name: onbording,
      page: () => OnbordingScreen()
  ),
  GetPage(
      name: signUp,
      page: () => SignUp()
  ),
  GetPage(
      name: signIn,
      page: () => SignIn()
  ),
  GetPage(
      name: userForm,
      page: () => UserForm()
  ),
  GetPage(
      name: privacyPolicy,
      page: () => PrivacyPolicy()
  ),
  GetPage(
      name: mainHomeScreen,
      page: () => MainHomeScreen()
  ),
  GetPage(
    name: supportScreen,
    page: () => Support(),
  ),
  GetPage(
    name: privacyScreen,
    page: () => Privacy(),
  ),
  GetPage(
    name: faqScreen,
    page: () => FAQ(),
  ),
  GetPage(
    name: howToUseScreen,
    page: () => HowToUse(),
  ),
  GetPage(
    name: settingsScreen,
    page: () => Settings(),
  ),
  GetPage(
    name: seeAllScreen,
    page: () => SeeAll(),
  ),
  GetPage(
    name: detailsScreen,
    page: () => DetailsSCreen(),
  ),
  GetPage(
    name: searchScreen,
    page: () => SearchScreen(),
  ),
  GetPage(
    name: profileScreen,
    page: () => UserProfile(),
  ),
  GetPage(
    name: navAddLastStep,
    page: () => NavAddLastStep(),
  ),



];