import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'unpack_from_cell_input.g.dart';

@JsonSerializable()
class UnpackFromCellInput {
  const UnpackFromCellInput(
      this.abiVersion, this.structure, this.boc, this.allowPartial);

  ///ABI version. 2.2 if not specified otherwise
  final String? abiVersion;

  ///Cell structure
  final List<AbiParam> structure;

  ///Base64 encoded cell BOC
  final String boc;

  ///Don't fail if something is left in a cell after unpacking
  final bool allowPartial;

  factory UnpackFromCellInput.fromJson(Map<String, dynamic> json) =>
      _$UnpackFromCellInputFromJson(json);

  Map<String, dynamic> toJson() => _$UnpackFromCellInputToJson(this);
}
