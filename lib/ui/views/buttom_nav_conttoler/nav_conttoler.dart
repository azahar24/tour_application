import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_application/ui/route/route.dart';

class BottomNavController extends StatelessWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () { Get.toNamed(onbording); }, child: Text('log Out'),

        ),
      ),
    );
  }
}
