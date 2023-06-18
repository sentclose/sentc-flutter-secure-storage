#ifndef FLUTTER_PLUGIN_SENTC_FLUTTER_SECURE_STORAGE_PLUGIN_H_
#define FLUTTER_PLUGIN_SENTC_FLUTTER_SECURE_STORAGE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace sentc_flutter_secure_storage {

class SentcFlutterSecureStoragePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  SentcFlutterSecureStoragePlugin();

  virtual ~SentcFlutterSecureStoragePlugin();

  // Disallow copy and assign.
  SentcFlutterSecureStoragePlugin(const SentcFlutterSecureStoragePlugin&) = delete;
  SentcFlutterSecureStoragePlugin& operator=(const SentcFlutterSecureStoragePlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace sentc_flutter_secure_storage

#endif  // FLUTTER_PLUGIN_SENTC_FLUTTER_SECURE_STORAGE_PLUGIN_H_
