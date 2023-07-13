// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
      id: json['id'] as String?,
      contentType: json['content_type'] as String?,
      contentMode: json['content_mode'] as String?,
      contentUrl: json['content_url'] as String?,
      contentSource: json['content_source'] == null
          ? null
          : ContentSource.fromJson(
              json['content_source'] as Map<String, dynamic>),
      isHeaderForThePlan: json['is_header_for_the_plan'] as bool?,
      isPrivate: json['is_private'] as bool?,
    );

Map<String, dynamic> _$ContentToJson(Content instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('content_type', instance.contentType);
  writeNotNull('content_mode', instance.contentMode);
  writeNotNull('content_url', instance.contentUrl);
  writeNotNull('content_source', instance.contentSource?.toJson());
  writeNotNull('is_header_for_the_plan', instance.isHeaderForThePlan);
  writeNotNull('is_private', instance.isPrivate);
  return val;
}
