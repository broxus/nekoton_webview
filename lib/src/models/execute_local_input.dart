import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'execute_local_input.g.dart';

@JsonSerializable()
class ExecuteLocalInput {
  const ExecuteLocalInput(this.address, this.cachedState, this.stateInit,
      this.payload, this.messageHeader, this.executorParams);

  ///Contract address
  final String address;

  ///Cached contract state
  final FullContractState? cachedState;

  ///Optional base64 encoded `.tvc` file
  final String? stateInit;

  ///Function call
  final Object? payload;

  ///Message header
  final Object messageHeader;

  ///Optional executor parameters used during local contract execution
  final ExecuteLocalInputExecutorParams? executorParams;

  factory ExecuteLocalInput.fromJson(Map<String, dynamic> json) =>
      _$ExecuteLocalInputFromJson(json);

  Map<String, dynamic> toJson() => _$ExecuteLocalInputToJson(this);
}
