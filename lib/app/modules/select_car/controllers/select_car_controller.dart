import 'package:get/get.dart';

class SelectCarController extends GetxController {
  final List<Map<String, dynamic>> carList = [
    {
      'image': 'assets/images/Nissan Sentra 2 1.png',
      'category': 'Economic',
      'name': 'Nissan Sentra or Similar',
      'price': 300,
    },
    {
      'image': 'assets/images/Nissan Sentra 2 2.png',
      'category': 'Hybrid',
      'name': 'Toyota Prius or Similar',
      'price': 350,
    },
    {
      'image': 'assets/images/pngwing.com (1) 1.png',
      'category': 'SUV',
      'name': 'Nissan Pathfinder or Similar',
      'price': 400,
    },
  ];
}
