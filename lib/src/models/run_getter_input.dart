import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'run_getter_input.g.dart';

@JsonSerializable()
class RunGetterInput {
  const RunGetterInput(this.address, this.cachedState, this.getterCall,
      this.withSignatureId, this.libraries);

  ///Contract address
  final String address;

  ///Cached contract state
  final FullContractState? cachedState;

  ///Getter call params
  final GetterCall getterCall;

  ///Whether to use the signature id during signature verification (true by default).
  ///- If `true`, uses the signature id of the selected network (if the capability is enabled).
  ///- If `false`, forces signature check to ignore any signature id.
  ///- If `number`, uses the specified number as a signature id.
  final Object? withSignatureId;

  ///Optional libraries map
  final Map<String, String>? libraries;

  factory RunGetterInput.fromJson(Map<String, dynamic> json) =>
      _$RunGetterInputFromJson(json);

  Map<String, dynamic> toJson() => _$RunGetterInputToJson(this);
}
