import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:shopping_fast/app/modules/dashboard/controller/dashboard_controller.dart';

class DashboardBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}