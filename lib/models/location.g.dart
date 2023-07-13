// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AreaLocation _$AreaLocationFromJson(Map<String, dynamic> json) => AreaLocation(
      name: json['name'] as String?,
      subtitle: json['subtitle'] as String?,
      distance: json['distance'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$AreaLocationToJson(AreaLocation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('subtitle', instance.subtitle);
  writeNotNull('distance', instance.distance);
  writeNotNull('image_url', instance.imageUrl);
  return val;
}
