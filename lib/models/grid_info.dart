import 'package:json_annotation/json_annotation.dart';

import '../network/base_network.dart';

part 'grid_info.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class GridInfo {
  @JsonKey(name: ApiKeys.name)
  final String? name;

  @JsonKey(name: ApiKeys.value)
  final String? value;

  @JsonKey(name: ApiKeys.iconUrl)
  final String? iconUrl;

  @JsonKey(name: ApiKeys.schema)
  final String? schema;

  const GridInfo({
    this.name,
    this.value,
    this.iconUrl,
    this.schema,
  });

  factory GridInfo.fromJson(Map<String, dynamic> json) => _$GridInfoFromJson(json);

  Map<String, dynamic> toJson() => _$GridInfoToJson(this);
}
