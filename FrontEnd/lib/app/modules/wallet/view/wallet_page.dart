import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Row(
          children: [
            Text("Wallet", style: TextStyle(fontSize: 25)),
            SizedBox(width: 8),
            Icon(Icons.wallet),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(CupertinoIcons.person_alt_circle, size: 30),
                SizedBox(width: 10),
                Icon(Icons.circle_notifications, size: 30),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 350,
              height: 150,
              child: Card(
                clipBehavior: Clip.hardEdge,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
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
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 8),
                            child: Text(
                              "E-money",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "565167213",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                SizedBox(width: 4),
                                Icon(Icons.copy, size: 15),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0, left: 8),
                        child: Text(
                          "Adriel Sihombing",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 300,
                          height: 1,
                          color: Colors.white,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 4, left: 8),
                        child: Text("Saldo anda"),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Rp0000000,00-",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(CupertinoIcons.eye),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
