import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'pack_into_cell_output.g.dart';

@JsonSerializable()
class PackIntoCellOutput {
  const PackIntoCellOutput(this.boc, this.hash);

  ///Base64 encoded cell BOC
  final String boc;

  ///Hex encoded cell hash
  final String hash;

  factory PackIntoCellOutput.fromJson(Map<String, dynamic> json) =>
      _$PackIntoCellOutputFromJson(json);

  Map<String, dynamic> toJson() => _$PackIntoCellOutputToJson(this);
}
