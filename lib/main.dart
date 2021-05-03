import 'package:flutter/material.dart';
import 'package:bcic/ui/view/home_view.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(DevicePreview(builder: (context) => MyApp(),));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: DevicePreview.appBuilder,
      home: HomeView());
  }
}