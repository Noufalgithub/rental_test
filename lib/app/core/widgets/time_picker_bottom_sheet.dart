import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'custom_button.dart';

class TimePickerBottomSheet {
  static Future<TimeOfDay?> show(
    BuildContext context,
    TimeOfDay initialTime,
  ) async {
    Duration selectedDuration = Duration(
      hours: initialTime.hour,
      minutes: initialTime.minute,
    );

    return showModalBottomSheet<TimeOfDay>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => Navigator.pop(context),
                        ),
                        const Text(
                          'Pick-up Time',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 48),
                      ],
                    ),

                    // Time Picker
                    SizedBox(
                      height: 150,
                      child: CupertinoTimerPicker(
                        mode: CupertinoTimerPickerMode.hm,
                        initialTimerDuration: selectedDuration,
                        onTimerDurationChanged: (Duration newDuration) {
                          setState(() {
                            selectedDuration = newDuration;
                          });
                        },
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Tombol Apply
                    CustomButton(
                      title: 'Apply',
                      onTap: () => Navigator.pop(
                        context,
                        TimeOfDay(
                          hour: selectedDuration.inHours,
                          minute: selectedDuration.inMinutes.remainder(60),
                        ),
                      ),
                      bgColor: AppColors.greenColor,
                    ),

                    const SizedBox(height: 16),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
