import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:shopping_fast/app/modules/home/bindings/home_bindings.dart';

class DashboardController extends GetxController{
    var curretIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    changesIndex(0);
  }

  void changesIndex(int index){
    delate(index);
    curretIndex.value = index;
    register(index);
  }

  void register(int index){
    switch(index){
      case 0 : HomeBindings().dependencies(); break;
      case 1 : break;
      case 2 : break;
      case 3 : break;
    }
  }

  void delate(int index){
    switch(index){
      case 0 : HomeBindings().destroy(); break;
      case 1 : break;
      case 2 : break;
      case 3 : break;
    }
  }
}