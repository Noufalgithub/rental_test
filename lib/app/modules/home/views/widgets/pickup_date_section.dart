import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_test/app/core/constants/app_colors.dart';
import 'package:intl/intl.dart';
import 'package:rental_test/app/modules/select_car/views/widgets/custom_dialog.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/date_picker_bottom_sheet.dart';
import '../../../../core/widgets/time_picker_bottom_sheet.dart';
import '../../../home/controllers/home_controller.dart';

class PickupDateSection extends StatefulWidget {
  const PickupDateSection({super.key});

  @override
  State<PickupDateSection> createState() => _PickupDateSectionState();
}

class _PickupDateSectionState extends State<PickupDateSection> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    final dateFormat = DateFormat('MMM d, EEEE');
    final timeFormat = DateFormat('hh:mm a');

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pick-up date',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Obx(
            () => CustomTextField(
              readOnly: true,
              hintText: dateFormat.format(controller.selectedDate.value),
              suffixIcon: const Icon(Icons.calendar_month_outlined),
              onTap: () async {
                final selected = await DatePickerBottomSheet.show(
                  context,
                  controller.selectedDate.value,
                );
                if (selected != null) {
                  controller.setDate(selected);
                }
              },
            ),
          ),

          const SizedBox(height: 12),
          Text(
            'Pick-up time',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),
          Obx(
            () => CustomTextField(
              readOnly: true,
              hintText: timeFormat.format(
                DateTime(
                  DateTime.now().year,
                  DateTime.now().month,
                  DateTime.now().day,
                  controller.selectedTime.value.hour,
                  controller.selectedTime.value.minute,
                ),
              ),
              suffixIcon: const Icon(Icons.access_time),
              onTap: () async {
                final selected = await TimePickerBottomSheet.show(
                  context,
                  controller.selectedTime.value,
                );
                if (selected != null) {
                  controller.setTime(selected);
                }
              },
            ),
          ),

          const SizedBox(height: 16),
          CustomButton(
            title: 'Select My Car',
            onTap: () {
              CustomDialog.showActiveRentalWarning();
            },
            bgColor: AppColors.greenColor,
          ),
        ],
      ),
    );
  }
}
