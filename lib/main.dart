import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:poultry/buttombar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ButtomBar(),
    );
  }
}
