import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tour_application/const/app_colors.dart';
import 'package:tour_application/ui/styles/styles.dart';

import '../../models/onbording_models.dart';
import '../route/route.dart';

class OnbordingScreen extends StatelessWidget {
  RxInt _currentIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(32.w),
          child: Column(
            children: [
              Obx(
                () => Expanded(
                    flex: 2,
                    child:
                        Lottie.asset(lottieFile[_currentIndex.toInt()].image)),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.scaffoldColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 10,
                            spreadRadius: 1.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 5,
                            spreadRadius: 1.0,
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(30.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() => Text(
                            '${lottieFile[_currentIndex.toInt()].title}',
                            style: AppStyle().myTextStyle,
                          ),),
                          Text(
                              '${lottieFile[_currentIndex.toInt()].discription}'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(() => DotsIndicator(
                                dotsCount: lottieFile.length,
                                position: _currentIndex.toDouble(),
                                decorator: DotsDecorator(),
                              ),),
                              InkWell(
                                onTap: (){
                                  if(_currentIndex==2){
                                    Get.toNamed(splash);

                                  } else {
                                    _currentIndex + 1;
                                  }
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.scaffoldColor,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(4.0, 4.0),
                                          blurRadius: 10,
                                          spreadRadius: 1.0,
                                        ),
                                        BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-4.0, -4.0),
                                          blurRadius: 5,
                                          spreadRadius: 1.0,
                                        ),
                                      ]),
                                  height: 37.h,
                                  width: 37.w,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
