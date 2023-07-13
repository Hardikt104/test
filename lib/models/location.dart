import 'package:json_annotation/json_annotation.dart';

import '../network/base_network.dart';

part 'location.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class AreaLocation {
  @JsonKey(name: ApiKeys.name)
  final String? name;

  @JsonKey(name: ApiKeys.subtitle)
  final String? subtitle;

  @JsonKey(name: ApiKeys.distance)
  final String? distance;

  @JsonKey(name: ApiKeys.imageUrl)
  final String? imageUrl;

  const AreaLocation({
    this.name,
    this.subtitle,
    this.distance,
    this.imageUrl,
  });

  factory AreaLocation.fromJson(Map<String, dynamic> json) => _$AreaLocationFromJson(json);

  Map<String, dynamic> toJson() => _$AreaLocationToJson(this);
}
