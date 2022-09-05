import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tour_application/const/app_strings.dart';
import 'package:tour_application/ui/route/route.dart';
import 'package:tour_application/ui/styles/styles.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final box = GetStorage();

  Future chooseScreen() async {
    var userId = box.read('uid');
    print(userId);
    if(userId == null){
      Get.toNamed(onbording);
    }else {
      Get.toNamed(mainHomeScreen);
    }
  }


  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),() => chooseScreen());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                size: 100.w,
              ),
              SizedBox(height: 10.h,),
              Text(AppString.appName,style: AppStyle().myTextStyle,),
            ],
          ),
        ),
      ),
    );
  }
}
