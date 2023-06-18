import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sentc_flutter_secure_storage_method_channel.dart';

abstract class SentcFlutterSecureStoragePlatform extends PlatformInterface {
  /// Constructs a SentcFlutterSecureStoragePlatform.
  SentcFlutterSecureStoragePlatform() : super(token: _token);

  static final Object _token = Object();

  static SentcFlutterSecureStoragePlatform _instance = MethodChannelSentcFlutterSecureStorage();

  /// The default instance of [SentcFlutterSecureStoragePlatform] to use.
  ///
  /// Defaults to [MethodChannelSentcFlutterSecureStorage].
  static SentcFlutterSecureStoragePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SentcFlutterSecureStoragePlatform] when
  /// they register themselves.
  static set instance(SentcFlutterSecureStoragePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
