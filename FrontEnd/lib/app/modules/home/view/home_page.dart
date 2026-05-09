import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:shopping_fast/app/data/models/items_models.dart';
import 'package:shopping_fast/app/modules/home/controller/home_controller.dart';
import 'package:shopping_fast/app/modules/home/controller/item_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.find<ItemController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.listItem.isEmpty) {
          return const Center(child: Text("Data Kosong"));
        }

        return GridView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: controller.listItem.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return _buildCardItem(controller.listItem[index]);
          },
        );
      }),
    );
  }

  Widget _buildCardItem(Items data) {
    return Card(
      child: Center(
        child: Text(data.nama ?? '')
        )
      );
  }
}
