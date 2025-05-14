import 'dart:ffi';

class CinemaData {
  const CinemaData(this.id, this.name, this.location, this.urlImage);
  final String name;
  final String location;
  final int id;
  final String urlImage;
  factory CinemaData.fromJson(Map<String, dynamic> json) {
    return CinemaData(
        json['Id'], json['Name'], json['EnglishName'], json['PathImage']);
  }
}
