import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'getter_call.g.dart';

@JsonSerializable()
class GetterCall {
  const GetterCall(this.abi, this.getter, this.params);

  ///Contract ABI
  final String abi;

  ///Specific getter from specified contract ABI
  final String getter;

  ///Getter arguments
  final Map<String, Object?> params;

  factory GetterCall.fromJson(Map<String, dynamic> json) =>
      _$GetterCallFromJson(json);

  Map<String, dynamic> toJson() => _$GetterCallToJson(this);
}
