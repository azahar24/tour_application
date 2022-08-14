import 'package:get/get.dart';
import 'package:tour_application/ui/views/auth/sign_up.dart';
import 'package:tour_application/ui/views/onbording_screen.dart';

import '../views/splash_screen.dart';

const String splash = '/splash-screen';
const String onbording = '/onbording-screen';
const String signUp = '/signup-screen';


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



];