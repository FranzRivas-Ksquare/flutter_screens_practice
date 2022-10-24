import 'package:flutter/material.dart';

class Practice15 extends StatelessWidget {
  const Practice15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
        children: <Widget>[
          Image.asset('assets/images/products/switch.jpg'),
          Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: const <Widget>[
                         Text(
                            'Nintendo Switch',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Lato',
                              fontSize: 30,
                            ),
                            ),
                         Icon(Icons.favorite, color: Colors.pink,)
                       ],
                     ),
                      const SizedBox(height: 15,),
                      const Text(
                        '5 min',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lato',
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget nunc elit. Suspendisse ac ullamcorper massa, quis sollicitudin quam. Cras pharetra risus leo. Ut diam justo, feugiat quis maximus eget, consequat at enim. Vestibulum ligula eros, euismod sit amet eros ut, lacinia placerat massa. Nulla facilisi. Nunc in urna dui. Sed blandit nibh sed elementum eleifend. Etiam vel sagittis nunc. Donec tristique scelerisque venenatis. Praesent eu diam at ipsum cursus efficitur et vel elit. Aliquam vel nunc augue. Sed a ligula nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lato',
                          fontSize: 20,
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      ElevatedButton(
                        child: const Center(
                          child: SizedBox(
                              height: 50,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Share',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                          ),
                        ),
                        onPressed: () {
                            print('You share');
                        },
                      ),
                      ],
                    ),
                ),
              ),
          ),
        ],
        ),
      ),
    );
  }
}