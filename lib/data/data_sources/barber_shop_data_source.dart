import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/barber_shop_model.dart';



class BarberShopDataSource {
  Future<List<BarberShopModel>> getNearestBarbershops() async {
    final String response = await rootBundle.loadString('lib/data.json');
    final data = json.decode(response);
    return (data['nearest_barbershop'] as List)
        .map((json) => BarberShopModel.fromJson(json))
        .toList();
  }

  Future<List<BarberShopModel>> getMostRecommendedBarbershops() async {
    final String response = await rootBundle.loadString('lib/data.json');
    final data = json.decode(response);
    return (data['most_recommended'] as List)
        .map((json) => BarberShopModel.fromJson(json))
        .toList();
  }
}
