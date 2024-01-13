import 'dart:ui' show Color;

import '../../../../config/theme/app_colors.dart' show kEliminateColor, kHeightLightColor;
import './result_entity.dart';

mixin PublishResultColorEntity on ResultEntity {
  Color get getIndexColor => isElected ? kHeightLightColor : kEliminateColor;
}
