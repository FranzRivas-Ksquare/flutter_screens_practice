import 'package:flutter/material.dart';

class Practice20 extends StatelessWidget {
  const Practice20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 237,
              child: Stack(
                  children: <Widget>[
                    Image.asset('assets/images/products/switch.jpg', fit: BoxFit.fitWidth),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                            child: Icon(
                              Icons.favorite,
                              size: 40,
                              color: Colors.pinkAccent,
                            ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          color: Colors.pinkAccent,
                          width: 70,
                          height: 25,
                          child: const Center(child: Text('5% off')),
                        ),
                      ),
                    ),
                  ]
              ),
            ),
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
                          Text(
                            '999',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Lato',
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const Text(
                        '5 min before',
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
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: const BorderSide(width: 3, color: Colors.blue)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                  print('You Add to Cart');
                              },
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(
                            child: ElevatedButton(
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            onPressed: () {
                              print('You buy');
                            },
                          ),),

                        ],
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