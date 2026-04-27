import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController{
    final search = TextEditingController();

    @override
  void dispose() {
    super.dispose();
    search.dispose();
  }
}