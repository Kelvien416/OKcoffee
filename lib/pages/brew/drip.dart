import 'package:flutter/material.dart';

class drip extends StatelessWidget {
  const drip({key});

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
                child: const Text('Dripper',
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
                child: const Text('Compared to espresso, drip coffee simply relies on thermally induced pressure to send it up to the shower head, and gravity to pull it down through the grounds. It dissolves considerably less of the coffee’s soluble mass, and the paper filters common to this brew method will trap many of the oils that would otherwise be present in espresso, French press, or percolator coffee. Brewing coffee this way is uncomplicated, affordable, and thus, incredibly common among Americans to whom “drip coffee” is simply “coffee.”',
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
                child: const Text('Medium ground coffee, automatic coffee dripper, filtered water, spoon',
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
                child: const Text('How to brew with Auto Coffee Dripper',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Image.asset('assets/tutorial/drip.png')
            ],
          ),
        )
      )
    ;
  }
}