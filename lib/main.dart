import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tour_application/const/app_strings.dart';
import 'package:tour_application/ui/route/route.dart';
import 'package:tour_application/ui/views/splash_screen.dart';

import 'business_logics/app_languages.dart';
import 'ui/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp( App());
}

class App extends StatelessWidget {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    name: "TourApp",
    options: FirebaseOptions(
        apiKey: "AIzaSyBm3DBh3_8os69GQIAZWpkTBZk10olJnBo",
        appId: "1:1052107750375:android:2b6c91771367e156f75b42",
        messagingSenderId: "1052107750375",
        projectId: "tourapp-d8147"),
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot){
          if(snapshot.hasError){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if(snapshot.connectionState == ConnectionState.done){
            return MyApp();
          }
          return CircularProgressIndicator();
        }
    );
  }
}


class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppString.appName,
          translations: AppLanguages(),
          locale: Locale('en', 'US'),
          fallbackLocale: Locale('en', 'US'),
          theme: AppTheme().lightTheme(context),
          darkTheme: AppTheme().darkTheme(context),
          themeMode: ThemeMode.light,
          initialRoute: splash,
          getPages: getPages,
          home: SplashScreen(),
        );
      },
    );
  }
}
