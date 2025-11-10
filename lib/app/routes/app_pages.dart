import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/my_bills/bindings/my_bills_binding.dart';
import '../modules/my_bills/views/my_bills_view.dart';
import '../modules/my_car/bindings/my_car_binding.dart';
import '../modules/my_car/views/my_car_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/select_car/bindings/select_car_binding.dart';
import '../modules/select_car/views/select_car_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_CAR,
      page: () => const SelectCarView(),
      binding: SelectCarBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.MY_CAR,
      page: () => const MyCarView(),
      binding: MyCarBinding(),
    ),
    GetPage(
      name: _Paths.MY_BILLS,
      page: () => const MyBillsView(),
      binding: MyBillsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
