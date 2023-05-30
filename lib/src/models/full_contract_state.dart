import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'full_contract_state.g.dart';

@JsonSerializable()
class FullContractState {
  const FullContractState(this.boc);

  final String boc;

  factory FullContractState.fromJson(Map<String, dynamic> json) =>
      _$FullContractStateFromJson(json);

  Map<String, dynamic> toJson() => _$FullContractStateToJson(this);
}
