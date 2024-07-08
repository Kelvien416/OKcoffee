import 'package:flutter/material.dart';

class aeroPress extends StatelessWidget {
  const aeroPress({key});

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
                child: const Text('Aeropress',
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
                child: const Text('A space-age contraption with gravity-defying aspirations, the AeroPress was invented by Aerobie just 38 miles from our Oakland roastery. Aerobie is responsible for creating the long-flying “superdisc” that broke Guiness World Records when it soared 1,333 feet into the air. (Take that, frisbee!) The same mastery of aerodynamics comes into play here, with this peculiar and lovely device for brewing coffee.',
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
                child: const Text('an Aero press device, funnel, kettle, medium coffee grounds, boiling water, stirring spoon',
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
                child: const Text('How to brew with Aeropress',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Image.asset('assets/tutorial/aero.png')
            ],
          ),
        )
      )
    ;
  }
}