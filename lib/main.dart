import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageSliders(),
    );
  }
}

class ImageSliders extends StatefulWidget {
  const ImageSliders({Key? key}) : super(key: key);

  @override
  State<ImageSliders> createState() => _ImageSlidersState();
}

class _ImageSlidersState extends State<ImageSliders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, size: 35, color: Colors.black),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SearchBar(
                  hintText: ('What would you like to buy?'),
                )),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none,
                size: 35, color: Colors.black),
          ),
          // SizedBox(
          //   height: 30,
          // )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 45,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              size: 45,
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart_outlined,
              size: 45,
            ),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 45,
            ),
            label: 'Account',
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: AnotherCarousel(
                    images: [
                      AssetImage("images/bi.jpeg"),
                      AssetImage("images/t2.jpeg"),
                      AssetImage("images/t3.jpeg"),
                      AssetImage("images/t4.jpeg"),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 70,
                  child: GridView.count(
                    crossAxisCount: 5,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    children: [
                      IconContainer(
                        Icons.help_sharp,
                      ),
                      IconContainer(Icons.favorite_border),
                      IconContainer(Icons.receipt_long_sharp),
                      IconContainer(Icons.app_registration_sharp),
                      IconContainer(Icons.offline_share_rounded),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  color: Colors.pink[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' Deal of the Day',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              color: Colors.white,
                              child: const Text(
                                'Show All >',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 8, 7, 7)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        ' Best Price, Top Products',
                        style: TextStyle(fontSize: 20, color: Colors.white
                            // fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(
                        height: 430, // Adjust height as needed
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: 250,
                              child: ProductCard(
                                image: AssetImage('images/p1.png'),
                                rating: 4.5,
                                name: 'Water air cooler..',
                                Discount: '75%',
                                newPrice: 150,
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: ProductCard(
                                image: AssetImage('images/p2.png'),
                                rating: 4.3,
                                name: 'Rechargable pro',
                                Discount: '75%',
                                newPrice: 1200,
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: ProductCard(
                                image: AssetImage('images/p3.png'),
                                rating: 4.0,
                                name: 'Dp7567',
                                Discount: "75%",
                                newPrice: 130,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  color: Colors.white60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Top Rated Shops',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        ' Best Price, Top Products',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(
                        height: 430,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: 250,
                              child: ProductCard(
                                image: AssetImage('images/p1.png'),
                                rating: 4.5,
                                name: 'Water air cooler..',
                                Discount: "75%",
                                newPrice: 150,
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: ProductCard(
                                image: AssetImage('images/p2.png'),
                                rating: 4.3,
                                name: 'Rechargable pro',
                                Discount: "75%",
                                newPrice: 1200,
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: ProductCard(
                                image: AssetImage('images/p3.png'),
                                rating: 4.0,
                                name: 'Dp7567',
                                Discount: "75%",
                                newPrice: 130,
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: ProductCard(
                                image: AssetImage('images/p4.png'),
                                rating: 4.2,
                                name: 'New Product',
                                Discount: "75%",
                                newPrice: 50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final IconData icondata;
  const IconContainer(this.icondata);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Icon(
        icondata,
        size: 35.0,
        color: Colors.blue,
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final ImageProvider<Object> image;
  final double rating;
  final String Discount;
  final double newPrice;

  const ProductCard({
    Key? key,
    required this.name,
    required this.image,
    required this.rating,
    required this.Discount,
    required this.newPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
              image: image,
              fit: BoxFit.cover,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.safety_check_sharp, color: Colors.blue),
                      const SizedBox(width: 4),
                      Text(
                        'Product mini',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Discount: \$${Discount.toString()}',
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.none
                        //lineThrough,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'New Price: \$${newPrice * 0.25}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    color: Colors.pink,
                    child: const Text(
                      'Only 500 pieces',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
