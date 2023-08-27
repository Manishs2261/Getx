import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxuse/src/home/homescreen.dart';
import 'package:getxuse/src/language/language.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Language(),
      locale: Locale('en','US'),

      fallbackLocale: Locale('en','US'),

      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}


