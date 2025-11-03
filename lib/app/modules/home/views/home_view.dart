import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_test/app/core/constants/app_colors.dart';
import 'package:rental_test/app/modules/home/views/widgets/pickup_date_section.dart';

import '../controllers/home_controller.dart';
import 'widgets/why_carcirus_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  // blue section
                  Container(
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                    width: double.infinity,
                    height: 280,
                    color: AppColors.blueColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/logo-carcirus.png'),
                        SizedBox(height: 12),
                        Text(
                          'Looking for a car rental?',
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Book now and enjoy 10% off your first week's rental!",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // white section
                  Container(
                    padding: EdgeInsets.fromLTRB(16, 170, 16, 16),
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ],
              ),
              Positioned(
                left: 16,
                top: 160,
                right: 16,
                child: PickupDateSection(),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                WhyCarCirusWidget(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                      child: Text(
                        'How to rent car',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 230,
                      child: ListView.builder(
                        padding: EdgeInsets.only(left: 16),
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.howToRentCarList.length,
                        itemBuilder: (context, index) {
                          final data = controller.howToRentCarList[index];

                          return Container(
                            width: 241,
                            margin: EdgeInsets.only(right: 16),
                            padding: EdgeInsets.fromLTRB(16, 4, 16, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: AppColors.lineColor),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.greenColor,
                                  ),
                                  child: Text(
                                    "${index + 1}",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                Text(
                                  data['title'] ?? '',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  data['desc'] ?? '',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
