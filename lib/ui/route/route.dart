import 'package:get/get.dart';
import 'package:tour_application/ui/views/auth/sign_in.dart';
import 'package:tour_application/ui/views/auth/sign_up.dart';
import 'package:tour_application/ui/views/auth/user_form.dart';
import 'package:tour_application/ui/views/frivacy_policy.dart';
import 'package:tour_application/ui/views/onbording_screen.dart';

import '../views/splash_screen.dart';

const String splash = '/splash-screen';
const String onbording = '/onbording-screen';
const String signUp = '/signup-screen';
const String signIn = '/signin-screen';
const String userForm = '/userform-screen';
const String privacyPolicy = '/privacy-policy-screen';


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



];