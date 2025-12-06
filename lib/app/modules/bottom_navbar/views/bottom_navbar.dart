import 'package:flutter/material.dart';
import 'package:flutter_service_box/app/modules/bottom_navbar/controller/bottom_navbar_controller.dart';
import 'package:get/get.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavbarController>(
      init: BottomNavbarController(),
      builder: (controller) {
        return Scaffold(
          body: controller.pages[controller.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white70,
            selectedItemColor: Colors.blueGrey,
            currentIndex: controller.currentIndex,
            showUnselectedLabels: false,
            onTap: (value) {
              controller.changePage(value);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        );
      },
    );
  }
}
