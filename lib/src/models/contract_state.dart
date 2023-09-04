import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'contract_state.g.dart';

@JsonSerializable()
class ContractState {
  const ContractState(this.balance, this.genTimings, this.lastTransactionId,
      this.isDeployed, this.codeHash);

  final String balance;
  final GenTimings genTimings;
  final LastTransactionId? lastTransactionId;
  final bool isDeployed;
  final String? codeHash;

  factory ContractState.fromJson(Map<String, dynamic> json) =>
      _$ContractStateFromJson(json);

  Map<String, dynamic> toJson() => _$ContractStateToJson(this);
}
