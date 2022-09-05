import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tour_application/const/app_colors.dart';

class ViolateButton extends StatelessWidget {
  Function onAction;
  String text;

  ViolateButton({required this.text, required this.onAction});

  RxBool _value = false.obs;


  @override
  Widget build(BuildContext context) {
    return Obx(() => InkWell(
          onTap: () {
            _value.value = true;
            onAction();
          },
          child: Container(
            height: 48.h,
            decoration: BoxDecoration(
                color: AppColors.violetColor,
                borderRadius: BorderRadius.circular(5.r)),
            child: _value == false
                ? Center(
                    child: Text(text,
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )))
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Please Wait',
                          style: TextStyle(
                            fontSize: 17.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(
                        width: 10.w,
                      ),
                      Transform.scale(
                          scale: 0.4, child: CircularProgressIndicator(
                        color: Colors.white,

                      ))
                    ],
                  ),
          ),
        ));
  }
}
