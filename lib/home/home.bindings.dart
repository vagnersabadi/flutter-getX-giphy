import 'package:get/get.dart';
import 'package:getx_giphy/home/home.controller.dart';

/*
 * Responsvavel por instaciar os controllers atraves de lazy loading
 */

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
