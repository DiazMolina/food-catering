import 'package:flutter/material.dart';
import 'package:food_catering_app/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.blueGrey[100]),
              child: ListView(
                children: [
                  InkWell(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
                  },
                    child: Container(
                      height: 120,
                      margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 5)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Hero(
                              tag: "food_001",
                              child: Container(
                                margin: EdgeInsets.all(16),
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
                          Expanded(
                            flex: 8,
                            child: Container(
                              padding: EdgeInsets.only(bottom: 8, top: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Salad Original',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 48),
                                    child: Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 14),
                                        SizedBox(width: 2),
                                        Text(
                                          '4.9',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(),
                                        Icon(Icons.timer,
                                            color: Colors.grey, size: 14),
                                        SizedBox(width: 2),
                                        Text('15 mins',
                                            style: TextStyle(fontSize: 12)),
                                        Spacer(),
                                        Icon(Icons.info_outline,
                                            color: Colors.grey, size: 14),
                                        SizedBox(width: 2),
                                        Text('Cheese',
                                            style: TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 32),
                                    child: Text(
                                      'cheese mayo sauce and mozzarella, tomatoes, green pepper, onion',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 24),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.monetization_on,
                                          color: Colors.grey,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '124.00',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 82,
                                          height: 24,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Text(
                                              'Add to cart',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
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
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(top: 10),
                height: 60,
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.7)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [Icon(Icons.apps), Text('Menu')],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(Icons.add_shopping_cart),
                            Text('Cart')
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [Icon(Icons.menu), Text('Orders')],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(Icons.account_circle),
                            Text('Profile')
                          ],
                        )),
                  ],
                ),
              )),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              padding: EdgeInsets.only(right: 16, bottom: 16),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/08/18/18/21/salad-2655915_960_720.jpg'),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                    top: 24,
                    left: 16,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Salad',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '48 items',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
