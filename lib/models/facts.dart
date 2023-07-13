import 'package:json_annotation/json_annotation.dart';

import '../network/base_network.dart';

part 'facts.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Facts {
  @JsonKey(name: ApiKeys.name)
  final String? name;

  @JsonKey(name: ApiKeys.value)
  final String? value;

  @JsonKey(name: ApiKeys.unit)
  final String? unit;

  @JsonKey(name: ApiKeys.iconUrl)
  final String? iconUrl;

  @JsonKey(name: ApiKeys.displaySection)
  final String? displaySection;

  @JsonKey(name: ApiKeys.factDefinitionId)
  final int? factDefinitionId;

  @JsonKey(name: ApiKeys.adventureFactId)
  final int? adventureFactId;

  @JsonKey(name: ApiKeys.backgroundColor)
  final String? backgroundColor;

  @JsonKey(name: ApiKeys.iconColor)
  final String? iconColor;

  @JsonKey(name: ApiKeys.textColor)
  final String? textColor;

  const Facts({
    this.name,
    this.value,
    this.unit,
    this.iconUrl,
    this.displaySection,
    this.factDefinitionId,
    this.adventureFactId,
    this.backgroundColor,
    this.iconColor,
    this.textColor,
  });

  factory Facts.fromJson(Map<String, dynamic> json) => _$FactsFromJson(json);

  Map<String, dynamic> toJson() => _$FactsToJson(this);
}
