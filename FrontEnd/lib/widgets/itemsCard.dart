import 'package:flutter/material.dart';
import 'package:shopping_fast/app/data/models/items_models.dart';

class ItemCard extends StatefulWidget {
  final Items data;
  const ItemCard({required this.data});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 180, width: 50,),
                Text("Nama : ${widget.data.nama}" ?? ''),
                Text("Harga : ${widget.data.harga.toString()}" ?? ''),
                Text("Stock : ${widget.data.stock.toString()}" ?? ''),
              ],
            ),
          ),
          )
    );
  }
}