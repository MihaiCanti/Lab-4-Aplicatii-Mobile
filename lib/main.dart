import 'package:flutter/material.dart';
import 'presentation/pages/barber_shop_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BarberShopPage(),
    );
  }
}
