import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'add_asset_input.g.dart';

@JsonSerializable()
class AddAssetInput {
  const AddAssetInput(this.account, this.type, this.params);

  ///Owner's wallet address.
  ///It is the same address as the `accountInteraction.address`, but it must be explicitly provided
  final String account;

  ///Which asset to add
  final String type;

  ///Asset parameters
  final AssetTypeParams? params;

  factory AddAssetInput.fromJson(Map<String, dynamic> json) =>
      _$AddAssetInputFromJson(json);

  Map<String, dynamic> toJson() => _$AddAssetInputToJson(this);
}
