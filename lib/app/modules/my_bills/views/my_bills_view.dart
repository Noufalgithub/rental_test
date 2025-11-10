import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_bills_controller.dart';

class MyBillsView extends GetView<MyBillsController> {
  const MyBillsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyBillsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MyBillsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
