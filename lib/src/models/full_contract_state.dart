import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'full_contract_state.g.dart';

@JsonSerializable()
class FullContractState {
  const FullContractState(this.boc, this.balance, this.genTimings,
      this.lastTransactionId, this.isDeployed, this.codeHash);

  final String boc;
  final String balance;
  final GenTimings genTimings;
  final LastTransactionId? lastTransactionId;
  final bool isDeployed;
  final String? codeHash;

  factory FullContractState.fromJson(Map<String, dynamic> json) =>
      _$FullContractStateFromJson(json);

  Map<String, dynamic> toJson() => _$FullContractStateToJson(this);
}
