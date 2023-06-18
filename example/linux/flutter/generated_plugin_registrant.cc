//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <flutter_secure_storage_linux/flutter_secure_storage_linux_plugin.h>
#include <sentc/sentc_plugin.h>
#include <sentc_flutter_secure_storage/sentc_flutter_secure_storage_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) flutter_secure_storage_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FlutterSecureStorageLinuxPlugin");
  flutter_secure_storage_linux_plugin_register_with_registrar(flutter_secure_storage_linux_registrar);
  g_autoptr(FlPluginRegistrar) sentc_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SentcPlugin");
  sentc_plugin_register_with_registrar(sentc_registrar);
  g_autoptr(FlPluginRegistrar) sentc_flutter_secure_storage_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SentcFlutterSecureStoragePlugin");
  sentc_flutter_secure_storage_plugin_register_with_registrar(sentc_flutter_secure_storage_registrar);
}
