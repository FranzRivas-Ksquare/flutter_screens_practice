import 'package:flutter/material.dart';

class Practice17 extends StatelessWidget {
  const Practice17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 350,
          child: Stack(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                    'assets/images/products/switch.jpg',
                    fit: BoxFit.fitWidth
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    color: const Color(0x70000000),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset('assets/images/google.png', scale: 25,),
                        ),
                        SizedBox(
                          height: 40,
                          child: Column(
                            children: const <Widget>[
                              Text(
                                'Nintendo.com',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Lato'
                                ),
                              ),
                              Text(
                                'lorem ipsium yada yada yada',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Lato'
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}