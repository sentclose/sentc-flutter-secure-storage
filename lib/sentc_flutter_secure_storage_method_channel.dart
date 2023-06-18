import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sentc_flutter_secure_storage_platform_interface.dart';

/// An implementation of [SentcFlutterSecureStoragePlatform] that uses method channels.
class MethodChannelSentcFlutterSecureStorage extends SentcFlutterSecureStoragePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sentc_flutter_secure_storage');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
