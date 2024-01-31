class Building {
  int id;
  String name;
  double latitude;
  double longitude;
  String titleImage;
  List<String> interiorImages;

  Building({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.titleImage,
    required this.interiorImages,
  });
}

class Floor {
  int id;
  int number;
  int buildingId;

  Floor({required this.id, required this.number, required this.buildingId});
}

class Classroom {
  int id;
  String number;
  int floorId;

  Classroom({required this.id, required this.number, required this.floorId});
}