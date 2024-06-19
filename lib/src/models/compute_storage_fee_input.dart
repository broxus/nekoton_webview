import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'compute_storage_fee_input.g.dart';

@JsonSerializable()
class ComputeStorageFeeInput {
  const ComputeStorageFeeInput(this.state, this.masterchain, this.timestamp);

  ///Existing contract state
  final FullContractState state;

  ///Whether to assume that the contract is in the masterchain. Default: false
  final bool? masterchain;

  ///Optional UNIX timestamp (in seconds) of the moment up to which the storage fee is calculated.
  ///Default: current timestamp
  ///NOTE: for a time that was earlier than the last state update, the `last_paid` time will be used.
  final num? timestamp;

  factory ComputeStorageFeeInput.fromJson(Map<String, dynamic> json) =>
      _$ComputeStorageFeeInputFromJson(json);

  Map<String, dynamic> toJson() => _$ComputeStorageFeeInputToJson(this);
}
