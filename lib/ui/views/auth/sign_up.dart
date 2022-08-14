import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tour_application/const/app_colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w,right: 30.w,top: 80.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create\n Your Account",style: TextStyle(
                fontSize: 36.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.violetColor,
              ),),
              SizedBox(height: 20.h,),
              Text("Create your account and start your\n journey",style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
              ),),
            ],
          ),
        ),

      ),
    );
  }
}
