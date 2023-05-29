import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'split_tvc_input.g.dart';

@JsonSerializable()
class SplitTvcInput {
  const SplitTvcInput(this.tvc);

  ///Base64 encoded state init
  final String tvc;

  factory SplitTvcInput.fromJson(Map<String, dynamic> json) =>
      _$SplitTvcInputFromJson(json);

  Map<String, dynamic> toJson() => _$SplitTvcInputToJson(this);
}
