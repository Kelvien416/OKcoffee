import 'package:flutter/material.dart';

class coldBrew extends StatelessWidget {
  const coldBrew({key});

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
                child: const Text('Cold Brew',
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
                child: const Text('Cold-brewed coffee, or cold brew, is coffee made by steeping ground coffee in room-temperature water for several hours, usually 12 to 18 hours or even longer, then straining out the grounds and chilling it before serving it either as-is, over ice, or diluted with water. ',
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
                child: const Text('What You Need',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text('coarse coffee grounds, room temperature water, glass jar, fridge',
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
                child: const Text('How to Cold Brew',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Image.asset('assets/tutorial/ColdBrew.png')
            ],
          ),
        )
      )
    ;
  }
}