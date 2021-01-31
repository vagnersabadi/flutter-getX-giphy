import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_giphy/home/home.bindings.dart';
import 'package:getx_giphy/home/home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: HomeBindings(),
        ),
      ],
    );
  }
}
