import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class DashboardController extends GetxController{
    var curretIndex = 0.obs;

  void changesIndex(int index){
    curretIndex.value = index;
  }
}