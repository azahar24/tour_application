import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tour_application/const/app_colors.dart';
import 'package:tour_application/ui/route/route.dart';
import 'package:tour_application/ui/styles/styles.dart';
import 'package:tour_application/ui/widgets/violatebutton.dart';

class SignUp extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 80.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create\n Your Account",
                style: TextStyle(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.violetColor,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Create your account and start your\n journey",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: AppStyle().textFieldDecoration('E-mail Address'),
              ),
              TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: AppStyle().textFieldDecoration('Enter Password'),
              ),
              SizedBox(
                height: 40.h,
              ),
              ViolateButton(
                text: 'Create Account',
                onAction: () {
                  Get.toNamed(userForm);
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "--OR--",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/facebook.png')),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/google.png')),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(
                        text: "Already an user? ",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                        children: [
                      TextSpan(
                        text: 'Log In',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.violetColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.toNamed(signIn),
                      )
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
