import 'package:json_annotation/json_annotation.dart';

import '../network/base_network.dart';
import 'badge.dart';
import 'content.dart';
import 'facts.dart';
import 'grid_info.dart';
import 'location.dart';
import 'supply_info.dart';

part 'adventures.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Adventures {
  @JsonKey(name: ApiKeys.id)
  final int? id;

  @JsonKey(name: ApiKeys.pk)
  final int? pk;

  @JsonKey(name: ApiKeys.status)
  final String? status;

  @JsonKey(name: ApiKeys.title)
  final String? title;

  @JsonKey(name: ApiKeys.areaLocation)
  final AreaLocation? areaLocation;

  @JsonKey(name: ApiKeys.startingLocation)
  final AreaLocation? startingLocation;

  @JsonKey(name: ApiKeys.tags)
  final List<String>? tags;

  @JsonKey(name: ApiKeys.activity)
  final String? activity;

  @JsonKey(name: ApiKeys.activityId)
  final int? activityId;

  @JsonKey(name: ApiKeys.primaryImage)
  final String? primaryImage;

  @JsonKey(name: ApiKeys.primaryVideo)
  final String? primaryVideo;

  @JsonKey(name: ApiKeys.thumbnail)
  final String? thumbnail;

  @JsonKey(name: ApiKeys.activityIcon)
  final String? activityIcon;

  @JsonKey(name: ApiKeys.badges)
  final List<Badge>? badges;

  @JsonKey(name: ApiKeys.bucketListCount)
  final int? bucketListCount;

  @JsonKey(name: ApiKeys.contents)
  final List<Content>? contents;

  @JsonKey(name: ApiKeys.supplyInfo)
  final SupplyInfo? supplyInfo;

  @JsonKey(name: ApiKeys.gridInfo)
  final List<GridInfo>? gridInfo;

  @JsonKey(name: ApiKeys.ticketOptional)
  final bool? ticketOptional;

  @JsonKey(name: ApiKeys.primaryDescription)
  final String? primaryDescription;

  @JsonKey(name: ApiKeys.description)
  final String? description;

  @JsonKey(name: ApiKeys.facts)
  final List<Facts>? facts;

  const Adventures({
    this.id,
    this.pk,
    this.status,
    this.title,
    this.areaLocation,
    this.startingLocation,
    this.tags,
    this.activity,
    this.activityId,
    this.primaryImage,
    this.primaryVideo,
    this.thumbnail,
    this.activityIcon,
    this.badges,
    this.bucketListCount,
    this.contents,
    this.supplyInfo,
    this.gridInfo,
    this.ticketOptional,
    this.primaryDescription,
    this.description,
    this.facts,
  });

  factory Adventures.fromJson(Map<String, dynamic> json) => _$AdventuresFromJson(json);

  Map<String, dynamic> toJson() => _$AdventuresToJson(this);
}
