#include "include/sentc_flutter_secure_storage/sentc_flutter_secure_storage_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "sentc_flutter_secure_storage_plugin.h"

void SentcFlutterSecureStoragePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  sentc_flutter_secure_storage::SentcFlutterSecureStoragePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
