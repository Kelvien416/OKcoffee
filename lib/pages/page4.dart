import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:okapp/provider/product_prov.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    var ProductProvider1 = Provider.of<ProductProvider>(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(25),
      child: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Hot & Popular',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Check out recommendation and popular menus.',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Latte + Americano'),
                          content: const Text('Add this promo item to cart?'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  ProductProvider1.productName =
                                      'Promo Latte + Americano';
                                  ProductProvider1.productQty = 1;
                                  ProductProvider1.price = 24000;
                                  Navigator.pop(context, true);
                                },
                                child: const Text('Ok')),
                            TextButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: const Text('Cancel'))
                          ],
                        );
                      });
                },
                child: Container(
                  height: 630,
                  width: 630,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: const AssetImage('assets/promos/Promo.png'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3),
                          BlendMode.darken,
                        )),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("Rp. 24.000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 26)),
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Free Delivery'),
                          content: const Text('Add this promo item to cart?'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  ProductProvider1.productName =
                                      'Cappuccino (Free Delivery)';
                                  ProductProvider1.productQty = 1;
                                  ProductProvider1.price = 12000;
                                  Navigator.pop(context, true);
                                },
                                child: const Text('Ok')),
                            TextButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: const Text('Cancel'))
                          ],
                        );
                      });
                },
                child: Container(
                  height: 630,
                  width: 630,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: const AssetImage('assets/promos/Promo2.png'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3),
                          BlendMode.darken,
                        )),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("Rp. 12.000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 26)),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
