//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <flutter_secure_storage_windows/flutter_secure_storage_windows_plugin.h>
#include <sentc/sentc_plugin_c_api.h>
#include <sentc_flutter_secure_storage/sentc_flutter_secure_storage_plugin_c_api.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  FlutterSecureStorageWindowsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FlutterSecureStorageWindowsPlugin"));
  SentcPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("SentcPluginCApi"));
  SentcFlutterSecureStoragePluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("SentcFlutterSecureStoragePluginCApi"));
}
