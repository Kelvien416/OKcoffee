import 'package:flutter/material.dart';
import 'package:okapp/pages/brew.dart';
import 'package:okapp/pages/products/americano.dart';
import 'package:okapp/pages/products/cappuccino.dart';
import 'package:okapp/pages/products/latte.dart';
import 'package:okapp/pages/products/martiniCaramel.dart';
import 'package:okapp/pages/products/martiniEspresso.dart';
import 'package:okapp/pages/products/mocha.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(25),
      child: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'OK coffee shop official apps',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'experience coffee anywhere with our app',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const brew()));
                },
                child: Container(
                  height: 150,
                  width: 630,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: const AssetImage('assets/images/brew2.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5),
                          BlendMode.darken,
                        )),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Brew your own Coffee",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 26)),
                      SizedBox(
                        height: 10,
                      ),
                      Text('French Press | Cold Brew | Moka',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )),
                      Text('Drip Coffee | Aero Press | Soft Brew',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )),
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Order',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(height: 2, thickness: 5),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const americano()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 270,
                        height: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(199, 84, 110, 1),
                        ),
                        child: Column(
                          children: [
                            const Text('Americano',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                            Image.asset(
                              'assets/products/americano.png',
                              width: 150,
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const latte()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 270,
                        height: 270,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(199, 84, 110, 1)),
                        child: Column(
                          children: [
                            const Text('Caffe Latte',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                            Image.asset(
                              'assets/products/latte.png',
                              width: 150,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const mocha()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 270,
                        height: 270,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(199, 84, 110, 1)),
                        child: Column(
                          children: [
                            const Text('Caffe Mocha',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                            Image.asset(
                              'assets/products/mocha.png',
                              width: 150,
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const cappuccino()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 270,
                        height: 270,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(199, 84, 110, 1)),
                        child: Column(
                          children: [
                            const Text('Cappuccino',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                            Image.asset(
                              'assets/products/cappuccino.png',
                              width: 150,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const martinicaramel()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 270,
                        height: 270,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(199, 84, 110, 1)),
                        child: Column(
                          children: [
                            const Text('Caramel Espresso Martini',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19),
                                textAlign: TextAlign.center),
                            Image.asset(
                              'assets/products/martini2.png',
                              width: 150,
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const martiniespresso()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 270,
                        height: 270,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(199, 84, 110, 1)),
                        child: Column(
                          children: [
                            const Text('Espresso Martini',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                            Image.asset(
                              'assets/products/martini1.png',
                              width: 130,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
