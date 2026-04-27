import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:shopping_fast/app/modules/dashboard/controller/dashboard_controller.dart';
import 'package:shopping_fast/app/modules/home/controller/home_controller.dart';
import '../../home/view/home_page.dart';
import '../../List_shopping/view/List.dart';
import '../../user_profil/view/Profil_page.dart';
import '../../wallet/view/wallet_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DasboartState();
}

class _DasboartState extends State<Dashboard> {
  final DashboardController controller = Get.find<DashboardController>();
  final searchCtrl = Get.find<HomeController>();

  final List<Widget> screen = [
    HomePage(),
    ProfilPage(),
    WalletPage(),
    ListItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(color: Colors.transparent),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 8),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue,
              child: Icon(Icons.verified_outlined, size: 30, color: Colors.white),
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hola, welcome to", style: TextStyle(fontSize: 16)),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.blue,
                      Colors.blueAccent,
                      Colors.lightBlueAccent,
                      Colors.blue,
                    ],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: Text(
                  "ShoppingFast",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF00d2ff),
                    Colors.lightBlue,
                    Colors.blueAccent,
                    Color(0xFF3a7bd5),
                  ],
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications, color: Colors.white),
              ),
            ),
            SizedBox(width: 4),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle_outlined, color: Colors.blue),
            ),
            SizedBox(width: 8),
          ],
          bottom: (controller.curretIndex.value == 0)
              ? PreferredSize(
                  preferredSize: Size.fromHeight(70),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 8),
                    child: SizedBox(
                    height: 45,
                    child: TextField(
                      controller: searchCtrl.search,
                      decoration: InputDecoration(
                        labelText: "Search",
                        fillColor: Color.fromARGB(255, 178, 202, 244),
                        focusColor: Colors.blueAccent,
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                    ),
                  ),
                )
              : null,
          shadowColor: Colors.black.withOpacity(0.5),
        ),
        body: IndexedStack(
          index: controller.curretIndex.value,
          children: screen,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.curretIndex.value,
          onTap: (index) => controller.changesIndex(index),
          selectedItemColor: Colors.blueAccent,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.home, size: 20)],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home, size: 18),
                  Text("Shopping", style: TextStyle(fontSize: 10)),
                ],
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.add_shopping_cart_outlined, size: 20)],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add_shopping_cart_outlined, size: 18),
                  Text("Daftar", style: TextStyle(fontSize: 10)),
                ],
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.wallet, size: 20)],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.wallet, size: 18),
                  Text("wallet", style: TextStyle(fontSize: 10)),
                ],
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.account_circle_outlined, size: 20)],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.account_circle_outlined, size: 18),
                  Text("Profile", style: TextStyle(fontSize: 10)),
                ],
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
