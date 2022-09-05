import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../route/route.dart';
import '../../widgets/drawer_item.dart';


class Settings extends StatelessWidget {
  RxBool darkMode = false.obs;

  Future logOut(context) async {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("are u sure to logout?"),
          content: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Yes"),
              ),
              SizedBox(
                width: 10.w,
              ),
              ElevatedButton(
                onPressed: () {},
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
                  onPressed: () {},
                  child: Text("Bangla"),
                ),
                SizedBox(
                  width: 10.w,
                ),
                TextButton(
                  onPressed: () {},
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
                    onChanged: (bool value) => darkMode.value = value,
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
                  ()=>Get.toNamed(profileScreen),
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
