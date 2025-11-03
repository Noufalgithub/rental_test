import 'package:flutter/material.dart';
import 'package:rental_test/app/core/constants/app_colors.dart';
import 'package:intl/intl.dart';
import 'package:rental_test/app/modules/select_car/views/widgets/custom_dialog.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/date_picker_bottom_sheet.dart';
import '../../../../core/widgets/time_picker_bottom_sheet.dart';

class PickupDateSection extends StatelessWidget {
  const PickupDateSection({super.key});

  @override
  Widget build(BuildContext context) {
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
          CustomTextField(
            readOnly: true,
            hintText: dateFormat.format(DateTime.now()),
            suffixIcon: const Icon(Icons.calendar_month_outlined),
            onTap: () async {
              final selected = await DatePickerBottomSheet.show(
                context,
                DateTime.now(),
              );
              if (selected != null) {
                // update value ke controller
              }
            },
          ),

          const SizedBox(height: 12),
          Text(
            'Pick-up time',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),
          CustomTextField(
            readOnly: true,
            hintText: timeFormat.format(DateTime.now()),
            suffixIcon: const Icon(Icons.access_time),
            onTap: () async {
              final selected = await TimePickerBottomSheet.show(
                context,
                TimeOfDay.now(),
              );
              if (selected != null) {
                // update value ke controller
              }
            },
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
