import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: Colors.grey[100],
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  image: AssetImage('assests/images/P5.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Text(
            "Find the best",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
