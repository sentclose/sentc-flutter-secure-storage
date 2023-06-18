import 'package:flutter/material.dart';
import 'package:sentc/sentc.dart';
import 'package:sentc_flutter_secure_storage/sentc_flutter_secure_storage.dart';

void main() async {
  await Sentc.init(
    appToken: "5zMb6zs3dEM62n+FxjBilFPp+j9e7YUFA+7pi6Hi",
    storage: SecureStorage(), //init with the other storage
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const Center(
          child: Text('Running on:'),
        ),
      ),
    );
  }
}
