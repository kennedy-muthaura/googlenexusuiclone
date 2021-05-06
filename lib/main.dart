import 'package:flutter/material.dart';

import 'intial_setup.dart';
import 'presentation/ui/web_ui/web_ui_main.dart';
import 'presentation/widgets/adaptive_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await intialSetup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAdaptPlatFormWidget();
  }
}
