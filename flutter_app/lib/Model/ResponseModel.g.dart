// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ResponseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) {
  return ResponseModel(
      json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
      json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ResponseModelToJson(ResponseModel instance) =>
    <String, dynamic>{'meta': instance.meta, 'data': instance.data};

MetaModel _$MetaModelFromJson(Map<String, dynamic> json) {
  return MetaModel(json['message'] as String, json['code'] as int);
}

Map<String, dynamic> _$MetaModelToJson(MetaModel instance) =>
    <String, dynamic>{'message': instance.message, 'code': instance.code};

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return DataModel(json['msg'] as String);
}

Map<String, dynamic> _$DataModelToJson(DataModel instance) =>
    <String, dynamic>{'msg': instance.msg};
