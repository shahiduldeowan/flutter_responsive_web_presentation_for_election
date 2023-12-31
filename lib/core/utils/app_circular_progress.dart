import 'package:flutter/material.dart';

Widget appCircularProgress([double? progress]) => Center(
      child: CircularProgressIndicator.adaptive(value: progress),
    );
