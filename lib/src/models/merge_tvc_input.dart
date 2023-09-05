import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'merge_tvc_input.g.dart';

@JsonSerializable()
class MergeTvcInput {
  const MergeTvcInput(this.code, this.data);

  ///Base64 encoded contract code
  final String code;

  ///Base64 encoded contract data
  final String data;

  factory MergeTvcInput.fromJson(Map<String, dynamic> json) =>
      _$MergeTvcInputFromJson(json);

  Map<String, dynamic> toJson() => _$MergeTvcInputToJson(this);
}
