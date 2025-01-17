import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  final List<Map<String, String>> cartItems;

  const Cart({required this.cartItems, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Your Cart",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'biennale',
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: cartItems.isEmpty
          ? Center(
              child: Text(
                "Your cart is empty",
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18,
                ),
              ),
            )
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                print(cartItems[index]); // Debugging line
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                              cartItems[index]['image'] ??
                                  'assets/images/placeholder.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        cartItems[index]['price'] ?? '\$0.00',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 16,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.remove_circle,
                          color: Colors.red[400],
                        ),
                        onPressed: () {
                          // Remove item functionality (if needed)
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
