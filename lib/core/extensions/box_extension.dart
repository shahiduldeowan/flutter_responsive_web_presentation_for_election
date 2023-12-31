import 'package:flutter/material.dart';

import '../../config/theme/app_colors.dart' show kBoxShadowColor, kCardColor;
import '../constants/sizes.dart' show itemBorderRadius, padding;

extension BoxExtension on Widget {
  Container addShadowBox() {
    return Container(
      decoration: ShapeDecoration(
        color: kCardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(itemBorderRadius),
          side: const BorderSide(color: kBoxShadowColor),
        ),
        shadows: const [
          BoxShadow(
            color: kBoxShadowColor,
            blurRadius: 15,
            offset: Offset(0, 5),
            spreadRadius: 0,
          )
        ],
      ),
      child: this,
    );
  }

  Container addShadowBoxForBallot() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
      decoration: ShapeDecoration(
        color: kCardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: const BorderSide(color: kBoxShadowColor),
        ),
        shadows: const [
          BoxShadow(
            color: kBoxShadowColor,
            blurRadius: 8,
            offset: Offset(0, 3),
            spreadRadius: 0,
          )
        ],
      ),
      child: this,
    );
  }
}
