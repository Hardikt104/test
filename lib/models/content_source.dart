import 'package:json_annotation/json_annotation.dart';

import '../network/base_network.dart';

part 'content_source.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ContentSource {
  @JsonKey(name: ApiKeys.id)
  final String? id;

  @JsonKey(name: ApiKeys.title)
  final String? title;

  @JsonKey(name: ApiKeys.author)
  final String? author;

  @JsonKey(name: ApiKeys.name)
  final String? name;

  @JsonKey(name: ApiKeys.icon)
  final String? icon;

  @JsonKey(name: ApiKeys.url)
  final String? url;

  @JsonKey(name: ApiKeys.creator)
  final String? creator;

  const ContentSource({
    this.id,
    this.title,
    this.author,
    this.name,
    this.icon,
    this.url,
    this.creator,
  });

  factory ContentSource.fromJson(Map<String, dynamic> json) => _$ContentSourceFromJson(json);

  Map<String, dynamic> toJson() => _$ContentSourceToJson(this);
}
