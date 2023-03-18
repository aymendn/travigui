import 'dart:math';

class Announcement {
  final String title;
  final String description;
  final String price;
  final String imageUrl;
  final double lat;
  final double lng;

  Announcement({
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.lat,
    required this.lng,
  });

  String get location =>
      ['Bab El zouar', 'Cinq Maison', 'Alger Centre'][Random().nextInt(3)];

  String get imageOrPlaceholder =>
      imageUrl.isEmpty ? 'https://picsum.photos/200/300' : imageUrl;
}
