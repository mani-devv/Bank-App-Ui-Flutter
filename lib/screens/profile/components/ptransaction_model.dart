class PTransactions {
  final String icon, name, price;

  PTransactions(this.icon, this.name, this.price);
}

List<PTransactions> pTransactions = [
  PTransactions(
    'assets/icons/car.png',
    'Car',
    '\$400',
  ),
  PTransactions(
    'assets/icons/bus.png',
    'Bus',
    '\$150',
  ),
  PTransactions(
    'assets/icons/plane.png',
    'Travel',
    '\$600',
  ),
];
