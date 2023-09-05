import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'permissions_partial.g.dart';

@JsonSerializable()
class PermissionsPartial {
  const PermissionsPartial(this.basic, this.accountInteraction);

  final bool? basic;
  final PermissionsAccountInteraction? accountInteraction;

  factory PermissionsPartial.fromJson(Map<String, dynamic> json) =>
      _$PermissionsPartialFromJson(json);

  Map<String, dynamic> toJson() => _$PermissionsPartialToJson(this);
}
