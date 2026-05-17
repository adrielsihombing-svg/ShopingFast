import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 8, right: 8),
        child: Column(
          children: [
            Card(
              clipBehavior: Clip.hardEdge,
              child: Container(
                width: 350,
                height: 150,
                color: Colors.grey,
                child: Column(),
              ),
            )
          ],
        ),
      ),
    );
  }
}