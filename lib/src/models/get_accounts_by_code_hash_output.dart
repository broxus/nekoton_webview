import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'get_accounts_by_code_hash_output.g.dart';

@JsonSerializable()
class GetAccountsByCodeHashOutput {
  const GetAccountsByCodeHashOutput(this.accounts, this.continuation);

  ///List of account addresses
  final List<String> accounts;

  ///Last address from this batch. Should be used as a `continuation` for further requests
  final String? continuation;

  factory GetAccountsByCodeHashOutput.fromJson(Map<String, dynamic> json) =>
      _$GetAccountsByCodeHashOutputFromJson(json);

  Map<String, dynamic> toJson() => _$GetAccountsByCodeHashOutputToJson(this);
}
