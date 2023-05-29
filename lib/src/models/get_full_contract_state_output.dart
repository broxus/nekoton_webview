import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'get_full_contract_state_output.g.dart';

@JsonSerializable()
class GetFullContractStateOutput {
  const GetFullContractStateOutput(this.state);

  ///Contract state or `undefined` if it doesn't exist
  final FullContractState? state;

  factory GetFullContractStateOutput.fromJson(Map<String, dynamic> json) =>
      _$GetFullContractStateOutputFromJson(json);

  Map<String, dynamic> toJson() => _$GetFullContractStateOutputToJson(this);
}
