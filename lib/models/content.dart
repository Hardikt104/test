import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/models/content_source.dart';

import '../network/base_network.dart';

part 'content.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Content {
  @JsonKey(name: ApiKeys.id)
  final String? id;

  @JsonKey(name: ApiKeys.contentType)
  final String? contentType;

  @JsonKey(name: ApiKeys.contentMode)
  final String? contentMode;

  @JsonKey(name: ApiKeys.contentUrl)
  final String? contentUrl;

  @JsonKey(name: ApiKeys.contentSource)
  final ContentSource? contentSource;

  @JsonKey(name: ApiKeys.isHeaderForThePlan)
  final bool? isHeaderForThePlan;

  @JsonKey(name: ApiKeys.isPrivate)
  final bool? isPrivate;

  const Content({
    this.id,
    this.contentType,
    this.contentMode,
    this.contentUrl,
    this.contentSource,
    this.isHeaderForThePlan,
    this.isPrivate,
  });

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);
}
