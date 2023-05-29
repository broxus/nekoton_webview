import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'get_provider_state_output.g.dart';

@JsonSerializable()
class GetProviderStateOutput {
  const GetProviderStateOutput(
      this.version,
      this.numericVersion,
      this.selectedConnection,
      this.networkId,
      this.supportedPermissions,
      this.permissions,
      this.subscriptions);

  ///Provider api version in semver format (x.y.z)
  final String version;

  ///Provider api version in uint32 format (xxxyyyzzz)
  final num numericVersion;

  ///Selected connection group name (`mainnet` / `testnet` / etc.)
  final String selectedConnection;

  ///Numeric network id
  final num networkId;

  ///List of supported permissions
  final List<String> supportedPermissions;

  ///Object with active permissions attached data
  final PermissionsPartial permissions;

  ///Current subscription states
  final Map<String, ContractUpdatesSubscription> subscriptions;

  factory GetProviderStateOutput.fromJson(Map<String, dynamic> json) =>
      _$GetProviderStateOutputFromJson(json);

  Map<String, dynamic> toJson() => _$GetProviderStateOutputToJson(this);
}
