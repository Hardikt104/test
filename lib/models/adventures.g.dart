// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adventures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Adventures _$AdventuresFromJson(Map<String, dynamic> json) => Adventures(
      id: json['id'] as int?,
      pk: json['pk'] as int?,
      status: json['status'] as String?,
      title: json['title'] as String?,
      areaLocation: json['area_location'] == null
          ? null
          : AreaLocation.fromJson(
              json['area_location'] as Map<String, dynamic>),
      startingLocation: json['starting_location'] == null
          ? null
          : AreaLocation.fromJson(
              json['starting_location'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      activity: json['activity'] as String?,
      activityId: json['activity_id'] as int?,
      primaryImage: json['primary_image'] as String?,
      primaryVideo: json['primary_video'] as String?,
      thumbnail: json['thumbnail'] as String?,
      activityIcon: json['activity_icon'] as String?,
      badges: (json['badges'] as List<dynamic>?)
          ?.map((e) => Badge.fromJson(e as Map<String, dynamic>))
          .toList(),
      bucketListCount: json['bucket_list_count'] as int?,
      contents: (json['contents'] as List<dynamic>?)
          ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      supplyInfo: json['supply_info'] == null
          ? null
          : SupplyInfo.fromJson(json['supply_info'] as Map<String, dynamic>),
      gridInfo: (json['grid_info'] as List<dynamic>?)
          ?.map((e) => GridInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      ticketOptional: json['ticket_optional'] as bool?,
      primaryDescription: json['primary_description'] as String?,
      description: json['description'] as String?,
      facts: (json['facts'] as List<dynamic>?)
          ?.map((e) => Facts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdventuresToJson(Adventures instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('pk', instance.pk);
  writeNotNull('status', instance.status);
  writeNotNull('title', instance.title);
  writeNotNull('area_location', instance.areaLocation?.toJson());
  writeNotNull('starting_location', instance.startingLocation?.toJson());
  writeNotNull('tags', instance.tags);
  writeNotNull('activity', instance.activity);
  writeNotNull('activity_id', instance.activityId);
  writeNotNull('primary_image', instance.primaryImage);
  writeNotNull('primary_video', instance.primaryVideo);
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('activity_icon', instance.activityIcon);
  writeNotNull('badges', instance.badges?.map((e) => e.toJson()).toList());
  writeNotNull('bucket_list_count', instance.bucketListCount);
  writeNotNull('contents', instance.contents?.map((e) => e.toJson()).toList());
  writeNotNull('supply_info', instance.supplyInfo?.toJson());
  writeNotNull('grid_info', instance.gridInfo?.map((e) => e.toJson()).toList());
  writeNotNull('ticket_optional', instance.ticketOptional);
  writeNotNull('primary_description', instance.primaryDescription);
  writeNotNull('description', instance.description);
  writeNotNull('facts', instance.facts?.map((e) => e.toJson()).toList());
  return val;
}
