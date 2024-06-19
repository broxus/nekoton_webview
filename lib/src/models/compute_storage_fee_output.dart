import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'compute_storage_fee_output.g.dart';

@JsonSerializable()
class ComputeStorageFeeOutput {
  const ComputeStorageFeeOutput(this.storageFee, this.storageFeeDebt,
      this.accountStatus, this.freezeDueLimit, this.deleteDueLimit);

  ///The total storage fee amount in nano EVER for the contract state up to the specified timestamp.
  final String storageFee;

  ///The minimum amount in nano EVER of debt that must be paid so that the contract is not frozen
  ///or deleted.
  final String? storageFeeDebt;

  ///Account status after charging a storage fee
  final String accountStatus;

  ///The amount of debt in nano EVER after which the contract will be frozen
  final String freezeDueLimit;

  ///The amount of debt in nano EVER after which the contract will be deleted
  final String deleteDueLimit;

  factory ComputeStorageFeeOutput.fromJson(Map<String, dynamic> json) =>
      _$ComputeStorageFeeOutputFromJson(json);

  Map<String, dynamic> toJson() => _$ComputeStorageFeeOutputToJson(this);
}
