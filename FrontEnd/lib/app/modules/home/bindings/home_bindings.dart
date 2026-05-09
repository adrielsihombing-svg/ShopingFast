import 'package:get/instance_manager.dart';
import 'package:shopping_fast/app/modules/home/controller/home_controller.dart';
import 'package:shopping_fast/app/modules/home/controller/item_controller.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut <ItemController>(() => ItemController());
    Get.lazyPut <HomeController>(() => HomeController());
  }

  void destroy(){
    Get.delete<ItemController>();
    Get.delete<HomeController>();
  }
}
