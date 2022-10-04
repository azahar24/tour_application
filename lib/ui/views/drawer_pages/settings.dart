import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tour_application/ui/theme/app_theme.dart';

import '../../route/route.dart';
import '../../widgets/drawer_item.dart';

class Settings extends StatelessWidget {
  RxBool darkMode = false.obs;
  final themeMode = GetStorage();
  final box = GetStorage();

  Future logOut(context) async {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("are u sure to logout?"),
              content: Row(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut().then(
                            (value) => Fluttertoast.showToast(
                                msg: "Logout Successfull"),
                          );
                      await box.remove('uid');
                      Get.toNamed(splash);
                    },
                    child: Text("Yes"),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text("No"),
                  ),
                ],
              ),
            ));
  }

  Future changeLanguage(context) async {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Select your language!"),
              content: Container(
                height: 200.h,
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () => Get.updateLocale(
                        const Locale('bn', 'BD'),
                      ),
                      child: Text("Bangla"),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    TextButton(
                      onPressed: () => Get.updateLocale(
                        const Locale('en', 'US'),
                      ),
                      child: Text("English"),
                    ),
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Settings"),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dark Mode",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
                ),
                Obx(
                  () => Switch(
                    value: darkMode.value,
                    onChanged: (bool value) {
                      darkMode.value = value;
                      Get.changeTheme(darkMode.value == false
                          ? AppTheme().lightTheme(context)
                          : AppTheme().darkTheme(context));
                      themeMode.write('mode', darkMode.value);
                    },
                  ),
                ),
              ],
            ),
            drawerItem(
              "Logout",
              () => logOut(context),
            ),
            drawerItem(
              "Profile",
              () => Get.toNamed(profileScreen),
            ),
            drawerItem(
              "Languages",
              () => changeLanguage(context),
            ),
          ],
        ),
      ),
    );
  }
}
