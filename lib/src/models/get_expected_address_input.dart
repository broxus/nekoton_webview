import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'get_expected_address_input.g.dart';

@JsonSerializable()
class GetExpectedAddressInput {
  const GetExpectedAddressInput(
      this.tvc, this.abi, this.workchain, this.publicKey, this.initParams);

  ///Base64 encoded TVC file
  final String tvc;

  ///Contract ABI
  final String abi;

  ///Contract workchain. 0 by default
  final num? workchain;

  ///Public key, which will be injected into the contract. 0 by default
  final String? publicKey;

  ///State init params
  final Map<String, Object?> initParams;

  factory GetExpectedAddressInput.fromJson(Map<String, dynamic> json) =>
      _$GetExpectedAddressInputFromJson(json);

  Map<String, dynamic> toJson() => _$GetExpectedAddressInputToJson(this);
}
