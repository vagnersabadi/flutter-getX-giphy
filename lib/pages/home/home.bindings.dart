import 'package:get/get.dart';
import 'package:getx_giphy/pages/home/home.controller.dart';

/*
 * Responsvavel por instaciar os controllers atraves de lazy loading
 */

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
