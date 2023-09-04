import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'permissions_account_interaction.g.dart';

@JsonSerializable()
class PermissionsAccountInteraction {
  const PermissionsAccountInteraction(
      this.address, this.publicKey, this.contractType);

  final String address;
  final String publicKey;
  final String contractType;

  factory PermissionsAccountInteraction.fromJson(Map<String, dynamic> json) =>
      _$PermissionsAccountInteractionFromJson(json);

  Map<String, dynamic> toJson() => _$PermissionsAccountInteractionToJson(this);
}
