import 'package:json_annotation/json_annotation.dart';

import '../network/base_network.dart';

part 'badge.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Badge {
  @JsonKey(name: ApiKeys.title)
  final String? title;

  @JsonKey(name: ApiKeys.icon)
  final String? icon;

  @JsonKey(name: ApiKeys.colorScheme)
  final String? colorScheme;

  const Badge({
    this.title,
    this.icon,
    this.colorScheme,
  });

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);

  Map<String, dynamic> toJson() => _$BadgeToJson(this);
}
