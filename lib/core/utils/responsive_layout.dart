import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tab,
    required this.desktop,
  });

  final Widget mobile;
  final Widget tab;
  final Widget desktop;

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) => MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1100;

  static double sizeDependsOnDevice(BuildContext context, {double? mobile, double? tab, double? desktop}) {
    if (isMobile(context)) {
      return mobile ?? 0.0;
    } else if (isTablet(context)) {
      return tab ?? 0.0;
    }
    return desktop ?? 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return desktop;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 650) {
          return tab;
        }
        // Or less then that we called it mobile
        else {
          return mobile;
        }
      },
    );
  }
}
