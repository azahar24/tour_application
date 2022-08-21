import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/violatebutton.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h, bottom: 10.h),
          child: Column(
            children: [
              Expanded(child: Container(color: Colors.green,)),
               ViolateButton(
                text: 'Agree',
                onAction: () {
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
