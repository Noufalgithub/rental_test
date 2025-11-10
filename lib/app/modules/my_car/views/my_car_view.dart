import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_car_controller.dart';

class MyCarView extends GetView<MyCarController> {
  const MyCarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyCarView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MyCarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
