import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

//TODO check if there is a built in way to check these platforms without using getx package
class CustomAdaptPlatFormWidget extends StatelessWidget {
  //change the platform being developed from being non null to required
  final Widget? iosWidget;
  final Widget? androidWidget;
  final Widget? webWidget;
  final Widget? linuxWidget;
  final Widget? windowsWidget;
  final Widget? macosWidget;
  final Widget? fuschiaWidget;

  const CustomAdaptPlatFormWidget(
      {Key? key,
      this.iosWidget,
      this.androidWidget,
      this.webWidget,
      this.linuxWidget,
      this.windowsWidget,
      this.macosWidget,
      this.fuschiaWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return webWidget ?? DefaultPlatformApp(platformname: "web");
    } else if (GetPlatform.isAndroid) {
      return androidWidget ?? DefaultPlatformApp(platformname: "android");
    } else if (GetPlatform.isIOS) {
      return iosWidget ?? DefaultPlatformApp(platformname: "Ios");
    } else if (GetPlatform.isLinux) {
      return linuxWidget ?? DefaultPlatformApp(platformname: "linux");
    } else if (GetPlatform.isWindows) {
      return windowsWidget ?? DefaultPlatformApp(platformname: "windows");
    } else if (GetPlatform.isMacOS) {
      return macosWidget ?? DefaultPlatformApp(platformname: "macos");
    } else if (GetPlatform.isFuchsia) {
      return fuschiaWidget ?? DefaultPlatformApp(platformname: "fuschia");
    } else {
      return Center(
        child: Text('the widget of this platform was not provided'),
      );
    }
  }
}

class DefaultPlatformApp extends StatelessWidget {
  final String platformname;

  const DefaultPlatformApp({Key? key, required this.platformname})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Default App'),
        ),
        body: Container(
          child: Center(
            child: Text(
                "this is appearing because the adaptive widget for this platform is not provided, platform is $platformname"),
          ),
        ),
      ),
    );
  }
}
