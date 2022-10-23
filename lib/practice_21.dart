import 'package:flutter/material.dart';

class Practice21 extends StatelessWidget {
  const Practice21({super.key});

  @override
  Widget build(BuildContext context) {
    List nameTags = ['Gaming', 'Nintendo', 'Xbox', 'Playstation', 'Wii'];
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 380,
            height: 35,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: nameTags.length,
              itemBuilder: ((context, index) {
                return Tags(tag: nameTags[index],);
              }),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 450,
            height: 720,
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: ((context, index) {
                  return const ProductCard();
                })
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      width: 200,
      height: 100,
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Image.asset('assets/images/products/switch.jpg'),
          const SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Nintendo Switch for Sale',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Lato'
                ),
              ),
              SizedBox(height: 10),
              Text(
                '5 min ago',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Lato'
                ),),
              SizedBox(height: 10),
              Text(
                '500dll',
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 15,
                    fontFamily: 'Lato'
                ),)
            ],
          )
        ],
      ),
    );
  }
}

class Tags extends StatelessWidget {
  String tag;

  Tags({
    super.key,
    required this.tag
  });

  @override
  Widget build(BuildContext context){
    return Container(
      width: 60,
      height: 30,
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.fromLTRB(5, 10, 5, 1),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
          border: Border.all(
            color: Colors.pink,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15))
      ),
      child: Text(
        tag,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Colors.black
        ),
      ),
    );
  }
}