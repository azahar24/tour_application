import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:tour_application/ui/route/route.dart';

import '../widgets/violatebutton.dart';

class PrivacyPolicy extends StatelessWidget {
  RxBool _loded = false.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h, bottom: 10.h),
          child: Column(
            children: [
              Expanded(
                child: SfPdfViewer.network(
                  'https://firebasestorage.googleapis.com/v0/b/tourapp-d8147.appspot.com/o/PrivacyPolicy%2Fagree.pdf?alt=media&token=ba6a9009-5675-4c2d-8d9a-74914f50536a',
                  onDocumentLoaded: (PdfDocumentLoadedDetails details) {
                    _loded.value = true;
                  },
                ),
              ),
              Obx(() => _loded == true ?ViolateButton(
                text: 'Agree',
                onAction: () =>Get.toNamed(buttomNavConttoler),
              ):Text("Still Loded")),
              SizedBox(height: 10.h,)
            ],
          ),
        ),
      ),
    );
  }
}
