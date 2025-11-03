import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;

  void setDate(DateTime date) {
    selectedDate.value = date;
  }

  void setTime(TimeOfDay time) {
    selectedTime.value = time;
  }

  final List<Map<String, String>> howToRentCarList = [
    {
      'title': 'Find your ride',
      'desc':
          "Set your pick-up date & time. Tap 'Book Now' to make a reservation for available car.",
    },
    {
      'title': 'Fill the submission form',
      'desc':
          "You can fill the form submission and we are going to make sure you are provided by our service.",
    },
    {
      'title': 'Sign your digital contract',
      'desc':
          "Adjust your budget and start to sign the contract. Pickup your car (Available location at San Fransisco).",
    },
    {
      'title': 'Find your ride',
      'desc':
          "Set your pick-up date & time. Tap 'Book Now' to make a reservation for available car.",
    },
    {
      'title': 'Drive free with happiness',
      'desc': "CarCirus will help you to experience the best services.",
    },
  ];
}
