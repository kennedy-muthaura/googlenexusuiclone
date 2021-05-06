import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  static int mobileWidth = 600;
  static int tabletWidth = 1024;

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveWidget({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < ResponsiveWidget.mobileWidth;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > ResponsiveWidget.mobileWidth &&
        MediaQuery.of(context).size.width < ResponsiveWidget.tabletWidth;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 1024;
  }

  static bool isWeb(BuildContext context) {
    return kIsWeb;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobile;
        } else if (constraints.maxWidth > mobileWidth &&
            constraints.maxWidth < tabletWidth) {
          return tablet ?? mobile;
        } else {
          return desktop;
        }
      },
    );
  }
}
