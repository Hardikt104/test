// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Badge _$BadgeFromJson(Map<String, dynamic> json) => Badge(
      title: json['title'] as String?,
      icon: json['icon'] as String?,
      colorScheme: json['color_scheme'] as String?,
    );

Map<String, dynamic> _$BadgeToJson(Badge instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('icon', instance.icon);
  writeNotNull('color_scheme', instance.colorScheme);
  return val;
}
