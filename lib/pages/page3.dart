import 'package:flutter/material.dart';
import 'package:okapp/provider/product_prov.dart';
import 'package:provider/provider.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    var cartProv = Provider.of<ProductProvider>(context);
    List cart = cartProv.product;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            color: const Color.fromRGBO(122, 51, 68, 0.4),
            padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: const Text('Order',
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.bold))),
                    Container(
                        alignment: Alignment.topCenter,
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: const Text('Qty',
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.bold))),
                    Container(
                        alignment: Alignment.topCenter,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: const Text('@price',
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.bold))),
                  ],
                ),
                Divider(
                  thickness: 6,
                ),
                const SizedBox(height: 25),
                for (int i = 0; i < cart.length; i++)
                  if ((i + 1) % 3 == 0)
                    Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(cart[i - 2].toString(),
                                style: const TextStyle(fontSize: 27))),
                        Container(
                            alignment: Alignment.topCenter,
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: Text((cart[i - 1]).toString(),
                                style: const TextStyle(fontSize: 27))),
                        Container(
                            alignment: Alignment.topCenter,
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Text((cart[i] * cart[i - 1]).toString(),
                                style: const TextStyle(fontSize: 27))),
                        Container(
                          alignment: Alignment.topCenter,
                          width: MediaQuery.of(context).size.width * 0.05,
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  cartProv.deleteProductPrice(
                                      (cart[i] * cart[i - 1]));
                                  cartProv.deleteProduct(i - 2);
                                  cartProv.deleteProduct(i - 2);
                                  cartProv.deleteProduct(i - 2);
                                });
                              },
                              child: const Text('X')),
                        )
                      ],
                    ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      alignment: Alignment.topCenter,
                      child: const Text('Total',
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold))),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      alignment: Alignment.topCenter,
                      child: Text(cartProv.totalPrice.toString(),
                          style: const TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold))),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      alignment: Alignment.topRight,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20, bottom: 20),
                              backgroundColor:
                                  const Color.fromRGBO(122, 51, 68, 1)),
                          onPressed: () {
                            setState(() {
                              if (cartProv.totalPrice > 0) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text(
                                          'Order Success',
                                          textAlign: TextAlign.center,
                                        ),
                                        content: const Icon(
                                          Icons.check_circle,
                                          color: Colors.green,
                                          size: 60,
                                        ),
                                        actions: [
                                          TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context, true),
                                              child: const Text('OK'))
                                        ],
                                      );
                                    });
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('oops'),
                                        content: const Text(
                                            'Your cart is still empty.'),
                                        actions: [
                                          TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context, true),
                                              child: const Text('OK'))
                                        ],
                                      );
                                    });
                              }
                            });
                          },
                          child: Text(
                            'ORDER',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.white),
                          ))),
                ],
              )),
        ],
      ),
    );
  }
}
