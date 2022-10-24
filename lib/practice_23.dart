import 'package:flutter/material.dart';

class Practice23 extends StatelessWidget {
  const Practice23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemCount: 24,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: Post(),
          );
        },
      ),
    );

  }
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.pink,
        width: 300,
        height: 190,
        child: Stack(
          children: [
            Image.asset('assets/images/products/switch.jpg', fit: BoxFit.fitHeight, height: double.infinity,),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.favorite, color: Colors.black, size: 35,),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                height: 70,
                color: const Color(0x66000000),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'Switch for sale',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '\$500',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}