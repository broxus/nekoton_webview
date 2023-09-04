import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'get_contract_fields_output.g.dart';

@JsonSerializable()
class GetContractFieldsOutput {
  const GetContractFieldsOutput(this.fields, this.state);

  ///Parsed contracts fields
  final Map<String, Object?>? fields;

  ///Contract state or `undefined` if it doesn't exist
  final FullContractState? state;

  factory GetContractFieldsOutput.fromJson(Map<String, dynamic> json) =>
      _$GetContractFieldsOutputFromJson(json);

  Map<String, dynamic> toJson() => _$GetContractFieldsOutputToJson(this);
}
