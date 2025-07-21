class HotelModel {
  final String id;
  final double rating;
  final String imageURL;
  final String name;
  final String location;
  final double pricing;

  const HotelModel(
      {required this.id,
      required this.rating,
      required this.name,
      required this.location,
      required this.pricing,
      required this.imageURL});
}
