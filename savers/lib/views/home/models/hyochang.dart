import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HealthConnectManager {
  // Updated method channel name
  static const _platform =
      MethodChannel('com.dataconnect.heartnet/healthconnect');

  // Initializes Health Connect and requests necessary permissions
  static Future<bool> initializeHealthConnect() async {
    try {
      final bool permissionsGranted =
          await _platform.invokeMethod('initializeHealthConnect');
      return permissionsGranted;
    } on PlatformException catch (e) {
      print("Failed to initialize Health Connect: '\${e.message}'.");
      return false;
    }
  }

  // Additional method channel calls can be implemented here as needed
}
