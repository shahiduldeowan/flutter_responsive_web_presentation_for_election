import 'package:flutter/material.dart';

Widget appCircularProgressWidget([double? progress]) => Center(
      child: CircularProgressIndicator.adaptive(value: progress),
    );
