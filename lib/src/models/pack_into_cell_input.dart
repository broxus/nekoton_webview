import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'pack_into_cell_input.g.dart';

@JsonSerializable()
class PackIntoCellInput {
  const PackIntoCellInput(this.abiVersion, this.structure, this.data);

  ///ABI version. 2.2 if not specified otherwise
  final String? abiVersion;

  ///Cell structure
  final List<AbiParam> structure;

  ///Cell data
  final Map<String, Object?> data;

  factory PackIntoCellInput.fromJson(Map<String, dynamic> json) =>
      _$PackIntoCellInputFromJson(json);

  Map<String, dynamic> toJson() => _$PackIntoCellInputToJson(this);
}
