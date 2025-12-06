import 'package:flutter/material.dart';
import 'package:flutter_service_box/app/modules/home/views/home_page.dart';
import 'package:get/get.dart';

class BottomNavbarController extends GetxController {
  int currentIndex = 0;

  List<Widget> pages = [HomePage(), HomePage(), HomePage()];

  void changePage(int index) {
    currentIndex = index;
    update();
  }
}
