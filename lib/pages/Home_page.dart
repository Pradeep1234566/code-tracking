import 'package:coffee/pages/cap.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Cappuccino',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Cap()),
                              );
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              color: Colors.grey[800],
                              child: Center(
                                child: Text(
                                  'Image',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Espresso',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              // Handle tap to display image
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              color: Colors.grey[800],
                              child: Center(
                                child: Text(
                                  'Image',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Latte',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              color: Colors.grey[800],
                              child: Center(
                                child: Text(
                                  'Image',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add more columns as needed
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
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
