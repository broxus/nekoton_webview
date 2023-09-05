import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'get_accounts_by_code_hash_input.g.dart';

@JsonSerializable()
class GetAccountsByCodeHashInput {
  const GetAccountsByCodeHashInput(
      this.codeHash, this.continuation, this.limit);

  ///Hex encoded code hash
  final String codeHash;

  ///Last address from previous batch
  final String? continuation;

  ///Optional limit. Values grater than 50 have no effect
  final num? limit;

  factory GetAccountsByCodeHashInput.fromJson(Map<String, dynamic> json) =>
      _$GetAccountsByCodeHashInputFromJson(json);

  Map<String, dynamic> toJson() => _$GetAccountsByCodeHashInputToJson(this);
}
