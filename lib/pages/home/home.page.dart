import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_giphy/pages/home/home.controller.dart';

import 'components/grid_gifs.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: controller.obx(
        (state) => GridGifs(state),
        onError: (error) => Center(
          child: Text(error),
        ),
      ),
    );
  }
}
