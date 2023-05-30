import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'unpack_init_data_output.g.dart';

@JsonSerializable()
class UnpackInitDataOutput {
  const UnpackInitDataOutput(this.publicKey, this.initParams);

  ///Optional hex encoded public key
  final String? publicKey;

  ///State init params
  final Map<String, Object?> initParams;

  factory UnpackInitDataOutput.fromJson(Map<String, dynamic> json) =>
      _$UnpackInitDataOutputFromJson(json);

  Map<String, dynamic> toJson() => _$UnpackInitDataOutputToJson(this);
}
