import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'unpack_from_cell_output.g.dart';

@JsonSerializable()
class UnpackFromCellOutput {
  const UnpackFromCellOutput(this.data);

  ///Cell data
  final Map<String, Object?> data;

  factory UnpackFromCellOutput.fromJson(Map<String, dynamic> json) =>
      _$UnpackFromCellOutputFromJson(json);

  Map<String, dynamic> toJson() => _$UnpackFromCellOutputToJson(this);
}
