import 'package:flutter/material.dart';

class frenchPress extends StatelessWidget {
  const frenchPress({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OKapp'),
        backgroundColor: const Color.fromRGBO(122,51,68, 1),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Text('French Press',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Divider(
                height: 2,
                thickness: 5
              ),
              const SizedBox(height: 20,),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text('French presses are more portable and self-contained than other coffee makers. Travel mug versions exist, which are made of tough plastic instead of the more common glass, and have a sealed lid with a closable drinking hole. Some versions are marketed to hikers and backpackers not wishing to carry a heavy, metal percolator or a filter using drip brew.',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w300
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Divider(
                height: 2,
                thickness: 5
              ),
              const SizedBox(height: 20,),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text('What you  need',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text('A French Press, measuring cup, measuring tablespoon, coffee grounds, boiling water, water thermometer (optional), stovetop kettle (optional), stirring spoon',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w300
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Divider(
                height: 2,
                thickness: 5
              ),
              const SizedBox(height: 20,),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text('How to brew with French Press',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Image.asset('assets/tutorial/frenchpress2.png')
            ],
          ),
        )
      )
    ;
  }
}