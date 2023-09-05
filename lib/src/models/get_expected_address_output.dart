import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'get_expected_address_output.g.dart';

@JsonSerializable()
class GetExpectedAddressOutput {
  const GetExpectedAddressOutput(this.address, this.stateInit, this.hash);

  ///Contract address
  final String address;

  ///Base64 encoded state init
  final String stateInit;

  ///Hex encoded state init hash
  final String hash;

  factory GetExpectedAddressOutput.fromJson(Map<String, dynamic> json) =>
      _$GetExpectedAddressOutputFromJson(json);

  Map<String, dynamic> toJson() => _$GetExpectedAddressOutputToJson(this);
}
