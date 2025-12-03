import 'package:flutter/material.dart';
import 'package:timesync/core/values/app_colors.dart';

class AppConstants {
  static const TextStyle digitalClock = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 64,
    fontFamily: 'Courier',
    fontWeight: FontWeight.bold,
    letterSpacing: 4.0,
  );
  static const TextStyle label = TextStyle(
    color: AppColors.greyColor,
    fontSize: 14,
    letterSpacing: 1.5,
  );
}