import 'package:get/instance_manager.dart';
import 'package:shopping_fast/app/modules/home/controller/comment_controller.dart';

class CommentBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CommentController>(() => CommentController());
  }
}