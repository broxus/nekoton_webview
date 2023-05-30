import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'request_permissions_input.g.dart';

@JsonSerializable()
class RequestPermissionsInput {
  const RequestPermissionsInput(this.permissions);

  final List<String> permissions;

  factory RequestPermissionsInput.fromJson(Map<String, dynamic> json) =>
      _$RequestPermissionsInputFromJson(json);

  Map<String, dynamic> toJson() => _$RequestPermissionsInputToJson(this);
}
