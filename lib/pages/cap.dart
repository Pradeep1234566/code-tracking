import 'package:flutter/material.dart';

class Cap extends StatelessWidget {
  Cap({super.key});
  final List item = [
    ['assets/images/cappuccino.jpg', 4.99],
    ['assets/images/cappuccino.jpg', 5.49],
    ['assets/images/cappuccino.jpg', 4.79],
    ['assets/images/cappuccino.jpg', 5.29],
    ['assets/images/cappuccino.jpg', 4.89],
    ['assets/images/cappuccino.jpg', 5.19],
    ['assets/images/cappuccino.jpg', 4.99],
    ['assets/images/cappuccino.jpg', 5.39],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cappuccino'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 2 / 3,
        ),
        itemCount: item.length,
        itemBuilder: (context, index) {
          final path = item[index][0];
          final value = item[index][1];
          return Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  path,
                  width: 100,
                  height: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$${value.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
