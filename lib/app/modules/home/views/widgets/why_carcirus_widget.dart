import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WhyCarCirusWidget extends StatelessWidget {
  const WhyCarCirusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 6, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/images/Why CarCirus.svg'),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/money.svg'),
                    SizedBox(width: 12),
                    Text(
                      "Start with \$300/\nweek",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3F3F3F),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/reasonable.svg'),
                    SizedBox(width: 12),
                    Text(
                      "Reasonable price",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3F3F3F),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/maintain-car.svg'),
                    SizedBox(width: 12),
                    Text(
                      "Well maintained\ncars",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3F3F3F),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/driver-with-car.svg'),
                    SizedBox(width: 12),
                    Text(
                      "Drive with\nunlimited mileage",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3F3F3F),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
