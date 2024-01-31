import 'campusmap.dart';

class Database {
  List<Building> buildings;
  List<Floor> floors;
  List<Classroom> classrooms;

  Database({
    required this.buildings,
    required this.floors,
    required this.classrooms,
  });

  // 전체 건물 조회
  List<Building> getAllBuildings() {
    return buildings;
  }

  // 건물 이름으로 건물 정보 조회
  Building? getBuildingByName(String name) {
    return buildings.firstWhere((building) => building.name == name);
  }

  // 건물 ID로 건물 정보 조회
  Building? getBuildingById(int id) {
    return buildings.firstWhere((building) => building.id == id);
  }

  // 건물 ID로 층 리스트 조회
  List<Floor> getFloorsByBuildingId(int buildingId) {
    return floors.where((floor) => floor.buildingId == buildingId).toList();
  }

  // 층 ID로 강의실 리스트 조회
  List<Classroom> getClassroomsByFloorId(int floorId) {
    return classrooms.where((classroom) => classroom.floorId == floorId).toList();
  }

  // 강의실 번호로 강의실 정보 조회
  Classroom? getClassroomByNumber(String number) {
    return classrooms.firstWhere((classroom) => classroom.number == number);
  }
}
