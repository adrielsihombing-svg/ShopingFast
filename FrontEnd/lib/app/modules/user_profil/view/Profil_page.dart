import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  int selectedIndex = 1;

  final List<NavItem> navItem = const [
    NavItem(icon: Icons.person_outline, label: 'Profile'),
    NavItem(icon: Icons.location_on_outlined, label: 'Addresses'),
    NavItem(icon: Icons.credit_card_outlined, label: 'Payment Methods'),
    NavItem(icon: Icons.notifications_outlined, label: 'Notifications'),
    NavItem(icon: Icons.shield_outlined, label: 'Security'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(Icons.notifications),
          ),
        ],
        title: Row(
          children: [
            Text(
              "My Account",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            Icon(Icons.supervised_user_circle),
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                const Color.fromARGB(255, 106, 154, 239),
                const Color.fromARGB(255, 121, 183, 235),
                const Color.fromARGB(255, 98, 153, 249),
                Colors.blue,
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              width: 350,
              height: 200,
              child: Card(
                clipBehavior: Clip.hardEdge,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue,
                        const Color.fromARGB(255, 106, 154, 239),
                        const Color.fromARGB(255, 121, 183, 235),
                        const Color.fromARGB(255, 98, 153, 249),
                        Colors.blue,
                      ],
                      begin: AlignmentGeometry.topLeft,
                      end: AlignmentGeometry.bottomRight,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 10),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: const AssetImage(
                              "assets/img/tokyo.jpg",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Adriel Sihombing",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Adriel@Example.com",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Member since - May 2026",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 30, right: 30),
                        child: Column(
                          children: [
                            Container(
                              width: 320,
                              height: 1,
                              color: Colors.white,
                            ),
                            SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.shopping_cart_outlined,
                                      size: 23,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "jumlah",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 12),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.local_shipping,
                                      size: 23,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "jumlah",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 12),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.check_circle_outline_outlined,
                                      size: 23,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "jumlah",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 10,
                    left: 12,
                    right: 3,
                  ),
                  child: Text(
                    "INFORMATION",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Icon(Icons.flare),
              ],
            ),
            SizedBox(width: 8),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(width: 200, height: 1, color: Colors.black),
                ),
                SizedBox(height: 8),
              ],
            ),
            SizedBox(height: 10),
            Container(
              clipBehavior: Clip.hardEdge,
              width: 340,
              height: 265,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.lightBlue,
                    Colors.lightBlueAccent,
                    Colors.blue,
                    Colors.blueAccent,
                    Colors.lightBlue,
                    Colors.lightBlueAccent,
                  ],
                  begin: AlignmentGeometry.topLeft,
                  end: AlignmentGeometry.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: List.generate(navItem.length, (index) {
                  final item = navItem[index];
                  final isActive = index == selectedIndex;

                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () => setState(() => selectedIndex = index),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          margin: const EdgeInsets.symmetric(vertical: 2),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 13,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: isActive
                                ? const LinearGradient(
                                    colors: [
                                      Color(0xFF6C5CE7),
                                      Color(0xFF7B87F5),
                                    ],
                                  )
                                : null,
                            color: isActive ? null : Colors.transparent,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                item.icon,
                                size: 22,
                                color: isActive
                                    ? Colors.white
                                    : const Color(0xFF888888),
                              ),
                              const SizedBox(width: 12),
                              Text(
                                item.label,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: isActive
                                      ? FontWeight.w600
                                      : FontWeight.w400,
                                  color: isActive
                                      ? Colors.white
                                      : const Color(0xFF333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (index != 4) Container(height: 1, width: 320, color: Colors.white),
                    ],
                  );
                }),
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class NavItem {
  final IconData icon;
  final String label;

  const NavItem({required this.icon, required this.label});
}


