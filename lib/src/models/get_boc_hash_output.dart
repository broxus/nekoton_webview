import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'get_boc_hash_output.g.dart';

@JsonSerializable()
class GetBocHashOutput {
  const GetBocHashOutput(this.hash);

  ///Hex encoded cell hash
  final String hash;

  factory GetBocHashOutput.fromJson(Map<String, dynamic> json) =>
      _$GetBocHashOutputFromJson(json);

  Map<String, dynamic> toJson() => _$GetBocHashOutputToJson(this);
}
