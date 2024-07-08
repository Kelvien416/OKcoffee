import 'package:flutter/material.dart';

class moka extends StatelessWidget {
  const moka({key});

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
                child: const Text('Moka',
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
                child: const Text('Moka Pots also known as stove top espresso makers, are similar to espresso machines in that they brew under pressure and the resulting brew shares some similarities, but in other respects differ. As such, their characterization as "espresso" machines is at times contentious, but due to their use of pressure and steam for brewing, comparable to all espresso prior to the 1948 Gaggia, they are accepted within broader uses of the term, but distinguished from standard modern espresso machines.',
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
                child: const Text('Finely ground coffee, filtered water, moka pot, gas or electric stove, spoon',
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
                child: const Text('How to brew with Moka Pod',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Image.asset('assets/tutorial/moka.png')
            ],
          ),
        )
      )
    ;
  }
}