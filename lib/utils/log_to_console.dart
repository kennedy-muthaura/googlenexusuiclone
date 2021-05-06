import 'package:flutter/foundation.dart';

//this prints to console only in debug mode
void safePrint(String message) {
  if (kDebugMode) {
    print(message);
  }
}
