import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'asset_type_params.g.dart';

@JsonSerializable()
class AssetTypeParams {
  const AssetTypeParams(this.rootContract);

  final String rootContract;

  factory AssetTypeParams.fromJson(Map<String, dynamic> json) =>
      _$AssetTypeParamsFromJson(json);

  Map<String, dynamic> toJson() => _$AssetTypeParamsToJson(this);
}
