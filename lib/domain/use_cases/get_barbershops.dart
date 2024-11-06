import '../repositories/barber_shop_repository.dart';
import '../entities/barber_shop.dart';

class GetNearestBarbershops {
  final BarberShopRepository repository;

  GetNearestBarbershops(this.repository);

  Future<List<BarberShop>> call() {
    return repository.getNearestBarbershops();
  }
}

class GetMostRecommendedBarbershops {
  final BarberShopRepository repository;

  GetMostRecommendedBarbershops(this.repository);

  Future<List<BarberShop>> call() {
    return repository.getMostRecommendedBarbershops();
  }
}
