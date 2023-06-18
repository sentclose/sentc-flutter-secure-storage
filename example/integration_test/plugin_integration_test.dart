import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sentc/sentc.dart';
import 'package:sentc_flutter_secure_storage/sentc_flutter_secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  testWidgets("init with new storage", (widgetTester) async {
    final androidV5Test = dotenv.env["SENTC_TEST_ANDROID_V5"];

    FlutterSecureStorage? storage;

    if (androidV5Test != null && androidV5Test == "true") {
      //use a storage with other options
      AndroidOptions getAndroidOptions() => const AndroidOptions(
            encryptedSharedPreferences: true,
          );

      storage = FlutterSecureStorage(aOptions: getAndroidOptions());
    }

    final init = await Sentc.init(
      appToken: "5zMb6zs3dEM62n+FxjBilFPp+j9e7YUFA+7pi6Hi",
      baseUrl: dotenv.env["SENTC_TEST_URL"],
      storage: SecureStorage(storage), //init with the other storage
    );

    expect(init, null);
  });

  late User user;
  late String userId;
  late Group sentcGroup;

  testWidgets("user register", (widgetTester) async {
    userId = await Sentc.register("userIdentifier1", "password");
  });

  testWidgets("login user", (widgetTester) async {
    user = await Sentc.login("userIdentifier1", "password");

    expect(user.userId, userId);
  });

  testWidgets("create a group", (widgetTester) async {
    final groupId = await user.createGroup();

    sentcGroup = await user.getGroup(groupId);

    expect(sentcGroup.groupId, groupId);
  });

  testWidgets("encrypt both strings after kr", (widgetTester) async {
    final encrypt = await sentcGroup.encryptString("hello there £ Я a a 👍");

    final decrypted = await sentcGroup.decryptString(encrypt);

    expect(decrypted, "hello there £ Я a a 👍");
  });

  testWidgets("delete the group", (widgetTester) async {
    await sentcGroup.deleteGroup();
  });

  testWidgets("delete user", (widgetTester) async {
    await user.deleteUser("password");
  });
}
