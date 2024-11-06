import 'package:flutter/material.dart';
import '../../domain/entities/barber_shop.dart';
import '../../data/repositories/barber_shop_repository.dart';
import '../../data/data_sources/barber_shop_data_source.dart';
import '../widgets/barber_shop_card.dart';
import '../../domain/repositories/barber_shop_repository.dart';

class BarberShopPage extends StatefulWidget {
  @override
  _BarberShopPageState createState() => _BarberShopPageState();
}

class _BarberShopPageState extends State<BarberShopPage> {
  final BarberShopRepository repository = BarberShopRepositoryImpl(BarberShopDataSource());

  late Future<List<BarberShop>> nearestBarbershops;
  late Future<List<BarberShop>> mostRecommended;

  @override
  void initState() {
    super.initState();
    nearestBarbershops = repository.getNearestBarbershops();
    mostRecommended = repository.getMostRecommendedBarbershops();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barber Shop | Cantievschii Mihai'),
        backgroundColor: Colors.deepPurple,
      ),
      body: FutureBuilder<List<BarberShop>>(
        future: nearestBarbershops,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Eroare: ${snapshot.error}'));
          } else {
            final barbershops = snapshot.data!;
            return ListView.builder(
              itemCount: barbershops.length,
              itemBuilder: (context, index) {
                final shop = barbershops[index];
                return BarberShopCard(shop.name, shop.locationWithDistance, shop.reviewRate, shop.imageUrl);
              },
            );
          }
        },
      ),
    );
  }
}
