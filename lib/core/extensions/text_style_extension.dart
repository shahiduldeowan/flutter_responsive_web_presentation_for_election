import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme/app_colors.dart' show kHeightLightColor;
import '../utils/responsive_layout.dart';

extension AppTextStyleExt on BuildContext {
  TextStyle candidateTextStyle([FontWeight? fontWeight]) {
    return Theme.of(this).textTheme.bodyLarge!.copyWith(
          fontSize: getSize(tab: 24.sp, mobile: 24.sp, desktop: 13.sp),
          fontWeight: fontWeight,
        );
  }

  TextStyle boardOfDirectorTextStyle([FontWeight? fontWeight]) {
    return Theme.of(this).textTheme.bodyLarge!.copyWith(
          fontSize: getSize(tab: 24.sp, mobile: 24.sp, desktop: 10.sp),
          fontWeight: fontWeight,
        );
  }

  TextStyle candidateTotalBallotTextStyle({double? mobile, double? tab, double? desktop}) {
    return Theme.of(this).textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.w800,
          color: kHeightLightColor,
          fontSize: getSize(mobile: mobile?.sp ?? 28.sp, tab: tab?.sp ?? 28.sp, desktop: desktop?.sp ?? 30.sp),
        );
  }

  TextStyle totalBallotTextStyle() {
    return Theme.of(this).textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.w800,
          color: kHeightLightColor,
          fontSize: getSize(mobile: 24, tab: 40.sp, desktop: 30.sp),
        );
  }

  TextStyle indexTextStyle({double? mobile, double? tab, double? desktop}) {
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: getSize(
        tab: tab ?? 28,
        desktop: desktop ?? 16,
        mobile: mobile ?? 22,
      ),
    );
  }

  double? getSize({double? mobile, double? tab, double? desktop}) {
    if (ResponsiveLayout.isDesktop(this)) {
      return desktop;
    } else if (ResponsiveLayout.isTablet(this)) {
      return tab;
    } else {
      return mobile;
    }
  }
}
