import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'merge_tvc_output.g.dart';

@JsonSerializable()
class MergeTvcOutput {
  const MergeTvcOutput(this.tvc, this.hash);

  ///Base64 encoded state init
  final String tvc;

  ///Hex encoded cell hash
  final String hash;

  factory MergeTvcOutput.fromJson(Map<String, dynamic> json) =>
      _$MergeTvcOutputFromJson(json);

  Map<String, dynamic> toJson() => _$MergeTvcOutputToJson(this);
}
