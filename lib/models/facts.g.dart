// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Facts _$FactsFromJson(Map<String, dynamic> json) => Facts(
      name: json['name'] as String?,
      value: json['value'] as String?,
      unit: json['unit'] as String?,
      iconUrl: json['icon_url'] as String?,
      displaySection: json['display_section'] as String?,
      factDefinitionId: json['fact_definition_id'] as int?,
      adventureFactId: json['adventure_fact_id'] as int?,
      backgroundColor: json['background_color'] as String?,
      iconColor: json['icon_color'] as String?,
      textColor: json['text_color'] as String?,
    );

Map<String, dynamic> _$FactsToJson(Facts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  writeNotNull('unit', instance.unit);
  writeNotNull('icon_url', instance.iconUrl);
  writeNotNull('display_section', instance.displaySection);
  writeNotNull('fact_definition_id', instance.factDefinitionId);
  writeNotNull('adventure_fact_id', instance.adventureFactId);
  writeNotNull('background_color', instance.backgroundColor);
  writeNotNull('icon_color', instance.iconColor);
  writeNotNull('text_color', instance.textColor);
  return val;
}
