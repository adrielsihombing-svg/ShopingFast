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
        deskripsi: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor est nec metus vulputate, ac vestibulum purus suscipit. Nullam pretium ultrices neque, non ultricies nisi venenatis vitae.",
        stock: 10,
        toko: "Toko Mikasa"
      ),
      Items(
        harga: 30000,
        nama: "mangkok",
        img: 'tokyo.jpg',
        ranting: 4,
        deskripsi: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor est nec metus vulputate, ac vestibulum purus suscipit. Nullam pretium ultrices neque, non ultricies nisi venenatis vitae.",
        stock: 5,
        toko: "Toko Mikasa"
      ),
      Items(
        harga: 10000,
        nama: "Piring",
        img: 'tokyo.jpg',
        ranting: 5,
        deskripsi: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor est nec metus vulputate, ac vestibulum purus suscipit. Nullam pretium ultrices neque, non ultricies nisi venenatis vitae.",
        stock: 5,
        toko: "Toko Kurumi (my bini)"
      ),
      Items(
        harga: 25000,
        nama: "Nampan",
        img: 'tokyo.jpg',
        ranting: 5,
        deskripsi: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor est nec metus vulputate, ac vestibulum purus suscipit. Nullam pretium ultrices neque, non ultricies nisi venenatis vitae.",
        stock: 12,
        toko: "Toko kurumi"
      ),
      Items(
        harga: 17000,
        nama: "Nasi Lemak",
        img: 'tokyo.jpg',
        ranting: 5,
        deskripsi: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor est nec metus vulputate, ac vestibulum purus suscipit. Nullam pretium ultrices neque, non ultricies nisi venenatis vitae.",
        stock: 5,
        toko: "Warung kurumi-chan"
      ),
      Items(
        harga: 10000,
        nama: "Sayur Bayam",
        img: 'tokyo.jpg',
        ranting: 5,
        deskripsi: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor est nec metus vulputate, ac vestibulum purus suscipit. Nullam pretium ultrices neque, non ultricies nisi venenatis vitae.",
        stock: 5,
        toko: "Toko Samudra"
      ),
      Items(
        harga: 10000,
        nama: "Piring",
        img: 'tokyo.jpg',
        ranting: 5,
        deskripsi: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor est nec metus vulputate, ac vestibulum purus suscipit. Nullam pretium ultrices neque, non ultricies nisi venenatis vitae.",
        stock: 5,
        toko: "Toko Amba"
      )
    ];
  }
}
