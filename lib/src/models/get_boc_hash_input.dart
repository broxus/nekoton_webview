import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'get_boc_hash_input.g.dart';

@JsonSerializable()
class GetBocHashInput {
  const GetBocHashInput(this.boc);

  ///Base64 encoded cell BOC
  final String boc;

  factory GetBocHashInput.fromJson(Map<String, dynamic> json) =>
      _$GetBocHashInputFromJson(json);

  Map<String, dynamic> toJson() => _$GetBocHashInputToJson(this);
}
