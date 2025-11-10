import 'package:flutter/material.dart';
import 'package:rental_test/app/core/constants/app_colors.dart';
import 'package:rental_test/app/core/widgets/custom_button.dart';
import 'package:table_calendar/table_calendar.dart';

class DatePickerBottomSheet {
  static Future<DateTime?> show(
    BuildContext context,
    DateTime selectedDate,
  ) async {
    DateTime focusedDay = selectedDate;

    return showModalBottomSheet<DateTime>(
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
                    // Tombol close
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => Navigator.pop(context),
                        ),
                        const Text(
                          'Pick-up Date',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 48),
                      ],
                    ),
                    const SizedBox(height: 8),

                    // Kalender
                    TableCalendar(
                      firstDay: DateTime.now(),
                      lastDay: DateTime.utc(2030, 12, 31),
                      focusedDay: focusedDay,
                      selectedDayPredicate: (day) =>
                          isSameDay(selectedDate, day),
                      onDaySelected: (selectedDay, focused) {
                        setState(() {
                          selectedDate = selectedDay;
                          focusedDay = focused;
                        });
                      },
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                        leftChevronIcon: Icon(Icons.chevron_left),
                        rightChevronIcon: Icon(Icons.chevron_right),
                      ),
                      calendarStyle: CalendarStyle(
                        selectedDecoration: const BoxDecoration(
                          color: AppColors.greenColor,
                          shape: BoxShape.circle,
                        ),
                        todayDecoration: BoxDecoration(
                          color: AppColors.greenColor.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        outsideDaysVisible: false,
                      ),
                    ),
                    const SizedBox(height: 16),
                    CustomButton(
                      title: 'Apply',
                      onTap: () => Navigator.pop(context, selectedDate),
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
