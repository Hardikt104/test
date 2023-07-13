// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supply_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupplyInfo _$SupplyInfoFromJson(Map<String, dynamic> json) => SupplyInfo(
      supplierName: json['supplier_name'] as String?,
      priceTitle: json['price_title'] as String?,
      priceSubtitle: json['price_subtitle'] as String?,
      buttonType: json['button_type'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$SupplyInfoToJson(SupplyInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('supplier_name', instance.supplierName);
  writeNotNull('price_title', instance.priceTitle);
  writeNotNull('price_subtitle', instance.priceSubtitle);
  writeNotNull('button_type', instance.buttonType);
  writeNotNull('link', instance.link);
  return val;
}
