import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlatformWidget extends StatelessWidget {
  final Widget? iosWidget;
  final Widget? androidWidget;
  final Widget? linuxWidget;
  final Widget? windowsWidget;
  final Widget? macWidget;
  final Widget? webWidget;

  const PlatformWidget(
      {Key? key,
      this.iosWidget,
      this.androidWidget,
      this.linuxWidget,
      this.windowsWidget,
      this.macWidget,
      this.webWidget})
      : super(key: key);

  Widget checkWidgetAccordingtoPlatform() {
    if (GetPlatform.isAndroid) {
      return androidWidget ?? Text('android widget not provided');
    } else if (GetPlatform.isIOS) {
      return iosWidget ?? androidWidget ?? Text('ios widget not provied');
    } else if (GetPlatform.isWeb) {
      return webWidget ?? Text('web widget not provied');
    } else if (GetPlatform.isWindows) {
      return windowsWidget ?? Text('web widget not provied');
    } else if (GetPlatform.isLinux) {
      return linuxWidget ?? Text('linux widget not provied');
    } else if (GetPlatform.isMacOS) {
      return macWidget ?? Text('macos widget not provied');
    } else {
      return Text("widget for this os platform was not provided in the code");
    }
  }

  @override
  Widget build(BuildContext context) {
    return checkWidgetAccordingtoPlatform();
  }
}
