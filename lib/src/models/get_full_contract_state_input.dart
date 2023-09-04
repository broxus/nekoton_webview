import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'get_full_contract_state_input.g.dart';

@JsonSerializable()
class GetFullContractStateInput {
  const GetFullContractStateInput(this.address);

  ///Contract address
  final String address;

  factory GetFullContractStateInput.fromJson(Map<String, dynamic> json) =>
      _$GetFullContractStateInputFromJson(json);

  Map<String, dynamic> toJson() => _$GetFullContractStateInputToJson(this);
}
