import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:rental_test/app/core/constants/app_colors.dart';
import 'package:rental_test/app/modules/home/controllers/home_controller.dart';
import 'package:rental_test/app/modules/home/views/home_view.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});
  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());

    return Scaffold(
      body: Obx(() {
        switch (controller.selectedIndex.value) {
          case 0:
            return HomeView();
          case 1:
            return SizedBox();
          case 2:
            return SizedBox();
          case 3:
            return SizedBox();
          default:
            return HomeView();
        }
      }),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeIndex,
          selectedItemColor: AppColors.greenColor,
          unselectedItemColor: Color(0xFFA6A6A6),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/bottom_nav/icon-rent.svg',
                color: (controller.selectedIndex.value == 0)
                    ? AppColors.greenColor
                    : Color(0xFFA6A6A6),
              ),
              label: 'Rent',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/bottom_nav/icon-my-car.svg',
                color: (controller.selectedIndex.value == 1)
                    ? AppColors.greenColor
                    : Color(0xFFA6A6A6),
              ),
              label: 'My Car',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/bottom_nav/icon-my-bills.svg',
                color: (controller.selectedIndex.value == 2)
                    ? AppColors.greenColor
                    : Color(0xFFA6A6A6),
              ),
              label: 'My Bills',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/bottom_nav/icon-profile.svg',
                color: (controller.selectedIndex.value == 3)
                    ? AppColors.greenColor
                    : Color(0xFFA6A6A6),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
