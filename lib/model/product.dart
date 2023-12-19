class product {
  String imageUrl = 'https://i.ibb.co/7J2L2jY/house1.jpg';
  String type;
  String address;
  String description;
  double price;
  List<String> moreImagesUrl;
  bool isFav;

  product({
    required this.imageUrl,
    required this.type,
    required this.address,
    required this.description,
    required this.price,
    required this.moreImagesUrl,
    required this.isFav,
  });
}
