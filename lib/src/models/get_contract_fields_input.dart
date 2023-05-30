import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'get_contract_fields_input.g.dart';

@JsonSerializable()
class GetContractFieldsInput {
  const GetContractFieldsInput(
      this.address, this.abi, this.cachedState, this.allowPartial);

  ///Contract address
  final String address;

  ///Contract ABI
  final String abi;

  ///Cached contract state
  final FullContractState? cachedState;

  ///Don't fail if something is left in a cell after unpacking
  final bool allowPartial;

  factory GetContractFieldsInput.fromJson(Map<String, dynamic> json) =>
      _$GetContractFieldsInputFromJson(json);

  Map<String, dynamic> toJson() => _$GetContractFieldsInputToJson(this);
}
