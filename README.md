# sentc_flutter_secure_storage

This plugin uses the flutter secure storage to securely store the keys on the native device.

To change the storage, just set the storage option in the init function.

```dart
import 'package:sentc/sentc.dart';
import 'package:sentc_flutter_secure_storage/sentc_flutter_secure_storage.dart';

void main() async {
  
  await Sentc.init(
    appToken: "5zMb6zs3dEM62n+FxjBilFPp+j9e7YUFA+7pi6Hi",
    storage: SecureStorage(), //init with the other storage
  );
}
```

To install and configure the storage please follow the [flutter_secure_storage instructions](https://github.com/mogol/flutter_secure_storage).

You can also pre configure the storage and set it then to sentc. This is useful if you need to set other options for the storage.

```dart
import 'package:sentc/sentc.dart';
import 'package:sentc_flutter_secure_storage/sentc_flutter_secure_storage.dart';

void main() async {

  //set other android option to use android encryptedSharedPreferences (only for Android >= V5)
  AndroidOptions getAndroidOptions() => const AndroidOptions(
    encryptedSharedPreferences: true,
  );

  final storage = FlutterSecureStorage(aOptions: getAndroidOptions());
  
  await Sentc.init(
    appToken: "5zMb6zs3dEM62n+FxjBilFPp+j9e7YUFA+7pi6Hi",
    storage: SecureStorage(storage), //set the storage with options
  );
}
```