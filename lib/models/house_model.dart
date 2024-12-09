class HouseModel {
  final String rent;
  final String shift;
  final String title;
  final String desc;
  final String rating;
  final String image;

  HouseModel(
      {required this.image,
      required this.rent,
      required this.shift,
      required this.title,
      required this.desc,
      required this.rating});
}

List<HouseModel> houseListOne = [
  HouseModel(
    rent: '\$1200',
    shift: 'Day',
    title: 'Cozy Studio Apartment',
    desc: 'A small but comfortable studio with modern amenities.',
    rating: '4.5',
    image:
        'https://plus.unsplash.com/premium_photo-1682377521753-58d1fd9fa5ce?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dmlsbGFzfGVufDB8fDB8fHww',
  ),
  HouseModel(
      rent: '\$1500',
      shift: 'Night',
      title: 'Luxury 2-Bedroom Condo',
      desc: 'A spacious and luxurious 2-bedroom condo with great views.',
      rating: '4.8',
      image:
          'https://images.unsplash.com/photo-1719294008990-cc8c10aa00cd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHZpbGxhc3xlbnwwfHwwfHx8MA%3D%3D'),
  HouseModel(
      rent: '\$950',
      shift: 'Day',
      title: 'Affordable 1-Bedroom Apartment',
      desc:
          'Ideal for a single person or a couple, close to shops and transport.',
      rating: '4.0',
      image:
          'https://images.unsplash.com/photo-1719299225324-301bad5c333c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHZpbGxhc3xlbnwwfHwwfHx8MA%3D%3D'),
];

List<HouseModel> houseListTwo = [
  HouseModel(
      rent: '\$950',
      shift: 'Day',
      title: 'Affordable 1-Bedroom Apartment',
      desc:
          'Ideal for a single person or a couple, close to shops and transport.',
      rating: '4.0',
      image:
          'https://plus.unsplash.com/premium_photo-1683888724549-73a380c5ed68?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHZpbGxhc3xlbnwwfHwwfHx8MA%3D%3D'),
  HouseModel(
      rent: '\$2000',
      shift: 'Day',
      title: 'Modern Penthouse',
      desc: 'A beautiful penthouse with stunning views and premium facilities.',
      rating: '5.0',
      image:
          'https://plus.unsplash.com/premium_photo-1661915661139-5b6a4e4a6fcc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8dmlsbGFzfGVufDB8fDB8fHww'),
  HouseModel(
      rent: '\$1100',
      shift: 'Night',
      title: 'Comfortable 1-Bedroom Unit',
      desc: 'Well-lit, secure, and within walking distance of a park.',
      rating: '4.2',
      image:
          'https://images.unsplash.com/photo-1651108066109-15a97d54ced3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dmlsbGFzfGVufDB8fDB8fHww'),
];
