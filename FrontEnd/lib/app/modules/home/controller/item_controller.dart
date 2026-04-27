import 'package:get/state_manager.dart';
import 'package:shopping_fast/app/data/models/items_models.dart';
import 'package:shopping_fast/app/data/providers/item_provider.dart';

class ItemController extends GetxController{
  final ItemProvider ItemsAPI = ItemProvider();
  var listItem = <Items>[];
  var isLoading = true.obs;

  @override
  void onReady() {
    super.onReady();
    ambilData();
  }

  Future<void> ambilData() async {
    try {
      isLoading(true);
      var data = await ItemsAPI.fetchItems();
      listItem.assignAll(data);
    } finally {
      isLoading(false);
    }
  }
}