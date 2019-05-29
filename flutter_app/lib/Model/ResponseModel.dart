import 'package:json_annotation/json_annotation.dart';
part 'ResponseModel.g.dart';

@JsonSerializable()

class ResponseModel {
  final MetaModel meta;
  final DataModel data;

  ResponseModel(this.meta, this.data);

  //不同的类使用不同的mixin即可
  factory ResponseModel.fromJson(Map<String, dynamic> json) => _$ResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseModelToJson(this);

}

@JsonSerializable()

class MetaModel {
  final String message;
  final int code;

  MetaModel(this.message, this.code);

  //不同的类使用不同的mixin即可
  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);

  Map<String, dynamic> toJson() => _$MetaModelToJson(this);
}

@JsonSerializable()

class DataModel {

  final String msg;

  DataModel(this.msg);

  //不同的类使用不同的mixin即可
  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);

}