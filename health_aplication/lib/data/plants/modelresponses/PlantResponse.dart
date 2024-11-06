class PlantResponse {
  final String name;
  final String location;
  final String imageUrl;
  final String? description;
  final String age;
  final String height;
  final String co2;
  final String oxygen;

  PlantResponse({
    required this.name,
    required this.location,
    required this.imageUrl,
    this.description,
    required this.age,
    required this.height,
    required this.co2,
    required this.oxygen,
  });
}
