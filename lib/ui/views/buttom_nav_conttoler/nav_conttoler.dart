

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tour_application/const/app_strings.dart';

import 'pages/nav_add.dart';
import 'pages/nav_favourite.dart';
import 'pages/nav_home.dart';

class BottomNavController extends StatelessWidget {
  RxInt _currentIndex = 0.obs;
  RxBool _drawer = false.obs;

  final _pages = [
    NavHome(),
    NavAdd(),
    NavFavourite(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedPositioned(
          top: _drawer.value == false ? 0 : 100.h,
          bottom: _drawer.value == false ? 0 : 100.h,
          left: _drawer.value == false ? 0 : 200.w,
          right: _drawer.value == false ? 0 : -100.w,
          duration: Duration(microseconds: 400),
          child: Container(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: Text(
                  AppString.appName,
                  style: TextStyle(color: Colors.black),
                ),
                leading: _drawer == false
                    ? IconButton(
                        onPressed: () {
                          _drawer.value = true;
                        },
                        icon: Icon(Icons.menu, color: Colors.black),
                      )
                    : IconButton(
                        onPressed: () {
                          _drawer.value = false;
                        },
                        icon: Icon(Icons.close, color: Colors.black),
                      ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                  currentIndex: _currentIndex.value,
                  onTap: (value) => _currentIndex.value = value,
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_outlined), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.add_outlined), label: "Add"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite_outline), label: "Fevorite"),
                  ]),
              body: _pages[_currentIndex.value],
            ),
          ),
        ));
  }
}
