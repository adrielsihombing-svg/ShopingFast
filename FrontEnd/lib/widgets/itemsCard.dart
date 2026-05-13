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
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 4,
        child: SizedBox(
          width: 100,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/img/${widget.data.img}',
                width: double.infinity,
                height: 110,
                fit: BoxFit.cover,
              ),
      
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(""),
                          Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: Text(
                              'Product : ${widget.data.nama}',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: Text(
                              'Price : Rp${widget.data.harga},0-',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 2),
                          Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: Text(
                              widget.data.deskripsi ?? "Cek...",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
      
                      Padding(
                        padding: EdgeInsets.only(right: 5, top: 2),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.blue, size: 13,),
                            Text(
                              "${widget.data.ranting}",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
