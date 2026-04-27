import 'package:shopping_fast/app/data/models/items_models.dart';

class ItemProvider {
  Future<List<Items>> fetchItems() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      Items(
        harga: 20000,
        nama: "Pisau",
        img: null,
        ranting: 3.4,
        deskripsi: null,
        stock: 10,
      ),
      Items(
        harga: 30000,
        nama: "mangkok",
        img: null,
        ranting: 4,
        deskripsi: null,
        stock: 5,
      ),
    ];
  }
}
