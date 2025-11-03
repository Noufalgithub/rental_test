import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rental_test/app/core/constants/app_colors.dart';
import 'package:rental_test/app/core/widgets/custom_button.dart';

import '../controllers/select_car_controller.dart';
import 'widgets/card_car_widget.dart';
import 'widgets/custom_dialog.dart';

class SelectCarView extends GetView<SelectCarController> {
  const SelectCarView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(title: const Text('Pick a Car'), centerTitle: true),
        bottomSheet: Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: CustomButton(
            title: 'Book Now',
            onTap: () {
              CustomDialog.showBookingCreated();
            },
            bgColor: AppColors.greenColor,
          ),
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: controller.carList.length,
          itemBuilder: (context, index) {
            final data = controller.carList[index];

            return CardCarWidget(data: data);
          },
        ),
      ),
    );
  }
}
