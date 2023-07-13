import 'package:json_annotation/json_annotation.dart';

import '../network/base_network.dart';

part 'supply_info.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class SupplyInfo {
  @JsonKey(name: ApiKeys.supplierName)
  final String? supplierName;

  @JsonKey(name: ApiKeys.priceTitle)
  final String? priceTitle;

  @JsonKey(name: ApiKeys.priceSubtitle)
  final String? priceSubtitle;

  @JsonKey(name: ApiKeys.buttonType)
  final String? buttonType;

  @JsonKey(name: ApiKeys.link)
  final String? link;

  const SupplyInfo({
    this.supplierName,
    this.priceTitle,
    this.priceSubtitle,
    this.buttonType,
    this.link,
  });

  factory SupplyInfo.fromJson(Map<String, dynamic> json) => _$SupplyInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SupplyInfoToJson(this);
}
