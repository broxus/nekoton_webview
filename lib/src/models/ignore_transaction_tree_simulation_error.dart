import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'ignore_transaction_tree_simulation_error.g.dart';

@JsonSerializable()
class IgnoreTransactionTreeSimulationError {
  const IgnoreTransactionTreeSimulationError(this.address, this.code);

  ///Contract address.
  ///If not specified, the error will be ignored for all contracts.
  final String? address;

  ///Error code to be ignored
  final num code;

  factory IgnoreTransactionTreeSimulationError.fromJson(
          Map<String, dynamic> json) =>
      _$IgnoreTransactionTreeSimulationErrorFromJson(json);

  Map<String, dynamic> toJson() =>
      _$IgnoreTransactionTreeSimulationErrorToJson(this);
}
