// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentSource _$ContentSourceFromJson(Map<String, dynamic> json) =>
    ContentSource(
      id: json['id'] as String?,
      title: json['title'] as String?,
      author: json['author'] as String?,
      name: json['name'] as String?,
      icon: json['icon'] as String?,
      url: json['url'] as String?,
      creator: json['creator'] as String?,
    );

Map<String, dynamic> _$ContentSourceToJson(ContentSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('author', instance.author);
  writeNotNull('name', instance.name);
  writeNotNull('icon', instance.icon);
  writeNotNull('url', instance.url);
  writeNotNull('creator', instance.creator);
  return val;
}
