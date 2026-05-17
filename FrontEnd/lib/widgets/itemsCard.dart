import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:shopping_fast/app/data/models/items_models.dart';
import 'package:shopping_fast/app/routes/routes.dart';

class ItemCard extends StatefulWidget {
  final Items data;
  final int id;
  const ItemCard({required this.data, required this.id, Key? key})
    : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 4,
      child: InkWell(
        onTap: () {
          Get.toNamed(
            Routes.cardItem,
            arguments: {'cardId': widget.id, 'data': widget.data},
          );
        },
        splashColor: const Color.fromARGB(255, 148, 184, 247),
        child: ClipRRect(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/img/${widget.data.img}',
                  width: double.infinity,
                  height: 135,
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
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                '${widget.data.nama}',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Rp${widget.data.harga},0-',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFB37C3A),
                                ),
                              ),
                            ),
                            SizedBox(height: 2),
                        
                            Padding(
                              padding: const EdgeInsets.only(left: 3.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 13,
                                    backgroundImage: AssetImage(
                                      "assets/img/${widget.data.img}",
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    limitText("${widget.data.toko}", 11),
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 2),
                          ],
                        ),

                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5, top: 2),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.blue, size: 13),
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
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 2.0, right: 2, top: 1, bottom: 1),
                          child: Text(
                            widget.data.deskripsi ?? "Cek...",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(fontSize: 11),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String limitText(String text, int maxLength) {
  if (text.length > maxLength) {
    return '${text.substring(0, maxLength)}...';
  }
  return text;
}
