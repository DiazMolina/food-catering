import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Hero(
              tag: "food_001",
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.green,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2016/09/15/19/24/salad-1672505_960_720.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              height: MediaQuery.of(context).size.height / 2 - 30,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      topLeft: Radius.circular(32))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ensalada Original',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120, top: 16),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 16),
                        SizedBox(width: 2),
                        Text(
                          '4.9',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Spacer(),
                        Icon(Icons.timer, color: Colors.grey, size: 16),
                        SizedBox(width: 2),
                        Text('15 mins',
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                        Spacer(),
                        Icon(Icons.info_outline, color: Colors.grey, size: 16),
                        SizedBox(width: 2),
                        Text('Cheese',
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 32, top: 8, bottom: 7),
                    child: Text(
                      'cheese mayo sauce and mozzarella, tomatoes, green pepper, onion'
                      'cheese mayo sauce and mozzarella, tomatoes, green pepper, onion'
                      'cheese mayo sauce and mozzarella, tomatoes, green pepper, onion',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 48,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.monetization_on,
                          color: Colors.grey,
                          size: 24,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '124.00',
                          style: TextStyle(fontSize: 24),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: VerticalDivider(
                            width: 24,
                            thickness: 2,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '230g',
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(),
                        Container(
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(child: Text('Add to cart',style: TextStyle(color: Colors.white),)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 48,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.monetization_on,
                          color: Colors.grey,
                          size: 24,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '224.00',
                          style: TextStyle(fontSize: 24),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: VerticalDivider(
                            width: 24,
                            thickness: 2,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '330g',
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(),
                        Container(
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(child: Text('Add to cart',style: TextStyle(color: Colors.white),)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
