import 'package:flutter/material.dart';

class BarberShopCard extends StatelessWidget {
  final String name;
  final String location;
  final double rating;
  final String imageUrl;

  BarberShopCard(this.name, this.location, this.rating, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(name),
        subtitle: Text(location),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star, color: Colors.yellow[700]),
            Text(rating.toString()),
          ],
        ),
      ),
    );
  }
}
