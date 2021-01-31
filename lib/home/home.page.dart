import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_giphy/home/home.controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(),
    );
  }
}
