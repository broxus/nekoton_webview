import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'add_asset_output.g.dart';

@JsonSerializable()
class AddAssetOutput {
  const AddAssetOutput(this.newAsset);

  ///Returns true if the account did not have this asset before
  final bool newAsset;

  factory AddAssetOutput.fromJson(Map<String, dynamic> json) =>
      _$AddAssetOutputFromJson(json);

  Map<String, dynamic> toJson() => _$AddAssetOutputToJson(this);
}
