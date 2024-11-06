import '../../domain/entities/barber_shop.dart';

class BarberShopModel extends BarberShop {
  BarberShopModel({
    required String name,
    required String locationWithDistance,
    required double reviewRate,
    required String imageUrl,
  }) : super(
        name: name,
        locationWithDistance: locationWithDistance,
        reviewRate: reviewRate,
        imageUrl: imageUrl,
      );

  factory BarberShopModel.fromJson(Map<String, dynamic> json) {
    return BarberShopModel(
      name: json['name'],
      locationWithDistance: json['location_with_distance'],
      reviewRate: json['review_rate'],
      imageUrl: json['image'],
    );
  }
}
