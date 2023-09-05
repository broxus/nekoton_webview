import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'get_transaction_input.g.dart';

@JsonSerializable()
class GetTransactionInput {
  const GetTransactionInput(this.hash);

  ///Hex encoded transaction hash
  final String hash;

  factory GetTransactionInput.fromJson(Map<String, dynamic> json) =>
      _$GetTransactionInputFromJson(json);

  Map<String, dynamic> toJson() => _$GetTransactionInputToJson(this);
}
