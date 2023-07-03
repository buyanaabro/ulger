import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ulgermn/providers/common.dart';
import 'package:ulgermn/screens/base.dart';
import 'global_keys.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CommonProvider()),
      ],
      child: MaterialApp(
        title: "Ulger",
        navigatorKey: GlobalKeys.navigatorKey,
        home: BasePage(),
      ),
    );
  }
}
