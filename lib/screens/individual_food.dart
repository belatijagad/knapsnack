import 'package:flutter/material.dart';
import 'package:knapsnack/models/consumable.dart';

class FoodDetailPage extends StatelessWidget {
  final Consumable consumable;

  FoodDetailPage({required this.consumable});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(consumable.name)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(consumable.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(consumable.description),
            Text(consumable.price.toString()),
            // Add more item details here
          ],
        ),
      ),
    );
  }
}
