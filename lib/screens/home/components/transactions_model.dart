class Transactions {
  final String icon, name, time, amount;

  Transactions(this.icon, this.name, this.time, this.amount);
}

List<Transactions> transactions = [
  Transactions(
    'assets/icons/apple.png',
    'App Store',
    '23:41 pm',
    '\$49.99',
  ),
  Transactions(
    'assets/icons/amazon.png',
    'Amazon',
    '22:48 pm',
    '\$299.99',
  ),
  Transactions(
    'assets/icons/spotify.png',
    'Spotify',
    '22:16 pm',
    '\$19.99',
  ),
];
