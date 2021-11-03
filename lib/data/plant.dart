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
      name: 'Turf pot plant',
      images: [
        'assets/images/01.png',
        'assets/images/01.png',
        'assets/images/01.png',
      ],
      pot: 'Self Watering Pot',
      temp: '18 C to 25 C',
      description: 'description',
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
      description: 'description',
      price: '\$45',
      height: '30 cm - 40cm'),
  Plants(
      name: 'Wall Mounted Plant Glass pot',
      images: [
        'assets/images/03.png',
        'assets/images/03.png',
        'assets/images/03.png',
      ],
      pot: 'Self Watering Pot',
      temp: '28 C to 36 C',
      description: 'description',
      price: '\$90',
      height: '30 cm - 40cm')
];
