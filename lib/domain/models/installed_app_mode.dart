import 'package:flutter/material.dart';

class AvailableApp {
  final String appname;
  final String assetIcon;
  final bool isElevated;
  final Color cardBackgroundColor;
  final bool isAvailableInHomePageview;

  AvailableApp({
    required this.appname,
    required this.assetIcon,
    this.isElevated = false,
    this.cardBackgroundColor = Colors.transparent,
    this.isAvailableInHomePageview = false,
  });
}


// apps will be represented in grid using a list containing apps  which will also facilitate searching