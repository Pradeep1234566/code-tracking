import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> favouriteItems = [
      {
        'image': 'assests/images/C1.jpg',
        'name': 'Cappuccino',
        'price': '\$4.00'
      },
      {'image': 'assests/images/L1.jpg', 'name': 'Latte', 'price': '\$5.00'},
      {'image': 'assests/images/C3.jpg', 'name': 'Espresso', 'price': '\$3.50'},
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Your Favourites",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'biennale',
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Most Ordered Items",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'biennale',
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: favouriteItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                favouriteItems[index]['image'] ??
                                    'assets/images/placeholder.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          favouriteItems[index]['name'] ?? 'Unknown Item',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          favouriteItems[index]['price'] ?? '\$0.00',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 16,
                          ),
                        ),
                        trailing: Icon(
                          Icons.favorite,
                          color: Colors.red[400],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
