// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GridInfo _$GridInfoFromJson(Map<String, dynamic> json) => GridInfo(
      name: json['name'] as String?,
      value: json['value'] as String?,
      iconUrl: json['icon_url'] as String?,
      schema: json['schema'] as String?,
    );

Map<String, dynamic> _$GridInfoToJson(GridInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  writeNotNull('icon_url', instance.iconUrl);
  writeNotNull('schema', instance.schema);
  return val;
}
