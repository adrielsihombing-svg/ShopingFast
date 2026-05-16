import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class CommentController extends GetxController{
  final ctrl = new TextEditingController();
  final Map<int, List<String>> kometarPerCard = {};

  List<String> getKomentar(int cardId) {
      return kometarPerCard[cardId] ?? [];
  }

  void addKomentar(int cardId, String teks){
    if(!kometarPerCard.containsKey(cardId)){
      kometarPerCard[cardId] = [];
    }
    kometarPerCard[cardId]!.insert(0, teks);
  }

  @override
  void onClose() {
    ctrl.dispose();
    super.onClose();
  }
}