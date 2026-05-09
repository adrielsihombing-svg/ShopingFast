import 'package:flutter/material.dart';
import 'package:shopping_fast/app/data/models/items_models.dart';

class _ItemCard extends StatefulWidget {
  final Items data;
  const _ItemCard({required this.data});

  @override
  State<_ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<_ItemCard> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),   
      onTapUp: (_) => setState(() => _isPressed = false),    
      onTapCancel: () => setState(() => _isPressed = false), 
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        curve: Curves.easeOut,
        transform: Matrix4.translationValues(
          0,
          _isPressed ? 0 : -6, 
          0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(_isPressed ? 0.1 : 0.3),
              blurRadius: _isPressed ? 4 : 12,
              offset: Offset(0, _isPressed ? 2 : 6), 
            ),
          ],
        ),
        child: Card(
          elevation: 0, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(child: Text(widget.data.nama ?? '')),
        ),
      ),
    );
  }
}