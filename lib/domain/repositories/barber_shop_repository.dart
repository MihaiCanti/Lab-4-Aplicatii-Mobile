import '../entities/barber_shop.dart';

abstract class BarberShopRepository {
  Future<List<BarberShop>> getNearestBarbershops();
  Future<List<BarberShop>> getMostRecommendedBarbershops();
}
