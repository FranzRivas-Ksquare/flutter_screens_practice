import 'package:flutter/material.dart';

class Practice16 extends StatelessWidget {
  const Practice16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Image.asset('assets/images/google.png', scale: 20,),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Google.com',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontSize: 17,
                      ),
                    ),
                    Text('5 min ago',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lato',
                          fontSize: 12
                      ),
                    ),
                  ],
                ),
                const Expanded(child:SizedBox(width: 100,)),
                const Icon(Icons.more_vert, color: Colors.black),
              ],
            ),
          ),
          Image.asset('assets/images/products/switch.jpg'),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(Icons.favorite, color: Colors.black,),
                Text('Like', style: TextStyle(color: Colors.black),),
                SizedBox(width: 40),
                Icon(Icons.message, color: Colors.black,),
                Text('Comment', style: TextStyle(color: Colors.black),),
                SizedBox(width: 40),
                Icon(Icons.share, color: Colors.black,),
                Text('Share', style: TextStyle(color: Colors.black),)
              ],
            ),
          )
        ],
      ),
    );
  }
}