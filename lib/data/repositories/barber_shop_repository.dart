import '../../domain/entities/barber_shop.dart';
import '../../domain/repositories/barber_shop_repository.dart';
import '../../data/data_sources/barber_shop_data_source.dart';

class BarberShopRepositoryImpl implements BarberShopRepository {
  final BarberShopDataSource dataSource;

  BarberShopRepositoryImpl(this.dataSource);

  @override
  Future<List<BarberShop>> getNearestBarbershops() async {
    return await dataSource.getNearestBarbershops();
  }

  @override
  Future<List<BarberShop>> getMostRecommendedBarbershops() async {
    return await dataSource.getMostRecommendedBarbershops();
  }
}
