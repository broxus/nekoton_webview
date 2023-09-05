import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'unpack_init_data_input.g.dart';

@JsonSerializable()
class UnpackInitDataInput {
  const UnpackInitDataInput(this.abi, this.data);

  ///Contract ABI
  final String abi;

  ///Base64 encoded init data BOC.
  final String data;

  factory UnpackInitDataInput.fromJson(Map<String, dynamic> json) =>
      _$UnpackInitDataInputFromJson(json);

  Map<String, dynamic> toJson() => _$UnpackInitDataInputToJson(this);
}
