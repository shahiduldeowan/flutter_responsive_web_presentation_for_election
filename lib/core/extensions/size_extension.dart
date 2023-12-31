import 'package:flutter/material.dart';

import '../constants/sizes.dart' show boxDesktopPadding, boxMobilePadding, boxTabPadding;
import '../utils/responsive_layout.dart';

extension SizeExtension on BuildContext {
  SizedBox get toHeight => SizedBox(
        height: getSizes(
          mobile: boxMobilePadding,
          tab: boxTabPadding,
          desktop: boxDesktopPadding,
        ),
      );

  SizedBox get toWidth => SizedBox(
        width: getSizes(
          mobile: boxMobilePadding,
          tab: boxTabPadding,
          desktop: boxDesktopPadding,
        ),
      );

  double? getSizes({double? mobile, double? tab, double? desktop}) {
    if (ResponsiveLayout.isDesktop(this)) {
      return desktop;
    } else if (ResponsiveLayout.isTablet(this)) {
      return tab;
    } else {
      return mobile;
    }
  }
}
