import 'dart:typed_data';

import 'package:sentc/sentc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// The storage implementation for flutter_secure_storage
class SecureStorage implements StorageInterface {
  late FlutterSecureStorage storage;

  SecureStorage([FlutterSecureStorage? storage]) {
    if (storage != null) {
      this.storage = storage;
    } else {
      this.storage = const FlutterSecureStorage();
    }
  }

  ///Use file storage for file
  @override
  Future<void> cleanStorage() {
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String key) async {
    await storage.delete(key: key);
  }

  ///Use file storage for file
  @override
  Future<String> getDownloadUrl() {
    throw UnimplementedError();
  }

  @override
  Future<String?> getItem(String key) {
    return storage.read(key: key);
  }

  @override
  Future<InitReturn> init() async {
    try {
      await storage.read(key: "test_read");

      return InitReturn(true, null, null);
    } catch (e) {
      return InitReturn(false, e.toString(), null);
    }
  }

  @override
  Future<void> set(String key, String item) async {
    await storage.write(key: key, value: item);
  }

  ///Use file storage for file
  @override
  Future<void> storePart(Uint8List chunk) async {
    throw UnimplementedError();
  }
}
