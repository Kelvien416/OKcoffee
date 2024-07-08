import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:okapp/provider/product_prov.dart';

class latte extends StatefulWidget {
  const latte({Key? key}) : super(key: key);

  @override
  State<latte> createState() => _latteState();
}

class _latteState extends State<latte> {
  var _result;
  int count = 1;
  var productName1 = 'latte';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var ProductProvider1 = Provider.of<ProductProvider>(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(120, 122, 51, 68),
      appBar: AppBar(
        title: const Text(
          'OKapp',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: 20,
                      right: 20,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            const SizedBox(height: 150),
                            const Text(
                              'Latte',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 50),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Espresso + steamed milk + frothed milk. Try our special latte brew from the comfort of your own home.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const SizedBox(height: 100),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 50),
                                  width: size.width * 0.6,
                                  child: Column(
                                    children: [
                                      RadioListTile(
                                          title: const Text(
                                              'Small  (Rp. 12.000)',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      122, 51, 68, 1),
                                                  fontWeight: FontWeight.bold)),
                                          activeColor: const Color.fromRGBO(
                                              122, 51, 68, 1),
                                          value: 12000,
                                          groupValue: _result,
                                          onChanged: (value) {
                                            setState(() {
                                              _result = value;
                                              productName1 = 'Latte (S)';
                                            });
                                          }),
                                      RadioListTile(
                                          title: const Text(
                                              'Medium  (Rp. 24.000)',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      122, 51, 68, 1),
                                                  fontWeight: FontWeight.bold)),
                                          activeColor: const Color.fromRGBO(
                                              122, 51, 68, 1),
                                          value: 24000,
                                          groupValue: _result,
                                          onChanged: (value) {
                                            setState(() {
                                              _result = value;
                                              productName1 = 'Latte (M)';
                                            });
                                          }),
                                      RadioListTile(
                                          title: const Text(
                                              'Large  (Rp. 30.000)',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      122, 51, 68, 1),
                                                  fontWeight: FontWeight.bold)),
                                          activeColor: const Color.fromRGBO(
                                              122, 51, 68, 1),
                                          value: 30000,
                                          groupValue: _result,
                                          onChanged: (value) {
                                            setState(() {
                                              _result = value;
                                              productName1 = 'Latte (L)';
                                            });
                                          }),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        OutlinedButton(
                                            child: const Text(
                                              '-',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 35,
                                                color: Color.fromRGBO(
                                                    122, 51, 68, 1),
                                              ),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                if (count <= 1) {
                                                  null;
                                                } else {
                                                  count--;
                                                }
                                              });
                                            }),
                                        const SizedBox(width: 20),
                                        Text('$count',
                                            style:
                                                const TextStyle(fontSize: 20)),
                                        const SizedBox(width: 20),
                                        OutlinedButton(
                                            child: const Text(
                                              '+',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30,
                                                color: Color.fromRGBO(
                                                    122, 51, 68, 1),
                                              ),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                count++;
                                              });
                                            }),
                                      ],
                                    ),
                                    const SizedBox(height: 30),
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            padding: const EdgeInsets.only(
                                                left: 40,
                                                right: 40,
                                                top: 20,
                                                bottom: 20),
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    122, 51, 68, 1)),
                                        child: const Text('add to cart',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22,
                                                color: Colors.white)),
                                        onPressed: () {
                                          setState(() {
                                            if (_result == null) {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return AlertDialog(
                                                      title: const Text('oops'),
                                                      content: const Text(
                                                          'Please pick your coffee size.'),
                                                      actions: [
                                                        TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    context,
                                                                    true),
                                                            child: const Text(
                                                                'OK'))
                                                      ],
                                                    );
                                                  });
                                            } else {
                                              ProductProvider1.productName =
                                                  productName1;
                                              ProductProvider1.productQty =
                                                  count;
                                              ProductProvider1.price = _result;
                                              final snackBar = SnackBar(
                                                content: const Text(
                                                    'Your order has been added to cart!',
                                                    style: TextStyle(
                                                      fontSize: 25,
                                                    )),
                                                action: SnackBarAction(
                                                    label: 'Ok!',
                                                    onPressed: () {}),
                                              );
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(snackBar);
                                            }
                                          });
                                        })
                                  ],
                                ),
                              ],
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              height: 700,
                            ),
                            Expanded(
                                child: Image.asset(
                              'assets/products/latte.png',
                              height: 600,
                            ))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
