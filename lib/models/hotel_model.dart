// Hotel Model

class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel0.jpg',
    name: 'The Regal',
    address: '255 Kings Road, London SW3 5EL, United Kingdom',
    price: 350,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Skyline Oasis Hotel',
    address: '4888 Broadway, New York, NY 10034, USA',
    price: 280,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Harbor Lights',
    address: '75 Waterfront Blvd, Sydney NSW 2000, Australia',
    price: 240,
  ),
];
