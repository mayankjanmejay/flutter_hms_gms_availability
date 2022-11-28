library flutter_hms_gms_availibity_av2;
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
/// A Calculator.


class FlutterHmsGmsAvailability {
  static const MethodChannel _channel =
      const MethodChannel('flutter_hms_gms_availability');
      
/// Check if GMS/ HMS is available for platform. Web check returns false & UnimplementedError()
  static Future<bool?> get isHmsAvailable async {
    if (kIsWeb)
    {

      return false;
      throw UnimplementedError(
        'Unable to detect GMS/ HMS on Flutter web. Please integrate FCM in /web flutter project'
      );     
    }
    return await _channel.invokeMethod('isHmsAvailable');
  }

/// Check if GMS/ HMS is available for platform. Web check returns false & UnimplementedError()
  static Future<bool?> get isGmsAvailable async {
    if (kIsWeb)
    {
      return false;
      throw UnimplementedError(
        'Unable to detect GMS/ HMS on Flutter web. Please integrate FCM in /web flutter project'
      );     
    }
    return await _channel.invokeMethod('isGmsAvailable');
  }
}
