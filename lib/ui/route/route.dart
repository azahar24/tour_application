import 'package:get/get.dart';
import 'package:tour_application/ui/views/onbording_screen.dart';

import '../views/splash_screen.dart';

const String splash = '/splash-screen';
const String onbording = '/onbording-screen';


List<GetPage> getPages = [
  GetPage(
      name: splash,
      page: () => SplashScreen()
  ),
  GetPage(
      name: onbording,
      page: () => OnbordingScreen()
  ),



];