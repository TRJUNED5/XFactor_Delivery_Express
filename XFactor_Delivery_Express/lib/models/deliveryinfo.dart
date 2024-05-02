import 'package:project/models/Customer.dart';

class DeliveryBoy {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Customer>> menu;
  DeliveryBoy(
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.desc,
    this.score,
    this.menu,
  );
  static DeliveryBoy generateDeliveryBoy() {
    return DeliveryBoy(
      'Niloy Newaz',
      'Delivery Boy',
      '01969884534',
      '',
      'assets/images/niloy.jpg',
      'Area: Mirpur',
      4.2,
      {
        'Deliveries': Customer.generateRecommendDeliveries(),
        'Pick Ups': Customer.generatePickUp(),
        'Delivered': [],
        'Cancelled': [],
      },
    );
  }
}
