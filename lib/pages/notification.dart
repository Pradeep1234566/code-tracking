import 'package:flutter/material.dart';

class Notifi extends StatelessWidget {
  const Notifi({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> notifications = [
      {"title": "Special Offer", "message": "20% off on Cappuccinos today!"},
      {"title": "New Arrival", "message": "Try our Pumpkin Spice Latte!"},
      {
        "title": "Happy Hour",
        "message": "Buy 1 Get 1 Free on all Lattes from 4-6 PM."
      },
      {
        "title": "Exclusive Deal",
        "message": "Flat \$2 off on your first order!"
      },
      {
        "title": "Holiday Special",
        "message": "Free cookie with every Espresso shot."
      },
      {"title": "Loyalty Rewards", "message": "Earn double points this week!"},
      {
        "title": "Coffee of the Month",
        "message": "Enjoy Ethiopian Yirgacheffe at a special price."
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Stack(
          children: [
            Text(
              "Notifications",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'biennale',
                fontSize: 24,
              ),
            ),
            Positioned(
              right: -40,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Icon(
                    Icons.notifications,
                    size: 28,
                    color: Colors.white,
                  ),
                  Positioned(
                    top: -2,
                    right: -2,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 18,
                        minHeight: 18,
                      ),
                      child: Text(
                        '${notifications.length}', // Notification count
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(
                  notifications[index]['title']!,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  notifications[index]['message']!,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                  ),
                ),
                leading: Icon(
                  Icons.coffee,
                  color: Colors.brown[300],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
