import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'abi_param.g.dart';

@JsonSerializable()
class AbiParam {
  const AbiParam(this.name, this.type, this.components);

  final String name;
  final Object type;
  final List<AbiParam>? components;

  factory AbiParam.fromJson(Map<String, dynamic> json) =>
      _$AbiParamFromJson(json);

  Map<String, dynamic> toJson() => _$AbiParamToJson(this);
}
