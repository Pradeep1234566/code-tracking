import 'package:flutter/material.dart';
import 'package:coffee/pages/cart.dart';
import 'package:coffee/pages/favourite.dart';
import 'package:coffee/pages/notification.dart';
import 'package:coffee/widgets/coffe.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(), // Main home screen
    Cart(cartItems: cartItems), // Replace with your Cart page
    Favourite(), // Replace with your Favourite page
    Notifi(), // Replace with your Notification page
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
    );
  }
}

// The main Home Screen (original content from your code)
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Icon(
                      Icons.menu,
                      color: Colors.grey[100],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: DecorationImage(
                          image: AssetImage('assests/images/P5.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Find the best",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'biennale'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "coffee for you",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'biennale'),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 30),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[900],
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[700],
                  ),
                  hintText: 'Find your Coffee...',
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  buildCoffeeSection('Cappuccino', [
                    {'image': 'assests/images/C1.jpg', 'price': '\$4.00'},
                    {'image': 'assests/images/C2.jpg', 'price': '\$4.50'},
                    {'image': 'assests/images/C3.jpg', 'price': '\$5.00'},
                    {'image': 'assests/images/C4.jpg', 'price': '\$6.00'}
                  ]),
                  buildCoffeeSection('Latte', [
                    {'image': 'assests/images/L1.jpg', 'price': '\$4.50'},
                    {'image': 'assests/images/L2.jpg', 'price': '\$5.00'},
                    {'image': 'assests/images/L3.jpg', 'price': '\$5.50'},
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
