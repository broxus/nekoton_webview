import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'run_local_input.g.dart';

@JsonSerializable()
class RunLocalInput {
  const RunLocalInput(this.address, this.cachedState, this.responsible,
      this.functionCall, this.withSignatureId, this.libraries);

  ///Contract address
  final String address;

  ///Cached contract state
  final FullContractState? cachedState;

  ///Whether to run the method locally as responsible.
  ///This will use internal message with unlimited account balance.
  final bool? responsible;

  ///Function call params
  final FunctionCall functionCall;

  ///Whether to use the signature id during signature verification (true by default).
  ///- If `true`, uses the signature id of the selected network (if the capability is enabled).
  ///- If `false`, forces signature check to ignore any signature id.
  ///- If `number`, uses the specified number as a signature id.
  final Object? withSignatureId;

  ///Optional libraries map
  final Map<String, String>? libraries;

  factory RunLocalInput.fromJson(Map<String, dynamic> json) =>
      _$RunLocalInputFromJson(json);

  Map<String, dynamic> toJson() => _$RunLocalInputToJson(this);
}
