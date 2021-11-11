class Plants {
  final String name;
  final List images;
  final String pot;
  final String temp;
  final String description;
  final String price;
  final String height;

  Plants(
      {required this.name,
      required this.images,
      required this.pot,
      required this.temp,
      required this.description,
      required this.price,
      required this.height});
}

List<Plants> plant = [
  Plants(
      name: 'Wall Mounted Plant Glass pot',
      images: [
        'assets/images/01.png',
        'assets/images/01.png',
        'assets/images/01.png',
      ],
      pot: 'Self Watering Pot',
      temp: '18 C to 25 C',
      description: 'pothos, (Epipremnum aureum), also called golden pothos, money plant, or devil\'s ivy, hardy indoor foliage plant of the arum family (Araceae) native to southeastern Asia.',
      price: '\$85',
      height: '40 cm - 50cm'),
  Plants(
      name: 'Scandinavian Plant',
      images: [
        'assets/images/02.png',
        'assets/images/02.png',
        'assets/images/02.png',
      ],
      pot: 'Self Watering Pot',
      temp: '13 C to 28 C',
      description: 'The Best Indoor Plants As Seen In Scandinavian Homes · Ficus elastica · Philodendron selloum · Ficus lyrata · Monstera deliciosa',
      price: '\$45',
      height: '30 cm - 40cm'),
  Plants(
      name: 'truff pot plant ',
      images: [
        'assets/images/03.png',
        'assets/images/03.png',
        'assets/images/03.png',
      ],
      pot: 'Self Watering Pot',
      temp: '28 C to 36 C',
      description: 'Small leaf plant in a truff pot for your home or office decor',
      price: '\$90',
      height: '30 cm - 40cm')
];
