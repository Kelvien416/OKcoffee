import 'package:flutter/material.dart';
import 'package:okapp/pages/brew/aero.dart';
import 'package:okapp/pages/brew/cold.dart';
import 'package:okapp/pages/brew/drip.dart';
import 'package:okapp/pages/brew/french.dart';
import 'package:okapp/pages/brew/moka.dart';
import 'package:okapp/pages/brew/soft.dart';

class brew extends StatelessWidget {
  const brew({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('OKapp'),
          backgroundColor: const Color.fromRGBO(122, 51, 68, 1),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Brew Your Own Coffee',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Find your favorite way to enjoy your coffee anywhere',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(height: 2, thickness: 5),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const frenchPress()));
                  },
                  child: Container(
                    height: 150,
                    width: 630,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(199, 84, 110, 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("French Press",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 26)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('No paper filter, more intense flavour',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ))
                      ],
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const coldBrew()));
                  },
                  child: Container(
                    height: 150,
                    width: 630,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(199, 84, 110, 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Cold Brew",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 26)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Cold baverage for hot day',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ))
                      ],
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const moka()));
                  },
                  child: Container(
                    height: 150,
                    width: 630,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(199, 84, 110, 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Moka",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 26)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('more concentrated flavour',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ))
                      ],
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const drip()));
                  },
                  child: Container(
                    height: 150,
                    width: 630,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(199, 84, 110, 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Drip Coffee",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 26)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('takes plenty of time but worth it',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ))
                      ],
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const aeroPress()));
                  },
                  child: Container(
                    height: 150,
                    width: 630,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(199, 84, 110, 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Aero Press",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 26)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Strong but clean',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ))
                      ],
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const softBrew()));
                  },
                  child: Container(
                    height: 150,
                    width: 630,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(199, 84, 110, 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Pour Over",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 26)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('softer flavour',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ))
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
