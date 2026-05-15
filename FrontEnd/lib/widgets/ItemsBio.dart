import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:readmore/readmore.dart';
import 'package:shopping_fast/widgets/BuyBar.dart';

class Itemsbio extends StatefulWidget {
  const Itemsbio({super.key});

  @override
  State<Itemsbio> createState() => _ItemsbioState();
}

class _ItemsbioState extends State<Itemsbio> {
  final TextEditingController controller = new TextEditingController();
  final List<String> massanges = [];
  int deteksi = 0;

  void sendMessangges() {
    final text = controller.text.trim();
    if (text.isEmpty) {
      return;
    }

    setState(() {
      massanges.insert(0, text);
    });

    controller.clear();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                const Color.fromARGB(255, 220, 227, 233),
                const Color.fromARGB(255, 209, 216, 228),
                const Color.fromARGB(255, 177, 193, 200),
                const Color.fromARGB(255, 200, 221, 239),
              ],
            ).createShader(bounds);
          },
          blendMode: BlendMode.srcIn,
          child: Text(
            "Shopping",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.blueAccent,
                Colors.lightBlue,
                Colors.blueAccent,
                const Color.fromARGB(255, 107, 170, 222),
                Colors.blue,
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                clipBehavior: Clip.hardEdge,
                width: 350,
                height: 1000,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 350,
                      height: 300,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        "assets/img/tokyo.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "NAMA PRODUCT",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 2),
                      child: Text(
                        "Rp.00000,0-",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFB37C3A),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 4),
                      child: ReadMoreText(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor est nec metus vulputate, ac vestibulum purus suscipit. Nullam pretium ultrices neque, non ultricies nisi venenatis vitae.',
                        trimLines: 3,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Baca Selanjutnya',
                        trimExpandedText: 'Sembunyikan',
                        moreStyle: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                        lessStyle: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                  "assets/img/tokyo.jpg",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Tokoh Sayuran",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Icon(Icons.star, size: 20, color: Colors.yellow),
                              SizedBox(width: 8),
                              Text(
                                "4.5",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromARGB(255, 196, 177, 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 8),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("assets/img/tokyo.jpg"),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            right: 4,
                            top: 10,
                          ),
                          child: Container(
                            width: 220,
                            height: 30,
                            child: TextField(
                              controller: controller,
                              decoration: InputDecoration(
                                hintText: 'Komentar..',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: IconButton(
                            icon: const Icon(Icons.send, size: 20),
                            onPressed: sendMessangges,
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                      ),
                      child: Container(
                        width: 370,
                        height: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                            top: 1,
                            bottom: 1,
                          ),
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            width: 350,
                            height: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    left: 10,
                                    right: 10,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    "Komentar ",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 8,
                                  ),
                                  child: Container(
                                    height: 1,
                                    width: 300,
                                    color: Colors.black,
                                  ),
                                ),

                                SizedBox(height: 4,),
                                Container(
                                  width: 350,
                                  height: 300,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: massanges.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: const EdgeInsets.only(
                                          bottom: 8,
                                        ),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 15,
                                              backgroundImage: AssetImage(
                                                "assets/img/tokyo.jpg",
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "@Adriel Sihombing",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        left: 4,
                                                      ),
                                                  child: Text(
                                                    massanges[index],
                                                    style: const TextStyle(
                                                      color: Color.fromARGB(
                                                        255,
                                                        0,
                                                        0,
                                                        0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: SafeArea(child: BuyBar()),
    );
  }
}
