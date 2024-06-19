import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'gql_connection.g.dart';

@JsonSerializable()
class GqlConnection {
  const GqlConnection(this.type, this.data);

  final String type;
  final GqlSocketParams data;

  factory GqlConnection.fromJson(Map<String, dynamic> json) =>
      _$GqlConnectionFromJson(json);

  Map<String, dynamic> toJson() => _$GqlConnectionToJson(this);
}
