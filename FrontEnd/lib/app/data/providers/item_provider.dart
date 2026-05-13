import 'package:flutter/material.dart';
import 'package:shopping_fast/app/data/models/items_models.dart';

class ItemProvider {
  Future<List<Items>> fetchItems() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      Items(
        harga: 20000,
        nama: "Pisau",
        img: 'tokyo.jpg',
        ranting: 3.4,
        deskripsi: null,
        stock: 10,
      ),
      Items(
        harga: 30000,
        nama: "mangkok",
        img: 'tokyo.jpg',
        ranting: 4,
        deskripsi: null,
        stock: 5,
      ),
      Items(
        harga: 10000,
        nama: "Piring",
        img: 'tokyo.jpg',
        ranting: 5,
        deskripsi: null,
        stock: 5,
      ),
      Items(
        harga: 10000,
        nama: "Piring",
        img: 'tokyo.jpg',
        ranting: 5,
        deskripsi: null,
        stock: 5,
      ),
      Items(
        harga: 10000,
        nama: "Piring",
        img: 'tokyo.jpg',
        ranting: 5,
        deskripsi: null,
        stock: 5,
      ),
      Items(
        harga: 10000,
        nama: "Piring",
        img: 'tokyo.jpg',
        ranting: 5,
        deskripsi: null,
        stock: 5,
      ),
      Items(
        harga: 10000,
        nama: "Piring",
        img: 'tokyo.jpg',
        ranting: 5,
        deskripsi: null,
        stock: 5,
      )
    ];
  }
}
